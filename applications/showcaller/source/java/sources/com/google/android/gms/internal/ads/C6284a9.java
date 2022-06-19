package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.a9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/a9.class */
public final class C6284a9 {

    /* renamed from: a */
    private static final byte[] f19852a = {0, 0, 0, 1};

    /* renamed from: b */
    private static final String[] f19853b = {"", "A", "B", "C"};

    /* renamed from: c */
    public static final /* synthetic */ int f19854c = 0;

    /* renamed from: a */
    public static String m16673a(int i, int i2, int i3) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    /* renamed from: b */
    public static String m16672b(C6731ma c6731ma) {
        int i;
        int i2;
        c6731ma.m13329c(24);
        int m13327e = c6731ma.m13327e(2);
        boolean m13328d = c6731ma.m13328d();
        int m13327e2 = c6731ma.m13327e(5);
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i3 >= 32) {
                break;
            }
            int i5 = i;
            if (c6731ma.m13328d()) {
                i5 = i | (1 << i3);
            }
            i3++;
            i4 = i5;
        }
        int[] iArr = new int[6];
        for (int i6 = 0; i6 < 6; i6++) {
            iArr[i6] = c6731ma.m13327e(8);
        }
        StringBuilder sb = new StringBuilder(C7101wa.m9700a0("hvc1.%s%d.%X.%c%d", f19853b[m13327e], Integer.valueOf(m13327e2), Integer.valueOf(i), Character.valueOf(true != m13328d ? 'L' : 'H'), Integer.valueOf(c6731ma.m13327e(8))));
        int i7 = 6;
        while (true) {
            i2 = i7;
            if (i2 <= 0) {
                break;
            }
            int i8 = i2 - 1;
            if (iArr[i8] != 0) {
                break;
            }
            i7 = i8;
        }
        for (int i9 = 0; i9 < i2; i9++) {
            sb.append(String.format(".%02X", Integer.valueOf(iArr[i9])));
        }
        return sb.toString();
    }

    /* renamed from: c */
    public static byte[] m16671c(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2 + 4];
        System.arraycopy(f19852a, 0, bArr2, 0, 4);
        System.arraycopy(bArr, i, bArr2, 4, i2);
        return bArr2;
    }
}
