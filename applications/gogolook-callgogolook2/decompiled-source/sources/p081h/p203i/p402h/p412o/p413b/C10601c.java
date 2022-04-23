package p081h.p203i.p402h.p412o.p413b;

import androidx.media2.exoplayer.external.text.cea.Cea708Decoder;
/* renamed from: h.i.h.o.b.c */
/* loaded from: classes2-dex2jar.jar:h/i/h/o/b/c.class */
public final class C10601c {

    /* renamed from: d */
    public static final C10601c[] f24137d = m11279d();

    /* renamed from: a */
    public final int f24138a;

    /* renamed from: b */
    public final C10603b[] f24139b;

    /* renamed from: c */
    public final int f24140c;

    /* renamed from: h.i.h.o.b.c$a */
    /* loaded from: classes2-dex2jar.jar:h/i/h/o/b/c$a.class */
    public static final class C10602a {

        /* renamed from: a */
        public final int f24141a;

        /* renamed from: b */
        public final int f24142b;

        public C10602a(int i, int i2) {
            this.f24141a = i;
            this.f24142b = i2;
        }

        /* renamed from: a */
        public int m11278a() {
            return this.f24141a;
        }

        /* renamed from: b */
        public int m11277b() {
            return this.f24142b;
        }
    }

    /* renamed from: h.i.h.o.b.c$b */
    /* loaded from: classes2-dex2jar.jar:h/i/h/o/b/c$b.class */
    public static final class C10603b {

        /* renamed from: a */
        public final int f24143a;

        /* renamed from: b */
        public final C10602a[] f24144b;

        public C10603b(int i, C10602a... aVarArr) {
            this.f24143a = i;
            this.f24144b = aVarArr;
        }

        /* renamed from: a */
        public C10602a[] m11276a() {
            return this.f24144b;
        }

        /* renamed from: b */
        public int m11275b() {
            return this.f24143a;
        }

        /* renamed from: c */
        public int m11274c() {
            int i = 0;
            for (C10602a aVar : this.f24144b) {
                i += aVar.m11278a();
            }
            return i;
        }

        /* renamed from: d */
        public int m11273d() {
            return this.f24143a * m11274c();
        }
    }

    public C10601c(int i, int[] iArr, C10603b... bVarArr) {
        C10602a[] a;
        this.f24138a = i;
        this.f24139b = bVarArr;
        int b = bVarArr[0].m11275b();
        int i2 = 0;
        for (C10602a aVar : bVarArr[0].m11276a()) {
            i2 += aVar.m11278a() * (aVar.m11277b() + b);
        }
        this.f24140c = i2;
    }

    /* renamed from: a */
    public static C10601c m11283a(int i) {
        if (i > 0 && i <= 40) {
            return f24137d[i - 1];
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: d */
    public static C10601c[] m11279d() {
        return new C10601c[]{new C10601c(1, new int[0], new C10603b(7, new C10602a(1, 19)), new C10603b(10, new C10602a(1, 16)), new C10603b(13, new C10602a(1, 13)), new C10603b(17, new C10602a(1, 9))), new C10601c(2, new int[]{6, 18}, new C10603b(10, new C10602a(1, 34)), new C10603b(16, new C10602a(1, 28)), new C10603b(22, new C10602a(1, 22)), new C10603b(28, new C10602a(1, 16))), new C10601c(3, new int[]{6, 22}, new C10603b(15, new C10602a(1, 55)), new C10603b(26, new C10602a(1, 44)), new C10603b(18, new C10602a(2, 17)), new C10603b(22, new C10602a(2, 13))), new C10601c(4, new int[]{6, 26}, new C10603b(20, new C10602a(1, 80)), new C10603b(18, new C10602a(2, 32)), new C10603b(26, new C10602a(2, 24)), new C10603b(16, new C10602a(4, 9))), new C10601c(5, new int[]{6, 30}, new C10603b(26, new C10602a(1, 108)), new C10603b(24, new C10602a(2, 43)), new C10603b(18, new C10602a(2, 15), new C10602a(2, 16)), new C10603b(22, new C10602a(2, 11), new C10602a(2, 12))), new C10601c(6, new int[]{6, 34}, new C10603b(18, new C10602a(2, 68)), new C10603b(16, new C10602a(4, 27)), new C10603b(24, new C10602a(4, 19)), new C10603b(28, new C10602a(4, 15))), new C10601c(7, new int[]{6, 22, 38}, new C10603b(20, new C10602a(2, 78)), new C10603b(18, new C10602a(4, 31)), new C10603b(18, new C10602a(2, 14), new C10602a(4, 15)), new C10603b(26, new C10602a(4, 13), new C10602a(1, 14))), new C10601c(8, new int[]{6, 24, 42}, new C10603b(24, new C10602a(2, 97)), new C10603b(22, new C10602a(2, 38), new C10602a(2, 39)), new C10603b(22, new C10602a(4, 18), new C10602a(2, 19)), new C10603b(26, new C10602a(4, 14), new C10602a(2, 15))), new C10601c(9, new int[]{6, 26, 46}, new C10603b(30, new C10602a(2, 116)), new C10603b(22, new C10602a(3, 36), new C10602a(2, 37)), new C10603b(20, new C10602a(4, 16), new C10602a(4, 17)), new C10603b(24, new C10602a(4, 12), new C10602a(4, 13))), new C10601c(10, new int[]{6, 28, 50}, new C10603b(18, new C10602a(2, 68), new C10602a(2, 69)), new C10603b(26, new C10602a(4, 43), new C10602a(1, 44)), new C10603b(24, new C10602a(6, 19), new C10602a(2, 20)), new C10603b(28, new C10602a(6, 15), new C10602a(2, 16))), new C10601c(11, new int[]{6, 30, 54}, new C10603b(20, new C10602a(4, 81)), new C10603b(30, new C10602a(1, 50), new C10602a(4, 51)), new C10603b(28, new C10602a(4, 22), new C10602a(4, 23)), new C10603b(24, new C10602a(3, 12), new C10602a(8, 13))), new C10601c(12, new int[]{6, 32, 58}, new C10603b(24, new C10602a(2, 92), new C10602a(2, 93)), new C10603b(22, new C10602a(6, 36), new C10602a(2, 37)), new C10603b(26, new C10602a(4, 20), new C10602a(6, 21)), new C10603b(28, new C10602a(7, 14), new C10602a(4, 15))), new C10601c(13, new int[]{6, 34, 62}, new C10603b(26, new C10602a(4, 107)), new C10603b(22, new C10602a(8, 37), new C10602a(1, 38)), new C10603b(24, new C10602a(8, 20), new C10602a(4, 21)), new C10603b(22, new C10602a(12, 11), new C10602a(4, 12))), new C10601c(14, new int[]{6, 26, 46, 66}, new C10603b(30, new C10602a(3, 115), new C10602a(1, 116)), new C10603b(24, new C10602a(4, 40), new C10602a(5, 41)), new C10603b(20, new C10602a(11, 16), new C10602a(5, 17)), new C10603b(24, new C10602a(11, 12), new C10602a(5, 13))), new C10601c(15, new int[]{6, 26, 48, 70}, new C10603b(22, new C10602a(5, 87), new C10602a(1, 88)), new C10603b(24, new C10602a(5, 41), new C10602a(5, 42)), new C10603b(30, new C10602a(5, 24), new C10602a(7, 25)), new C10603b(24, new C10602a(11, 12), new C10602a(7, 13))), new C10601c(16, new int[]{6, 26, 50, 74}, new C10603b(24, new C10602a(5, 98), new C10602a(1, 99)), new C10603b(28, new C10602a(7, 45), new C10602a(3, 46)), new C10603b(24, new C10602a(15, 19), new C10602a(2, 20)), new C10603b(30, new C10602a(3, 15), new C10602a(13, 16))), new C10601c(17, new int[]{6, 30, 54, 78}, new C10603b(28, new C10602a(1, 107), new C10602a(5, 108)), new C10603b(28, new C10602a(10, 46), new C10602a(1, 47)), new C10603b(28, new C10602a(1, 22), new C10602a(15, 23)), new C10603b(28, new C10602a(2, 14), new C10602a(17, 15))), new C10601c(18, new int[]{6, 30, 56, 82}, new C10603b(30, new C10602a(5, 120), new C10602a(1, 121)), new C10603b(26, new C10602a(9, 43), new C10602a(4, 44)), new C10603b(28, new C10602a(17, 22), new C10602a(1, 23)), new C10603b(28, new C10602a(2, 14), new C10602a(19, 15))), new C10601c(19, new int[]{6, 30, 58, 86}, new C10603b(28, new C10602a(3, 113), new C10602a(4, 114)), new C10603b(26, new C10602a(3, 44), new C10602a(11, 45)), new C10603b(26, new C10602a(17, 21), new C10602a(4, 22)), new C10603b(26, new C10602a(9, 13), new C10602a(16, 14))), new C10601c(20, new int[]{6, 34, 62, 90}, new C10603b(28, new C10602a(3, 107), new C10602a(5, 108)), new C10603b(26, new C10602a(3, 41), new C10602a(13, 42)), new C10603b(30, new C10602a(15, 24), new C10602a(5, 25)), new C10603b(28, new C10602a(15, 15), new C10602a(10, 16))), new C10601c(21, new int[]{6, 28, 50, 72, 94}, new C10603b(28, new C10602a(4, 116), new C10602a(4, 117)), new C10603b(26, new C10602a(17, 42)), new C10603b(28, new C10602a(17, 22), new C10602a(6, 23)), new C10603b(30, new C10602a(19, 16), new C10602a(6, 17))), new C10601c(22, new int[]{6, 26, 50, 74, 98}, new C10603b(28, new C10602a(2, 111), new C10602a(7, 112)), new C10603b(28, new C10602a(17, 46)), new C10603b(30, new C10602a(7, 24), new C10602a(16, 25)), new C10603b(24, new C10602a(34, 13))), new C10601c(23, new int[]{6, 30, 54, 78, 102}, new C10603b(30, new C10602a(4, 121), new C10602a(5, 122)), new C10603b(28, new C10602a(4, 47), new C10602a(14, 48)), new C10603b(30, new C10602a(11, 24), new C10602a(14, 25)), new C10603b(30, new C10602a(16, 15), new C10602a(14, 16))), new C10601c(24, new int[]{6, 28, 54, 80, 106}, new C10603b(30, new C10602a(6, 117), new C10602a(4, 118)), new C10603b(28, new C10602a(6, 45), new C10602a(14, 46)), new C10603b(30, new C10602a(11, 24), new C10602a(16, 25)), new C10603b(30, new C10602a(30, 16), new C10602a(2, 17))), new C10601c(25, new int[]{6, 32, 58, 84, 110}, new C10603b(26, new C10602a(8, 106), new C10602a(4, 107)), new C10603b(28, new C10602a(8, 47), new C10602a(13, 48)), new C10603b(30, new C10602a(7, 24), new C10602a(22, 25)), new C10603b(30, new C10602a(22, 15), new C10602a(13, 16))), new C10601c(26, new int[]{6, 30, 58, 86, 114}, new C10603b(28, new C10602a(10, 114), new C10602a(2, 115)), new C10603b(28, new C10602a(19, 46), new C10602a(4, 47)), new C10603b(28, new C10602a(28, 22), new C10602a(6, 23)), new C10603b(30, new C10602a(33, 16), new C10602a(4, 17))), new C10601c(27, new int[]{6, 34, 62, 90, 118}, new C10603b(30, new C10602a(8, 122), new C10602a(4, 123)), new C10603b(28, new C10602a(22, 45), new C10602a(3, 46)), new C10603b(30, new C10602a(8, 23), new C10602a(26, 24)), new C10603b(30, new C10602a(12, 15), new C10602a(28, 16))), new C10601c(28, new int[]{6, 26, 50, 74, 98, 122}, new C10603b(30, new C10602a(3, 117), new C10602a(10, 118)), new C10603b(28, new C10602a(3, 45), new C10602a(23, 46)), new C10603b(30, new C10602a(4, 24), new C10602a(31, 25)), new C10603b(30, new C10602a(11, 15), new C10602a(31, 16))), new C10601c(29, new int[]{6, 30, 54, 78, 102, Cea708Decoder.CHARACTER_LOWER_RIGHT_BORDER}, new C10603b(30, new C10602a(7, 116), new C10602a(7, 117)), new C10603b(28, new C10602a(21, 45), new C10602a(7, 46)), new C10603b(30, new C10602a(1, 23), new C10602a(37, 24)), new C10603b(30, new C10602a(19, 15), new C10602a(26, 16))), new C10601c(30, new int[]{6, 26, 52, 78, 104, 130}, new C10603b(30, new C10602a(5, 115), new C10602a(10, 116)), new C10603b(28, new C10602a(19, 47), new C10602a(10, 48)), new C10603b(30, new C10602a(15, 24), new C10602a(25, 25)), new C10603b(30, new C10602a(23, 15), new C10602a(25, 16))), new C10601c(31, new int[]{6, 30, 56, 82, 108, 134}, new C10603b(30, new C10602a(13, 115), new C10602a(3, 116)), new C10603b(28, new C10602a(2, 46), new C10602a(29, 47)), new C10603b(30, new C10602a(42, 24), new C10602a(1, 25)), new C10603b(30, new C10602a(23, 15), new C10602a(28, 16))), new C10601c(32, new int[]{6, 34, 60, 86, 112, 138}, new C10603b(30, new C10602a(17, 115)), new C10603b(28, new C10602a(10, 46), new C10602a(23, 47)), new C10603b(30, new C10602a(10, 24), new C10602a(35, 25)), new C10603b(30, new C10602a(19, 15), new C10602a(35, 16))), new C10601c(33, new int[]{6, 30, 58, 86, 114, 142}, new C10603b(30, new C10602a(17, 115), new C10602a(1, 116)), new C10603b(28, new C10602a(14, 46), new C10602a(21, 47)), new C10603b(30, new C10602a(29, 24), new C10602a(19, 25)), new C10603b(30, new C10602a(11, 15), new C10602a(46, 16))), new C10601c(34, new int[]{6, 34, 62, 90, 118, 146}, new C10603b(30, new C10602a(13, 115), new C10602a(6, 116)), new C10603b(28, new C10602a(14, 46), new C10602a(23, 47)), new C10603b(30, new C10602a(44, 24), new C10602a(7, 25)), new C10603b(30, new C10602a(59, 16), new C10602a(1, 17))), new C10601c(35, new int[]{6, 30, 54, 78, 102, Cea708Decoder.CHARACTER_LOWER_RIGHT_BORDER, 150}, new C10603b(30, new C10602a(12, 121), new C10602a(7, 122)), new C10603b(28, new C10602a(12, 47), new C10602a(26, 48)), new C10603b(30, new C10602a(39, 24), new C10602a(14, 25)), new C10603b(30, new C10602a(22, 15), new C10602a(41, 16))), new C10601c(36, new int[]{6, 24, 50, 76, 102, 128, 154}, new C10603b(30, new C10602a(6, 121), new C10602a(14, 122)), new C10603b(28, new C10602a(6, 47), new C10602a(34, 48)), new C10603b(30, new C10602a(46, 24), new C10602a(10, 25)), new C10603b(30, new C10602a(2, 15), new C10602a(64, 16))), new C10601c(37, new int[]{6, 28, 54, 80, 106, 132, 158}, new C10603b(30, new C10602a(17, 122), new C10602a(4, 123)), new C10603b(28, new C10602a(29, 46), new C10602a(14, 47)), new C10603b(30, new C10602a(49, 24), new C10602a(10, 25)), new C10603b(30, new C10602a(24, 15), new C10602a(46, 16))), new C10601c(38, new int[]{6, 32, 58, 84, 110, 136, 162}, new C10603b(30, new C10602a(4, 122), new C10602a(18, 123)), new C10603b(28, new C10602a(13, 46), new C10602a(32, 47)), new C10603b(30, new C10602a(48, 24), new C10602a(14, 25)), new C10603b(30, new C10602a(42, 15), new C10602a(32, 16))), new C10601c(39, new int[]{6, 26, 54, 82, 110, 138, 166}, new C10603b(30, new C10602a(20, 117), new C10602a(4, 118)), new C10603b(28, new C10602a(40, 47), new C10602a(7, 48)), new C10603b(30, new C10602a(43, 24), new C10602a(22, 25)), new C10603b(30, new C10602a(10, 15), new C10602a(67, 16))), new C10601c(40, new int[]{6, 30, 58, 86, 114, 142, 170}, new C10603b(30, new C10602a(19, 118), new C10602a(6, 119)), new C10603b(28, new C10602a(18, 47), new C10602a(31, 48)), new C10603b(30, new C10602a(34, 24), new C10602a(34, 25)), new C10603b(30, new C10602a(20, 15), new C10602a(61, 16)))};
    }

    /* renamed from: a */
    public int m11284a() {
        return (this.f24138a * 4) + 17;
    }

    /* renamed from: a */
    public C10603b m11282a(EnumC10599a aVar) {
        return this.f24139b[aVar.ordinal()];
    }

    /* renamed from: b */
    public int m11281b() {
        return this.f24140c;
    }

    /* renamed from: c */
    public int m11280c() {
        return this.f24138a;
    }

    public String toString() {
        return String.valueOf(this.f24138a);
    }
}
