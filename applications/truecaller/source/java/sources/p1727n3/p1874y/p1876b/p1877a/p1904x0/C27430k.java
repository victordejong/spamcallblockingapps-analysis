package p1727n3.p1874y.p1876b.p1877a.p1904x0;

import java.util.Arrays;
/* renamed from: n3.y.b.a.x0.k */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/x0/k.class */
public final class C27430k {

    /* renamed from: a */
    public static final byte[] f77176a = {0, 0, 0, 1};

    /* renamed from: b */
    public static final float[] f77177b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* renamed from: c */
    public static final Object f77178c = new Object();

    /* renamed from: d */
    public static int[] f77179d = new int[10];

    /* renamed from: n3.y.b.a.x0.k$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/x0/k$a.class */
    public static final class C27431a {

        /* renamed from: a */
        public final int f77180a;

        /* renamed from: b */
        public final int f77181b;

        /* renamed from: c */
        public final boolean f77182c;

        public C27431a(int i, int i2, boolean z) {
            this.f77180a = i;
            this.f77181b = i2;
            this.f77182c = z;
        }
    }

    /* renamed from: n3.y.b.a.x0.k$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/x0/k$b.class */
    public static final class C27432b {

        /* renamed from: a */
        public final int f77183a;

        /* renamed from: b */
        public final int f77184b;

        /* renamed from: c */
        public final int f77185c;

        /* renamed from: d */
        public final int f77186d;

        /* renamed from: e */
        public final int f77187e;

        /* renamed from: f */
        public final int f77188f;

        /* renamed from: g */
        public final float f77189g;

        /* renamed from: h */
        public final boolean f77190h;

        /* renamed from: i */
        public final boolean f77191i;

        /* renamed from: j */
        public final int f77192j;

        /* renamed from: k */
        public final int f77193k;

        /* renamed from: l */
        public final int f77194l;

        /* renamed from: m */
        public final boolean f77195m;

        public C27432b(int i, int i2, int i3, int i4, int i5, int i6, float f, boolean z, boolean z2, int i7, int i8, int i9, boolean z3) {
            this.f77183a = i;
            this.f77184b = i2;
            this.f77185c = i3;
            this.f77186d = i4;
            this.f77187e = i5;
            this.f77188f = i6;
            this.f77189g = f;
            this.f77190h = z;
            this.f77191i = z2;
            this.f77192j = i7;
            this.f77193k = i8;
            this.f77194l = i9;
            this.f77195m = z3;
        }
    }

    /* renamed from: a */
    public static void m356a(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x0134, code lost:
        r10 = true;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m355b(byte[] r4, int r5, int r6, boolean[] r7) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1904x0.C27430k.m355b(byte[], int, int, boolean[]):int");
    }

    /* renamed from: c */
    public static C27431a m354c(byte[] bArr, int i, int i2) {
        C27435n c27435n = new C27435n(bArr, i, i2);
        c27435n.m305j(8);
        int m309f = c27435n.m309f();
        int m309f2 = c27435n.m309f();
        c27435n.m306i();
        return new C27431a(m309f, m309f2, c27435n.m311d());
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0242  */
    /* JADX WARN: Type inference failed for: r0v24, types: [int, boolean] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p1727n3.p1874y.p1876b.p1877a.p1904x0.C27430k.C27432b m353d(byte[] r16, int r17, int r18) {
        /*
            Method dump skipped, instructions count: 708
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1904x0.C27430k.m353d(byte[], int, int):n3.y.b.a.x0.k$b");
    }

    /* renamed from: e */
    public static int m352e(byte[] bArr, int i) {
        int i2;
        int i3;
        synchronized (f77178c) {
            int i4 = 0;
            int i5 = 0;
            while (i4 < i) {
                while (true) {
                    if (i4 >= i - 2) {
                        i3 = i;
                        break;
                    } else if (bArr[i4] == 0 && bArr[i4 + 1] == 0 && bArr[i4 + 2] == 3) {
                        i3 = i4;
                        break;
                    } else {
                        i4++;
                    }
                }
                i4 = i3;
                if (i3 < i) {
                    int[] iArr = f77179d;
                    if (iArr.length <= i5) {
                        f77179d = Arrays.copyOf(iArr, iArr.length * 2);
                    }
                    f77179d[i5] = i3;
                    i4 = i3 + 3;
                    i5++;
                }
            }
            i2 = i - i5;
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < i5; i8++) {
                int i9 = f77179d[i8] - i6;
                System.arraycopy(bArr, i6, bArr, i7, i9);
                int i10 = i7 + i9;
                int i11 = i10 + 1;
                bArr[i10] = (byte) 0;
                i7 = i11 + 1;
                bArr[i11] = (byte) 0;
                i6 += i9 + 3;
            }
            System.arraycopy(bArr, i6, bArr, i7, i2 - i7);
        }
        return i2;
    }
}
