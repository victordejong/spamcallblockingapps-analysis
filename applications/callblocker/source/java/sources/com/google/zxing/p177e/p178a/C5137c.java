package com.google.zxing.p177e.p178a;
/* renamed from: com.google.zxing.e.a.c */
/* loaded from: classes-dex2jar.jar:com/google/zxing/e/a/c.class */
public final class C5137c {

    /* renamed from: a */
    private static final int[] f21709a = {31892, 34236, 39577, 42195, 48118, 51042, 55367, 58893, 63784, 68472, 70749, 76311, 79154, 84390, 87683, 92361, 96236, 102084, 102881, 110507, 110734, 117786, 119615, 126325, 127568, 133589, 136944, 141498, 145311, 150283, 152622, 158308, 161089, 167017};

    /* renamed from: b */
    private static final C5137c[] f21710b = m1385d();

    /* renamed from: c */
    private final int f21711c;

    /* renamed from: d */
    private final int[] f21712d;

    /* renamed from: e */
    private final C5139b[] f21713e;

    /* renamed from: f */
    private final int f21714f;

    /* renamed from: com.google.zxing.e.a.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/zxing/e/a/c$a.class */
    public static final class C5138a {

        /* renamed from: a */
        private final int f21715a;

        /* renamed from: b */
        private final int f21716b;

        C5138a(int i, int i2) {
            this.f21715a = i;
            this.f21716b = i2;
        }

        /* renamed from: a */
        public int m1384a() {
            return this.f21715a;
        }

        /* renamed from: b */
        public int m1383b() {
            return this.f21716b;
        }
    }

    /* renamed from: com.google.zxing.e.a.c$b */
    /* loaded from: classes-dex2jar.jar:com/google/zxing/e/a/c$b.class */
    public static final class C5139b {

        /* renamed from: a */
        private final int f21717a;

        /* renamed from: b */
        private final C5138a[] f21718b;

        C5139b(int i, C5138a... c5138aArr) {
            this.f21717a = i;
            this.f21718b = c5138aArr;
        }

        /* renamed from: a */
        public int m1382a() {
            return this.f21717a;
        }

        /* renamed from: b */
        public int m1381b() {
            C5138a[] c5138aArr = this.f21718b;
            int length = c5138aArr.length;
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i < length) {
                    i++;
                    i2 = c5138aArr[i].m1384a() + i3;
                } else {
                    return i3;
                }
            }
        }

        /* renamed from: c */
        public int m1380c() {
            return this.f21717a * m1381b();
        }

        /* renamed from: d */
        public C5138a[] m1379d() {
            return this.f21718b;
        }
    }

    private C5137c(int i, int[] iArr, C5139b... c5139bArr) {
        this.f21711c = i;
        this.f21712d = iArr;
        this.f21713e = c5139bArr;
        int m1382a = c5139bArr[0].m1382a();
        C5138a[] m1379d = c5139bArr[0].m1379d();
        int length = m1379d.length;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i2 >= length) {
                this.f21714f = i4;
                return;
            }
            C5138a c5138a = m1379d[i2];
            i2++;
            i3 = ((c5138a.m1383b() + m1382a) * c5138a.m1384a()) + i4;
        }
    }

    /* renamed from: a */
    public static C5137c m1389a(int i) {
        if (i <= 0 || i > 40) {
            throw new IllegalArgumentException();
        }
        return f21710b[i - 1];
    }

    /* renamed from: d */
    private static C5137c[] m1385d() {
        return new C5137c[]{new C5137c(1, new int[0], new C5139b(7, new C5138a(1, 19)), new C5139b(10, new C5138a(1, 16)), new C5139b(13, new C5138a(1, 13)), new C5139b(17, new C5138a(1, 9))), new C5137c(2, new int[]{6, 18}, new C5139b(10, new C5138a(1, 34)), new C5139b(16, new C5138a(1, 28)), new C5139b(22, new C5138a(1, 22)), new C5139b(28, new C5138a(1, 16))), new C5137c(3, new int[]{6, 22}, new C5139b(15, new C5138a(1, 55)), new C5139b(26, new C5138a(1, 44)), new C5139b(18, new C5138a(2, 17)), new C5139b(22, new C5138a(2, 13))), new C5137c(4, new int[]{6, 26}, new C5139b(20, new C5138a(1, 80)), new C5139b(18, new C5138a(2, 32)), new C5139b(26, new C5138a(2, 24)), new C5139b(16, new C5138a(4, 9))), new C5137c(5, new int[]{6, 30}, new C5139b(26, new C5138a(1, 108)), new C5139b(24, new C5138a(2, 43)), new C5139b(18, new C5138a(2, 15), new C5138a(2, 16)), new C5139b(22, new C5138a(2, 11), new C5138a(2, 12))), new C5137c(6, new int[]{6, 34}, new C5139b(18, new C5138a(2, 68)), new C5139b(16, new C5138a(4, 27)), new C5139b(24, new C5138a(4, 19)), new C5139b(28, new C5138a(4, 15))), new C5137c(7, new int[]{6, 22, 38}, new C5139b(20, new C5138a(2, 78)), new C5139b(18, new C5138a(4, 31)), new C5139b(18, new C5138a(2, 14), new C5138a(4, 15)), new C5139b(26, new C5138a(4, 13), new C5138a(1, 14))), new C5137c(8, new int[]{6, 24, 42}, new C5139b(24, new C5138a(2, 97)), new C5139b(22, new C5138a(2, 38), new C5138a(2, 39)), new C5139b(22, new C5138a(4, 18), new C5138a(2, 19)), new C5139b(26, new C5138a(4, 14), new C5138a(2, 15))), new C5137c(9, new int[]{6, 26, 46}, new C5139b(30, new C5138a(2, 116)), new C5139b(22, new C5138a(3, 36), new C5138a(2, 37)), new C5139b(20, new C5138a(4, 16), new C5138a(4, 17)), new C5139b(24, new C5138a(4, 12), new C5138a(4, 13))), new C5137c(10, new int[]{6, 28, 50}, new C5139b(18, new C5138a(2, 68), new C5138a(2, 69)), new C5139b(26, new C5138a(4, 43), new C5138a(1, 44)), new C5139b(24, new C5138a(6, 19), new C5138a(2, 20)), new C5139b(28, new C5138a(6, 15), new C5138a(2, 16))), new C5137c(11, new int[]{6, 30, 54}, new C5139b(20, new C5138a(4, 81)), new C5139b(30, new C5138a(1, 50), new C5138a(4, 51)), new C5139b(28, new C5138a(4, 22), new C5138a(4, 23)), new C5139b(24, new C5138a(3, 12), new C5138a(8, 13))), new C5137c(12, new int[]{6, 32, 58}, new C5139b(24, new C5138a(2, 92), new C5138a(2, 93)), new C5139b(22, new C5138a(6, 36), new C5138a(2, 37)), new C5139b(26, new C5138a(4, 20), new C5138a(6, 21)), new C5139b(28, new C5138a(7, 14), new C5138a(4, 15))), new C5137c(13, new int[]{6, 34, 62}, new C5139b(26, new C5138a(4, 107)), new C5139b(22, new C5138a(8, 37), new C5138a(1, 38)), new C5139b(24, new C5138a(8, 20), new C5138a(4, 21)), new C5139b(22, new C5138a(12, 11), new C5138a(4, 12))), new C5137c(14, new int[]{6, 26, 46, 66}, new C5139b(30, new C5138a(3, 115), new C5138a(1, 116)), new C5139b(24, new C5138a(4, 40), new C5138a(5, 41)), new C5139b(20, new C5138a(11, 16), new C5138a(5, 17)), new C5139b(24, new C5138a(11, 12), new C5138a(5, 13))), new C5137c(15, new int[]{6, 26, 48, 70}, new C5139b(22, new C5138a(5, 87), new C5138a(1, 88)), new C5139b(24, new C5138a(5, 41), new C5138a(5, 42)), new C5139b(30, new C5138a(5, 24), new C5138a(7, 25)), new C5139b(24, new C5138a(11, 12), new C5138a(7, 13))), new C5137c(16, new int[]{6, 26, 50, 74}, new C5139b(24, new C5138a(5, 98), new C5138a(1, 99)), new C5139b(28, new C5138a(7, 45), new C5138a(3, 46)), new C5139b(24, new C5138a(15, 19), new C5138a(2, 20)), new C5139b(30, new C5138a(3, 15), new C5138a(13, 16))), new C5137c(17, new int[]{6, 30, 54, 78}, new C5139b(28, new C5138a(1, 107), new C5138a(5, 108)), new C5139b(28, new C5138a(10, 46), new C5138a(1, 47)), new C5139b(28, new C5138a(1, 22), new C5138a(15, 23)), new C5139b(28, new C5138a(2, 14), new C5138a(17, 15))), new C5137c(18, new int[]{6, 30, 56, 82}, new C5139b(30, new C5138a(5, 120), new C5138a(1, 121)), new C5139b(26, new C5138a(9, 43), new C5138a(4, 44)), new C5139b(28, new C5138a(17, 22), new C5138a(1, 23)), new C5139b(28, new C5138a(2, 14), new C5138a(19, 15))), new C5137c(19, new int[]{6, 30, 58, 86}, new C5139b(28, new C5138a(3, 113), new C5138a(4, 114)), new C5139b(26, new C5138a(3, 44), new C5138a(11, 45)), new C5139b(26, new C5138a(17, 21), new C5138a(4, 22)), new C5139b(26, new C5138a(9, 13), new C5138a(16, 14))), new C5137c(20, new int[]{6, 34, 62, 90}, new C5139b(28, new C5138a(3, 107), new C5138a(5, 108)), new C5139b(26, new C5138a(3, 41), new C5138a(13, 42)), new C5139b(30, new C5138a(15, 24), new C5138a(5, 25)), new C5139b(28, new C5138a(15, 15), new C5138a(10, 16))), new C5137c(21, new int[]{6, 28, 50, 72, 94}, new C5139b(28, new C5138a(4, 116), new C5138a(4, 117)), new C5139b(26, new C5138a(17, 42)), new C5139b(28, new C5138a(17, 22), new C5138a(6, 23)), new C5139b(30, new C5138a(19, 16), new C5138a(6, 17))), new C5137c(22, new int[]{6, 26, 50, 74, 98}, new C5139b(28, new C5138a(2, 111), new C5138a(7, 112)), new C5139b(28, new C5138a(17, 46)), new C5139b(30, new C5138a(7, 24), new C5138a(16, 25)), new C5139b(24, new C5138a(34, 13))), new C5137c(23, new int[]{6, 30, 54, 78, 102}, new C5139b(30, new C5138a(4, 121), new C5138a(5, 122)), new C5139b(28, new C5138a(4, 47), new C5138a(14, 48)), new C5139b(30, new C5138a(11, 24), new C5138a(14, 25)), new C5139b(30, new C5138a(16, 15), new C5138a(14, 16))), new C5137c(24, new int[]{6, 28, 54, 80, 106}, new C5139b(30, new C5138a(6, 117), new C5138a(4, 118)), new C5139b(28, new C5138a(6, 45), new C5138a(14, 46)), new C5139b(30, new C5138a(11, 24), new C5138a(16, 25)), new C5139b(30, new C5138a(30, 16), new C5138a(2, 17))), new C5137c(25, new int[]{6, 32, 58, 84, 110}, new C5139b(26, new C5138a(8, 106), new C5138a(4, 107)), new C5139b(28, new C5138a(8, 47), new C5138a(13, 48)), new C5139b(30, new C5138a(7, 24), new C5138a(22, 25)), new C5139b(30, new C5138a(22, 15), new C5138a(13, 16))), new C5137c(26, new int[]{6, 30, 58, 86, 114}, new C5139b(28, new C5138a(10, 114), new C5138a(2, 115)), new C5139b(28, new C5138a(19, 46), new C5138a(4, 47)), new C5139b(28, new C5138a(28, 22), new C5138a(6, 23)), new C5139b(30, new C5138a(33, 16), new C5138a(4, 17))), new C5137c(27, new int[]{6, 34, 62, 90, 118}, new C5139b(30, new C5138a(8, 122), new C5138a(4, 123)), new C5139b(28, new C5138a(22, 45), new C5138a(3, 46)), new C5139b(30, new C5138a(8, 23), new C5138a(26, 24)), new C5139b(30, new C5138a(12, 15), new C5138a(28, 16))), new C5137c(28, new int[]{6, 26, 50, 74, 98, 122}, new C5139b(30, new C5138a(3, 117), new C5138a(10, 118)), new C5139b(28, new C5138a(3, 45), new C5138a(23, 46)), new C5139b(30, new C5138a(4, 24), new C5138a(31, 25)), new C5139b(30, new C5138a(11, 15), new C5138a(31, 16))), new C5137c(29, new int[]{6, 30, 54, 78, 102, 126}, new C5139b(30, new C5138a(7, 116), new C5138a(7, 117)), new C5139b(28, new C5138a(21, 45), new C5138a(7, 46)), new C5139b(30, new C5138a(1, 23), new C5138a(37, 24)), new C5139b(30, new C5138a(19, 15), new C5138a(26, 16))), new C5137c(30, new int[]{6, 26, 52, 78, 104, 130}, new C5139b(30, new C5138a(5, 115), new C5138a(10, 116)), new C5139b(28, new C5138a(19, 47), new C5138a(10, 48)), new C5139b(30, new C5138a(15, 24), new C5138a(25, 25)), new C5139b(30, new C5138a(23, 15), new C5138a(25, 16))), new C5137c(31, new int[]{6, 30, 56, 82, 108, 134}, new C5139b(30, new C5138a(13, 115), new C5138a(3, 116)), new C5139b(28, new C5138a(2, 46), new C5138a(29, 47)), new C5139b(30, new C5138a(42, 24), new C5138a(1, 25)), new C5139b(30, new C5138a(23, 15), new C5138a(28, 16))), new C5137c(32, new int[]{6, 34, 60, 86, 112, 138}, new C5139b(30, new C5138a(17, 115)), new C5139b(28, new C5138a(10, 46), new C5138a(23, 47)), new C5139b(30, new C5138a(10, 24), new C5138a(35, 25)), new C5139b(30, new C5138a(19, 15), new C5138a(35, 16))), new C5137c(33, new int[]{6, 30, 58, 86, 114, 142}, new C5139b(30, new C5138a(17, 115), new C5138a(1, 116)), new C5139b(28, new C5138a(14, 46), new C5138a(21, 47)), new C5139b(30, new C5138a(29, 24), new C5138a(19, 25)), new C5139b(30, new C5138a(11, 15), new C5138a(46, 16))), new C5137c(34, new int[]{6, 34, 62, 90, 118, 146}, new C5139b(30, new C5138a(13, 115), new C5138a(6, 116)), new C5139b(28, new C5138a(14, 46), new C5138a(23, 47)), new C5139b(30, new C5138a(44, 24), new C5138a(7, 25)), new C5139b(30, new C5138a(59, 16), new C5138a(1, 17))), new C5137c(35, new int[]{6, 30, 54, 78, 102, 126, 150}, new C5139b(30, new C5138a(12, 121), new C5138a(7, 122)), new C5139b(28, new C5138a(12, 47), new C5138a(26, 48)), new C5139b(30, new C5138a(39, 24), new C5138a(14, 25)), new C5139b(30, new C5138a(22, 15), new C5138a(41, 16))), new C5137c(36, new int[]{6, 24, 50, 76, 102, 128, 154}, new C5139b(30, new C5138a(6, 121), new C5138a(14, 122)), new C5139b(28, new C5138a(6, 47), new C5138a(34, 48)), new C5139b(30, new C5138a(46, 24), new C5138a(10, 25)), new C5139b(30, new C5138a(2, 15), new C5138a(64, 16))), new C5137c(37, new int[]{6, 28, 54, 80, 106, 132, 158}, new C5139b(30, new C5138a(17, 122), new C5138a(4, 123)), new C5139b(28, new C5138a(29, 46), new C5138a(14, 47)), new C5139b(30, new C5138a(49, 24), new C5138a(10, 25)), new C5139b(30, new C5138a(24, 15), new C5138a(46, 16))), new C5137c(38, new int[]{6, 32, 58, 84, 110, 136, 162}, new C5139b(30, new C5138a(4, 122), new C5138a(18, 123)), new C5139b(28, new C5138a(13, 46), new C5138a(32, 47)), new C5139b(30, new C5138a(48, 24), new C5138a(14, 25)), new C5139b(30, new C5138a(42, 15), new C5138a(32, 16))), new C5137c(39, new int[]{6, 26, 54, 82, 110, 138, 166}, new C5139b(30, new C5138a(20, 117), new C5138a(4, 118)), new C5139b(28, new C5138a(40, 47), new C5138a(7, 48)), new C5139b(30, new C5138a(43, 24), new C5138a(22, 25)), new C5139b(30, new C5138a(10, 15), new C5138a(67, 16))), new C5137c(40, new int[]{6, 30, 58, 86, 114, 142, 170}, new C5139b(30, new C5138a(19, 118), new C5138a(6, 119)), new C5139b(28, new C5138a(18, 47), new C5138a(31, 48)), new C5139b(30, new C5138a(34, 24), new C5138a(34, 25)), new C5139b(30, new C5138a(20, 15), new C5138a(61, 16)))};
    }

    /* renamed from: a */
    public int m1390a() {
        return this.f21711c;
    }

    /* renamed from: a */
    public C5139b m1388a(EnumC5135a enumC5135a) {
        return this.f21713e[enumC5135a.ordinal()];
    }

    /* renamed from: b */
    public int m1387b() {
        return this.f21714f;
    }

    /* renamed from: c */
    public int m1386c() {
        return (this.f21711c * 4) + 17;
    }

    public String toString() {
        return String.valueOf(this.f21711c);
    }
}
