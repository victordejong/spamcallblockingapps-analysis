package p193e.p1545k.p1546a.p1548b.p1552w;

import java.util.Arrays;
/* renamed from: e.k.a.b.w.a */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/w/a.class */
public final class C23394a {

    /* renamed from: a */
    public static final char[] f64767a;

    /* renamed from: b */
    public static final byte[] f64768b;

    /* renamed from: c */
    public static final int[] f64769c;

    /* renamed from: d */
    public static final int[] f64770d;

    /* renamed from: e */
    public static final int[] f64771e;

    /* renamed from: f */
    public static final int[] f64772f;

    /* renamed from: g */
    public static final int[] f64773g;

    /* renamed from: h */
    public static final int[] f64774h;

    /* renamed from: i */
    public static final int[] f64775i;

    /* renamed from: e.k.a.b.w.a$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/b/w/a$a.class */
    public static class C23395a {

        /* renamed from: b */
        public static final C23395a f64776b = new C23395a();

        /* renamed from: a */
        public int[][] f64777a = new int[128];
    }

    static {
        int i;
        char[] charArray = "0123456789ABCDEF".toCharArray();
        f64767a = charArray;
        int length = charArray.length;
        f64768b = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            f64768b[i2] = (byte) f64767a[i2];
        }
        int[] iArr = new int[256];
        for (int i3 = 0; i3 < 32; i3++) {
            iArr[i3] = -1;
        }
        iArr[34] = 1;
        iArr[92] = 1;
        f64769c = iArr;
        int length2 = iArr.length;
        int[] iArr2 = new int[length2];
        System.arraycopy(iArr, 0, iArr2, 0, length2);
        for (int i4 = 128; i4 < 256; i4++) {
            iArr2[i4] = (i4 & 224) == 192 ? 2 : (i4 & 240) == 224 ? 3 : (i4 & 248) == 240 ? 4 : -1;
        }
        f64770d = iArr2;
        int[] iArr3 = new int[256];
        Arrays.fill(iArr3, -1);
        for (int i5 = 33; i5 < 256; i5++) {
            if (Character.isJavaIdentifierPart((char) i5)) {
                iArr3[i5] = 0;
            }
        }
        iArr3[64] = 0;
        iArr3[35] = 0;
        iArr3[42] = 0;
        iArr3[45] = 0;
        iArr3[43] = 0;
        f64771e = iArr3;
        int[] iArr4 = new int[256];
        System.arraycopy(iArr3, 0, iArr4, 0, 256);
        Arrays.fill(iArr4, 128, 128, 0);
        f64772f = iArr4;
        int[] iArr5 = new int[256];
        int[] iArr6 = f64770d;
        System.arraycopy(iArr6, 128, iArr5, 128, 128);
        Arrays.fill(iArr5, 0, 32, -1);
        iArr5[9] = 0;
        iArr5[10] = 10;
        iArr5[13] = 13;
        iArr5[42] = 42;
        f64773g = iArr5;
        int[] iArr7 = new int[256];
        System.arraycopy(iArr6, 128, iArr7, 128, 128);
        Arrays.fill(iArr7, 0, 32, -1);
        iArr7[32] = 1;
        iArr7[9] = 1;
        iArr7[10] = 10;
        iArr7[13] = 13;
        iArr7[47] = 47;
        iArr7[35] = 35;
        int[] iArr8 = new int[128];
        for (int i6 = 0; i6 < 32; i6++) {
            iArr8[i6] = -1;
        }
        iArr8[34] = 34;
        iArr8[92] = 92;
        iArr8[8] = 98;
        iArr8[9] = 116;
        iArr8[12] = 102;
        iArr8[10] = 110;
        iArr8[13] = 114;
        f64774h = iArr8;
        int[] iArr9 = new int[256];
        f64775i = iArr9;
        Arrays.fill(iArr9, -1);
        int i7 = 0;
        while (true) {
            if (i7 < 10) {
                f64775i[i7 + 48] = i7;
                i7++;
            }
        }
        for (i = 0; i < 6; i++) {
            int[] iArr10 = f64775i;
            int i8 = i + 10;
            iArr10[i + 97] = i8;
            iArr10[i + 65] = i8;
        }
    }

    /* renamed from: a */
    public static int[] m7135a(int i) {
        if (i == 34) {
            return f64774h;
        }
        C23395a c23395a = C23395a.f64776b;
        int[] iArr = c23395a.f64777a[i];
        int[] iArr2 = iArr;
        if (iArr == null) {
            iArr2 = Arrays.copyOf(f64774h, 128);
            if (iArr2[i] == 0) {
                iArr2[i] = -1;
            }
            c23395a.f64777a[i] = iArr2;
        }
        return iArr2;
    }
}
