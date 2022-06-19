package p193e.p1577m.p1578a.p1596c.p1636q1;

import java.util.Arrays;
/* renamed from: e.m.a.c.q1.r */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/r.class */
public final class C24794r {

    /* renamed from: a */
    public static final byte[] f69480a = {0, 0, 0, 1};

    /* renamed from: b */
    public static final float[] f69481b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* renamed from: c */
    public static final Object f69482c = new Object();

    /* renamed from: d */
    public static int[] f69483d = new int[10];

    /* renamed from: e.m.a.c.q1.r$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/r$a.class */
    public static final class C24795a {

        /* renamed from: a */
        public final int f69484a;

        /* renamed from: b */
        public final int f69485b;

        /* renamed from: c */
        public final boolean f69486c;

        public C24795a(int i, int i2, boolean z) {
            this.f69484a = i;
            this.f69485b = i2;
            this.f69486c = z;
        }
    }

    /* renamed from: e.m.a.c.q1.r$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/r$b.class */
    public static final class C24796b {

        /* renamed from: a */
        public final int f69487a;

        /* renamed from: b */
        public final int f69488b;

        /* renamed from: c */
        public final int f69489c;

        /* renamed from: d */
        public final int f69490d;

        /* renamed from: e */
        public final int f69491e;

        /* renamed from: f */
        public final int f69492f;

        /* renamed from: g */
        public final float f69493g;

        /* renamed from: h */
        public final boolean f69494h;

        /* renamed from: i */
        public final boolean f69495i;

        /* renamed from: j */
        public final int f69496j;

        /* renamed from: k */
        public final int f69497k;

        /* renamed from: l */
        public final int f69498l;

        /* renamed from: m */
        public final boolean f69499m;

        public C24796b(int i, int i2, int i3, int i4, int i5, int i6, float f, boolean z, boolean z2, int i7, int i8, int i9, boolean z3) {
            this.f69487a = i;
            this.f69488b = i2;
            this.f69489c = i3;
            this.f69490d = i4;
            this.f69491e = i5;
            this.f69492f = i6;
            this.f69493g = f;
            this.f69494h = z;
            this.f69495i = z2;
            this.f69496j = i7;
            this.f69497k = i8;
            this.f69498l = i9;
            this.f69499m = z3;
        }
    }

    /* renamed from: a */
    public static void m4566a(boolean[] zArr) {
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
    public static int m4565b(byte[] r4, int r5, int r6, boolean[] r7) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1636q1.C24794r.m4565b(byte[], int, int, boolean[]):int");
    }

    /* renamed from: c */
    public static C24795a m4564c(byte[] bArr, int i, int i2) {
        C24799u c24799u = new C24799u(bArr, i, i2);
        c24799u.m4510j(8);
        int m4514f = c24799u.m4514f();
        int m4514f2 = c24799u.m4514f();
        c24799u.m4511i();
        return new C24795a(m4514f, m4514f2, c24799u.m4516d());
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x024a  */
    /* JADX WARN: Type inference failed for: r0v24, types: [int, boolean] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p193e.p1577m.p1578a.p1596c.p1636q1.C24794r.C24796b m4563d(byte[] r16, int r17, int r18) {
        /*
            Method dump skipped, instructions count: 716
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1636q1.C24794r.m4563d(byte[], int, int):e.m.a.c.q1.r$b");
    }

    /* renamed from: e */
    public static int m4562e(byte[] bArr, int i) {
        int i2;
        int i3;
        synchronized (f69482c) {
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
                    int[] iArr = f69483d;
                    if (iArr.length <= i5) {
                        f69483d = Arrays.copyOf(iArr, iArr.length * 2);
                    }
                    f69483d[i5] = i3;
                    i4 = i3 + 3;
                    i5++;
                }
            }
            i2 = i - i5;
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < i5; i8++) {
                int i9 = f69483d[i8] - i6;
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
