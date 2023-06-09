PGDMP                         {            Shop    15.2    15.2 5    5           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            7           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            8           1262    24583    Shop    DATABASE     z   CREATE DATABASE "Shop" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Shop";
                postgres    false            �            1259    24585    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    24584    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    215            9           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    214            �            1259    24592    image    TABLE     ~   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    24591    image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    217            :           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    216            �            1259    24648    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    number character varying(255),
    price real NOT NULL,
    status smallint,
    person_id integer NOT NULL,
    product_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    24647    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    225            ;           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    224            �            1259    24599    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(100),
    password character varying(255),
    role character varying(255)
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    24598    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    219            <           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    218            �            1259    24608    product    TABLE     �  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    seller character varying(255) NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    24631    product_cart    TABLE     m   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public         heap    postgres    false            �            1259    24630    product_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_cart_id_seq;
       public          postgres    false    223            =           0    0    product_cart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public          postgres    false    222            �            1259    24607    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    221            >           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    220            ~           2604    24588    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                       2604    24595    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    24651 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    24602 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    24611 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    24634    product_cart id    DEFAULT     r   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            (          0    24585    category 
   TABLE DATA                 public          postgres    false    215   q9       *          0    24592    image 
   TABLE DATA                 public          postgres    false    217    :       2          0    24648    orders 
   TABLE DATA                 public          postgres    false    225   �A       ,          0    24599    person 
   TABLE DATA                 public          postgres    false    219   KC       .          0    24608    product 
   TABLE DATA                 public          postgres    false    221   >D       0          0    24631    product_cart 
   TABLE DATA                 public          postgres    false    223   gg       ?           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 3, true);
          public          postgres    false    214            @           0    0    image_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.image_id_seq', 95, true);
          public          postgres    false    216            A           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 12, true);
          public          postgres    false    224            B           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 2, true);
          public          postgres    false    218            C           0    0    product_cart_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_cart_id_seq', 10, true);
          public          postgres    false    222            D           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 19, true);
          public          postgres    false    220            �           2606    24590    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    215            �           2606    24597    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    217            �           2606    24653    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    225            �           2606    24606    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    219            �           2606    24636    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    223            �           2606    24616    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    221            �           2606    24618 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    221            �           2606    24654 "   orders fk1b0m4muwx1t377w9if3w6wwqn    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn;
       public          postgres    false    219    225    3210            �           2606    24624 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    215    3206    221            �           2606    24659 "   orders fk787ibr3guwp6xobrpbofnv7le    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk787ibr3guwp6xobrpbofnv7le;
       public          postgres    false    221    225    3212            �           2606    24619 !   image fkgpextbyee3uk9u6o2381m7ft1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    221    3212    217            �           2606    24642 (   product_cart fkhpnrxdy3jhujameyod08ilvvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    221    223    3212            �           2606    24637 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    223    3210    219            (      x���v
Q���W((M��L�KN,IM�/�T��L�Q�K�M�Ts�	uV�0�QP�0����x��uMk.OҌ01���ۀ�2�01�b�Ŧ�.l���b����b녽v\�1�� �6VG      *   �  x���K�e7���+��6tJ)���j^4�=�5z�L~4���y��׺���E:��2B������ǧo����������K��_���������k��>>>����s�����������|��2���UƴAIv$I[�O	�j�+/�������O_||䯾���H2B���M��F6��u�Bi�n��֒���$$�I�a&b���I��lSҝsfZ�[|��@2�
�F���O�1Ř*봲����$3$SÝ�!��&��� k���~K��L꧔�$�I���F��J+��j:ִ7~@�\���r�K��MI�OC�h�էM��Χ��%+$w�(Z�f�8g�Lc$|d��S*��4йdsɥ��S7ɖE5O��a1ONU�i�cI	�1zˡӞO�a��%�BW-�Y�i�sI珔�k�N�J2À��R��s�a�P��iǒ�cK�C�m�D)(-Lk����r��^�� ��1���&��%L���`��z�^��҂iؘͪ ��0~�mk��C��\�	4������d.T{a�Z���PW�\�	�Q���&H�F]j�è6mqwy�ñ�h��(ƴ��� u�N�c�)%�� z�����ec��p�֋v��S(K�z��#h�ִ+���ኟ�z�j�ƚ秃�5�3hc#G�ε�B1nB�8q.2%[����4BX`i��.�<&��3WcU�����d>�0���R�8�@/�����=����Q�P�G��^��¸�R(J�us������u�ZJx5+� 	˳sI4Ji:#s��/�@�Q�l�Hu�n`�D��ی��^�E�����#�Gr�uN��dD�v�)̌S��g՛���E��du��B�����3���-��9�>﹨��� �R���4x���p���7���:���@:�#+���T+��+1��1�۝��)�`� �u�"yR+�7���� ��9u"ijû��T�)��,��Jn}���ұ���4F� ��ғ1!�*6�FU��\ԉ�j�V�\�|�
�#}ރ�F��z3ҹ�	]w`�(ᷣ���i ��
HLy뚈����N$K;���l�,l�ϝ]b�ތt.�DQ��!Z����Hm�����Z��n$9�
ZHIZC+�=�G "�3mA-Ysv3ҹ�)�:��?]sSw:P�RC��\��w"��^%�E���� �Y}��HMs�M��7#�'Қ�G�h�A�b� u"�5g�9�ތt.�Dڈ���L)�&��P��Q��2��7#?/'�Bk	K���E�m_{�!%���䛑�E�H�.�|P� �Im��� Q�V�f�sQ'Rl�-�"%�i\(�kl���&�i����E�H�z�
w,�1Q��1�Iv�Bc��\ԉT[Xy0%��o�����T{�I�E�Hi	�F����V(����f�f�sQ':D��m���7���c��,܌t.�D�Śz�b�ih��͟��(}���7#��pEP|\�9�E������$��YnF:u"ň$�*�n�ϋ;Ĝ��FO=�y3R9��C�nE|���.ã�@3���>-�|7ҹ��|�T����ñ��O1����E�PK�lތt.�D��J��F��`��ya)E����Ux܌t.ze$ݾ���'��a�Wj!-[qO�⛑�E�ֶ�؁#�<�o$��*���e����v��Y�H!�8�RBa
�:����SB?Ee���\ԉĵ�8Q��v���w���n�܌t.z)�)9{yW�t��.��J��QS��X�9�F6�SEπ$"#�HHha/q	��}.ze$,���[$g/P��.tD�q�⛑�@�E�����>�`�����A���ךm��\�z�殫��$�d$���cQ*Z�Fv��o�W�N�����V9���*V[�R�������f�s�|m��rك��?^��S�Ǆ�nFr���Y��      2   �  x���Kk1 �{~�nI`��S�ٞz��PRh�^��`hlc��e�hJh/�If4�1�V�w��������u��R�w�.����f�\������k�6��T����׹��eZ���#�����n�-Ǽ��������w:���& ����� #K�<D���l��"-]��T�O��CJ���l�9���sԺ�����eß�#A�f�tBԊy��>���h�D����s�S	 �_#hD�!�1�'A*E�<������	��(�X��Sf�v9��6��è�W��s0M,��9�:��X�M����$��p��z9���/0���xA���h�aD����i�R�3i����7E�KQ��]
/�@� ��@H�_��!�Dh���oVA~5      ,   �   x���AO�0 �;�����0Opt+T8=lE+����_/���^^�^>�n�,(�	j�����yfmmƏmgQ���˩��5s�qm��1�Q֟mgLAwKݹ�מ���ZՒ�7xX,6	>v<���,~��8���!�Q\G/m.�����	J�����s�?�7��+X®��n�޳<X���0Uՠ����$�������n<��'��b�\\��k�\�      .      x��]ko\�u�\��Z?:�g�&�I����d�������-Wɧ�z�zЖ�$u���4.� ���r83����������q�%-�!$�ř�8g��X{�}_~������^~�W�w��ۥ�7�߹r���7�e�m^he�_���k�o]t��x��+��\ۼ�v+{���/]�x��]ۼv����\����W�?�t7���_�|����ON����׳�:+��م���\{yna5�o,/m,��/-�.�-=�-�T��r���G�pvkv7;w������Rv��Ν��/���l�s�g]w������ٝ� +���<q���ٻ�m����fY�O&e^��ڕG��B�3�f��}�#������mw�P.�k1�rT���=�m�-xƬ�~����V�[�ݏOQ��5c�<s:{��'�6wǛ��l{vC�0���X2����	��*7����H�+��ѻI���c�]`�"��򑌪f瞼���I���-'_����J'�D!S��eiex��I�$W升�Cw$R`� �wQ!��u��.���n��j�5:�@g��h�����w�w1��=Hq��Td!��DuMDDv�Sa�1�..�V'ߨy��������$f7�$��,���=o�駞~��BF�T�-��w�se����܈�ԸC�������~M�ܔ��S_�"_����l&�SwO�����N
۔���L� woah=�F.�Y�3�<�`��)�T2_\'���[���iʁB��y�nكD�nn�;�PdX��j���<���M#����D�L�P^$��m��V�"�|r�1^�V��Nwr�a5����I�}(�{��I�B4$K<V����C������P]�i5��>L1o2����D�*T��Z�R�r��%��	�)���ъG���Nef�n�8>�N�0e�v���#��p���rS^)b�8i|�.m���=\F~��Ap����m�X7"�58Y@{���~lZ6j,� �˃�@yhnEP	x�f�l��p� ��"��w02�B��l�y���i=@� �j*n UNFQ�{��	�U&��7��e-љ��r��*Q�] ځ�):LI�>1����N�Akr�/�S+Q�I�#	���M3���>D�}\r,+��=�iL��67��}�u[V:K42U�c��.Brs܎5�rF_n�[��r[�i���e��֠��Í-5r󰻜��zyM����>t���o����E�Ee�����X>���u�+ L��P�ȡ��ܑg��E��Q�h i�g;XX��D4����?Щ��?�϶��R�G@%���lRCI+�i )>����^�@D'��n)��/G��7DP�h�c7�׈(�׀p���&��N�!7j/�]�iPfS	S3:F�ô,��g6�D�Y��&�Կ�YO���'~ ��{x�!��h�c�q� �$wR��5���� �����5��5����C�h���,#_�Xm8^A��t�I��`�`��=6V-��O��Ҡ$!h�0��	M��ݿwO���r9���fIM�����C��:}�ϫ�L��+�<NtOLq*�@V�bzlD�-�����8�Z5�ofB t3y�)�@�,�8���J�q3J\�	���Si����?x���7CnGrg)k/l�7����Օe��3wY	��n_4u)�O�q��+o `����i7���O_�y��i;�hU��Z\��H$
�q DD'�?$��T�)�ay�7�c�<qȢ�,'D*.�t� �@��-`�	!FYhR��yA�� ��;�4|^�@>@�� 
)>��B_`1"P�&EzcL�	y�!}�_U����b�`�f�t`D��Z��{�0��]��x�X.�#س|�P"B�!�@�n7��"CCf���9{�
�>h�����I�8�vq�0�����T�t�}��.J�u�"�HSbxr=�#�Q`�}M��z̈�M�L�qq��>>3�&��	eN�c��t��:���ڷ�s$R½�)�!�*uϋE0�=��܅N��hj�Rp�m1����G�S��g��!�W��>X�%���A}�4#W���Y���|�����GnQ?.�t��}�;�kꪐ����~x���Z;�a�Y�,͵;O��^oe�������*�o�d���>`KI�~�&�@���z4$��L)��
��Z�I�0�$��Nt��1�{I6�QՐ{H�U@�8�-���n�yP#OCF�-1 S}8�.�J�u���h:�yO�=t#��@�er���q�b��}D��L9���s��G+vO�$��n�U�7�'4=%�na[�<)�|	Ӆ���Ђ�ϑ��=�q@�N����
l�	��F?�c�!**�D�5�tnȣ���]Y~I�L#��c,���̽Ǭ@xZM��`������0R�*/�sh\�SYFG�b0*䑋م��xŁ��!�z��)'Fż�����iEY bU����������{�}7��ZR7��~l��{bR&xԝ��tUG��0)Tu�4�P�QL�S�e�р���>gUZ��n1��P�Ë�!��˼s۝��u���� $xt  ��9��˗�_ټ*!������kg�Ǹ��([��h�o����Y�W�V7����V�5@l�ԉr=+Q�6䶺E8���|沬�Q�Q�T�k$2��D�jX�Bxl(s}�+4}�ݪ�N�w�o��!E��0��@��LZ����Z�xk#*v�J�U�LY�!se��D2ލ����/1�)A�8��}���m1guN����SXh��>o�☧����`=�~̓���A0X�<��P��"|#O6�\��UTx�Z���FH�@�3���r��@Jf!�ez���%�c}��P��:������qV����3Vf	�\1�SS��HӏQ%��އ�d!-�t|%�"_�r��;��%>�,�|A�ʐ	�է`-�Ǐ�R�|F� �S#�X+��"$��3��r��)a&<�V�v?�qr���Ia��̇h�=evdMt5)N*^Xd��i�:������^%��j
�0`&09����(VX�$�$KsԀ������F������X'�niᏓ�c0,�KN��L��)X�D}G���� ��Y�)�" |khl7�@�Wr�1J�I�� �ޏ: ����J���\pVk�}Y��FV�J�S��ī���3�U#)�J��/ΩB�Wc9|��b�0� �Z�G�](�h��dn�e���Ѐ�>����B�Z7I3��e�"M3fp��L\!�H���=?t9�W��<��M�v�����?_�z�������:���:�?fXK1�B{���ߙ__\\_X�㌲>��҅�O�5r$:�~��_��$�,~s�ዉ�"SFۇFѷo��o_�ra���:7��oեn(�$@`��p � ���z=)v�z���0��j�H�	BI��7>\=���(�GV&�Jǰ�0��!��̗�ˊ�mi�L���׼,eN�[�=#J+��D��6D?���R�Z[���忧�[��ҞU���0�<��(��_���e�� X�B߻����)	�YDX^.�8���ŉ���W��J_
B�����2�jT�^cY�ez
�������=xL�Glb�P�2����=�"�ͫ6�k����B����4>B�?W�En��+�:<�ك[@��2&E�7�հ|�`'�lrA�q���Id�f�H?��N��Eo��_ �� ��n�2��m��jvI\*�.��옙X�b�2l�(�~���W2T���1�j���ʯ����y�<�{�=����,��]�L���8T�w��?m�9���m�q��A��1Mt�+�k[�^��Ӄ��q�өeT�H��K�Z)7)6��gW! �Y�͎�RCq���B#�(���io
9�1�J�^#�^�p��]I���b�� ���#j��� �'���RE�2���Ё�Nm�^W��b���1��}����T�-t�1�͹<�xd5>-?*���Ωս���(e����1b\Id��Y*�    }ʫ�E�R��2��8��Fɸ,�,C���ɂ��qz�0DN�?�w&H8M���XV9@^��|�-�DIZ+�Z_��Kd5R�*��a�{��v�0`��e��4*��UO5Qմ1j����7��S�H>���^5ե�%Ci�1�R@TڠJ0��q��e��J"=q���O��A�=Znyj@9������:٠b�P�c��Y����#t?��ؚXGj#�?:��"\  ���M�������&M��mX���6C�� ����9�,C�<�7���Cu�Ӊ��;˵㆞�Q ����<m��
̺���f��V���/��
QD�uG����Y��NX��G-u�z�=�C�>��o�}^j��4��AJ^;�Ĉ�� ��#ͽ5��dm��SkE�B��E:+ـ��Q^����Jjˠ\m;��Dm��8�q/�C�$nj5�Hb-�Z�P?�I�v� \�#Ec.�~$ȱ��H["v��]�:+%cy�<����u
��7���i�ɐ��`A�ǜ�����ߙ���L�^��N���k�T?���xkc����A����7���̈���D�gU��DUK<S�Lu���#�kM����Zڒc�ϡu�j'�J�e������3}���Pg�)~d�@ �(Q����6۳a6mSTg�ő����b4���|�l(Kׇ'N2��>�Uo���f@���!E��M�nl(Zn>R�����9��t�����K�'�n����4�w�(�
�>��SV��T�D�gx�i����e6�����ʊl�K=��tO@����^4��=�<��/��� 1}љU�?f�#�=��8���i��p��΅����Z{}���.8AU��.*�	mUGa4vP�Q��ӏ��D-�)�� 7_�D2,���jl[hfl�3�W3�zBB�+M%*�p��E�V���h�zi���~����F	�|���i��p�F'}�g�7WJ��Rxۧ�d���s��s�9�p�
�v���t����Or�S�Ip���y:sn^�Aq���ex��������N�Jrc����ݣ�,R�`�e�l���B��d�r�˸������4���Yd��G�:�t�̡2R�̹������G�Ž+u��nXJJ����euB_Y���$rUO�^JkZ�$Z���8p���ք�
��
5|���6uJ�+-������`}E��u�[,���ᖶ���8�[�U�0V���E��&�eX����M#��U�d��)t�ŰvI���[�N`ʁ��A�{�Н�]�|��)���jC۞��H1A���<6�g(N����Ɑ#�j[k纺#�7��W�[��Y<$�Lv}i���5"���Ah���c-횤�A�>w��30#Y$S/�-�����C�(;n����Q̗=G>��N?�|���D�.+G�~	$P���7��4�p�s�F��c�Mڥ|�md�2fZ G�)�ʂۏp��b�����üRȁn�L��꘏�O��@��R���G���V��6B�E�`�{kS��1��j�%l�Ĵ�+S^�]�������k�.���W�a|�2�M�a|FՍش1�����E@�E#_h(��)�^������"7o�i0>u�<�UI�l�����LK ��M��P�ɻ~)<t�9�mVSv>���W���8�C�Ҷu����0 l��=&�`q��V��\����T����b�'F��XdT�h��ЈVCt#�+'ߤ�JV��2)��2�\׻�R�H�����y�J�qT�ߞY��S�����u�[�Ӿy�����2�F�L�mE��Ʒ.#�$����|��_c\��"bf0������r�iT�>��[���V��k���|M���E���(���\G�SBޡv�]��6�x�K˲W�G ��+ߺx5� ����XyH]��A�Z��m,/�/���ֱ���Ŷ;b�ܾ��hec��,[�g!xo,�X�cb{ç���
�Ub��Weeg�{��o��r���?Ew�,t����R�u"�0�ǈ�"�d���)�jz�Jc�Bb'��3�ˍ�k8��dOZ�_;�굋o^����l5�����v�����_xAi����aW�Bۉ��i���=͟'4���U/�4�mt������O2(t�7(��Q^�����$�yKۭ���V��>����Xˑ�������4FL��G�c��wl�Px�vN�ܣ�-��b��x���|���r���1��-w�'�)�yv��n���f}ق�=�ʹLW�`U�h�<�����6�nl���1�>򵝨�bH��Fo(pp��pB.4rd�lɜoc���2}���t�:����PmA���0�a2,yx0�+�҆�-�}�6�P��RJ�,��� ��.tCL�6�NG��x0��������� uC�c9���`�};�(�ڿ���/���^{�̩s/�������S�ر(M����ŕյ�E���(7˫���T��Qx� 3���R�e�+[�,�#�*LJ���i
8ɭ�������}�F�����R��r��wA(H��x�DQ�g�aM;~���ܐX!1>&��h?���~
��Jy9��@ ���:���9�&#+Jl��2�V�\>)��HO���$�bM&V9:d����mt��c������K8��*ZJ��=���h��qK����Q��;�w=}�ԉ����Xk�ELz͒F��\������������[���Pˑ�j��N�ӷ�9Pn;JY�L���	JaR$x�S���f.ދM !aЩZ����&E�P����D;v*;)�T/�CM&qk$8��&���������,U9�c�VN7G�k7S6a����%-�9��q��<%P?CHw��3r#��_�jG[���@ܻ��Aк����c�uJS�#���^����"E'F����]Z��b;s w 9��/%a��W�LC��ճ�q�^w�>x&	���R>qq�68M�h2c�<_>�o�c��:w��W��,��P�a����О_]]]��L�"BqB����kn�V[�6U<�.��{NF�p�� ��Wl��>n_K!���!Tj��j6E���^�Pd�i���{>�Nn���si,��B`�Ԉ?��ͫ��OsEI��_�1jsu�����Q����tZ[��I(!��W�S�[�`Iò�n��St���㝡z����4v!���ȑ���������T�׿�|�A��Q��z-n6����C\�=ʉV��h[Zv2���;�X�9�&>��@y�wY.���@�!{�ӯ��$B�����>8p��V�ɛKz�U�j�>���mn��&�
F�S�P���h;��	@_�����~�v�q�g�i4$�$�-�"��Ǚe��ZG�ok�v���&��>O�SЯ��Ѝ�j�ґ��}�T"oe��IA��@M��'덼�~�V{���B����Њb?�?D�}]�ð$�l��q�kϥ;3��A�A#v�a��_��H��ĎvhJ�!A/���-�t��!�+�����3g^�����'M,��Ċ�p�������q�#��7I���>�(�e��SZ;5K���@ʸ�����h���wȖ�J��E��P!i�A=m��m�}P\��5�����y "Np�))�-�f�Z0P˻^ L�?S���]zl����F,�N���n*R����1�4�ki��݄.#4��fs4V�lq���`�m�}���˫�`�-[��͵Ў.��E�@�����mSk'�[�}�����e�o9.n�ڵN�*S����c����t�Ⱦ����Q�������L�ᕳ��@�a�f����ҵ{^3�Q��f����߶�z�u�Fh�m��e!o ɰ/ЪED$L['�����v���Ҏ<���J�e��B"���퉮�oSj��p��b����aI�i�m<Q䉣b��bzb����}x�~�D���z(Z�X\��t����W+�d?;�#wy[�䩲'����tM�'bٮ�踭������r[={�vv*h6/P���Y��XD=N�U�|?��2ѵ��`H/�F��]�+`	zZ�XX����<BD   cs�Z�6;�aV�����R�|�ʖ�/��>����[�{5�&��_�&�9$���296�~�ܙ�/ٛ���������/ˡ�z��7G{}��b�?f/�}��~ZSov����x�qv����R%�Y�er�JІ4`��o4!=����=)=����S��N>���̡L6���A|����Q5��o��5IC,�/�J���p���<�^����'3��0Տ�}>����[�����,g=���1h8ڕU��
��^0��^�a��^��/U��Z�?ҪL~REu#�d2����Ƴ�j�Ϻ�ZҝT���Rߙ�c99yx-o&uy	%�����a%	���S���|j�����������_�u���?f�����ͷ�	��!���i�5mB2��.`H/�����b���<�,�S�^��� ���r���$4��li�gMH]���}�:���:�n�۶c]#�� "�Bxl�)��m���1lMg�+g,c�y �?,|0�c�BKx��14���u�g��E��◮������2{�,W~� ��$�(�i�$C�^Z0��.&<�|\���I>'���<#��Sd�q|FM��]Q�Q�>��NkyƳG�c(��5��ȩ��hBX�/�)����[�V�<wJ�=���Ͽ~��;�P��J�J8�&��ژ J������i�U&������
�:�(�x��K�?�~F6}�'�}a:]��?uٸ��G�o��7�]4[��R��\�p��.�1���;��<����q�      0   
   x���         