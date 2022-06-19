package com.google.zxing.p406b.p407a;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.zxing.C16149b;
import java.util.Arrays;
/* renamed from: com.google.zxing.b.a.j */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/b/a/j.class */
public final class C16160j {
    private C16160j() {
    }

    /* renamed from: a */
    public static int m7723a(CharSequence charSequence, int i, int i2) {
        float[] fArr;
        if (i >= charSequence.length()) {
            return i2;
        }
        if (i2 == 0) {
            fArr = new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, 1.0f, 1.0f, 1.25f};
        } else {
            fArr = new float[6];
            fArr[0] = 1.0f;
            fArr[1] = 2.0f;
            fArr[2] = 2.0f;
            fArr[3] = 2.0f;
            fArr[4] = 2.0f;
            fArr[5] = 2.25f;
            fArr[i2] = 0.0f;
        }
        int i3 = 0;
        while (true) {
            int i4 = i + i3;
            if (i4 == charSequence.length()) {
                byte[] bArr = new byte[6];
                int[] iArr = new int[6];
                int m7720a = m7720a(fArr, iArr, Integer.MAX_VALUE, bArr);
                int m7721a = m7721a(bArr);
                if (iArr[0] == m7720a) {
                    return 0;
                }
                if (m7721a == 1 && bArr[5] > 0) {
                    return 5;
                }
                if (m7721a == 1 && bArr[4] > 0) {
                    return 4;
                }
                if (m7721a == 1 && bArr[2] > 0) {
                    return 2;
                }
                return (m7721a != 1 || bArr[3] <= 0) ? 1 : 3;
            }
            char charAt = charSequence.charAt(i4);
            int i5 = i3 + 1;
            if (m7724a(charAt)) {
                fArr[0] = fArr[0] + 0.5f;
            } else if (m7719b(charAt)) {
                fArr[0] = (float) Math.ceil(fArr[0]);
                fArr[0] = fArr[0] + 2.0f;
            } else {
                fArr[0] = (float) Math.ceil(fArr[0]);
                fArr[0] = fArr[0] + 1.0f;
            }
            if (charAt == ' ' || (charAt >= '0' && charAt <= '9') || (charAt >= 'A' && charAt <= 'Z')) {
                fArr[1] = fArr[1] + 0.6666667f;
            } else if (m7719b(charAt)) {
                fArr[1] = fArr[1] + 2.6666667f;
            } else {
                fArr[1] = fArr[1] + 1.3333334f;
            }
            if (charAt == ' ' || (charAt >= '0' && charAt <= '9') || (charAt >= 'a' && charAt <= 'z')) {
                fArr[2] = fArr[2] + 0.6666667f;
            } else if (m7719b(charAt)) {
                fArr[2] = fArr[2] + 2.6666667f;
            } else {
                fArr[2] = fArr[2] + 1.3333334f;
            }
            if (m7717d(charAt)) {
                fArr[3] = fArr[3] + 0.6666667f;
            } else if (m7719b(charAt)) {
                fArr[3] = fArr[3] + 4.3333335f;
            } else {
                fArr[3] = fArr[3] + 3.3333333f;
            }
            if (charAt >= ' ' && charAt <= '^') {
                fArr[4] = fArr[4] + 0.75f;
            } else if (m7719b(charAt)) {
                fArr[4] = fArr[4] + 4.25f;
            } else {
                fArr[4] = fArr[4] + 3.25f;
            }
            fArr[5] = fArr[5] + 1.0f;
            i3 = i5;
            if (i5 >= 4) {
                int[] iArr2 = new int[6];
                byte[] bArr2 = new byte[6];
                m7720a(fArr, iArr2, Integer.MAX_VALUE, bArr2);
                int m7721a2 = m7721a(bArr2);
                if (iArr2[0] < iArr2[5] && iArr2[0] < iArr2[1] && iArr2[0] < iArr2[2] && iArr2[0] < iArr2[3] && iArr2[0] < iArr2[4]) {
                    return 0;
                }
                if (iArr2[5] < iArr2[0] || bArr2[1] + bArr2[2] + bArr2[3] + bArr2[4] == 0) {
                    return 5;
                }
                if (m7721a2 == 1 && bArr2[4] > 0) {
                    return 4;
                }
                if (m7721a2 == 1 && bArr2[2] > 0) {
                    return 2;
                }
                if (m7721a2 == 1 && bArr2[3] > 0) {
                    return 3;
                }
                i3 = i5;
                if (iArr2[1] + 1 < iArr2[0]) {
                    i3 = i5;
                    if (iArr2[1] + 1 < iArr2[5]) {
                        i3 = i5;
                        if (iArr2[1] + 1 < iArr2[4]) {
                            i3 = i5;
                            if (iArr2[1] + 1 >= iArr2[2]) {
                                continue;
                            } else if (iArr2[1] < iArr2[3]) {
                                return 1;
                            } else {
                                i3 = i5;
                                if (iArr2[1] == iArr2[3]) {
                                    for (int i6 = i + i5 + 1; i6 < charSequence.length(); i6++) {
                                        char charAt2 = charSequence.charAt(i6);
                                        if (m7716e(charAt2)) {
                                            return 3;
                                        }
                                        if (!m7717d(charAt2)) {
                                            return 1;
                                        }
                                    }
                                    return 1;
                                }
                            }
                        } else {
                            continue;
                        }
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* renamed from: a */
    private static int m7721a(byte[] bArr) {
        byte b = 0;
        for (int i = 0; i < 6; i++) {
            b += bArr[i];
        }
        return b;
    }

    /* renamed from: a */
    private static int m7720a(float[] fArr, int[] iArr, int i, byte[] bArr) {
        Arrays.fill(bArr, (byte) 0);
        int i2 = 0;
        while (true) {
            int i3 = i;
            if (i2 < 6) {
                iArr[i2] = (int) Math.ceil(fArr[i2]);
                int i4 = iArr[i2];
                i = i3;
                if (i3 > i4) {
                    Arrays.fill(bArr, (byte) 0);
                    i = i4;
                }
                if (i == i4) {
                    bArr[i2] = (byte) (bArr[i2] + 1);
                }
                i2++;
            } else {
                return i3;
            }
        }
    }

    /* renamed from: a */
    public static String m7722a(String str, EnumC16162l enumC16162l, C16149b c16149b, C16149b c16149b2) {
        int i;
        C16151a c16151a = new C16151a();
        C16153c c16153c = new C16153c();
        C16163m c16163m = new C16163m();
        C16164n c16164n = new C16164n();
        C16156f c16156f = new C16156f();
        C16152b c16152b = new C16152b();
        C16158h c16158h = new C16158h(str);
        c16158h.f57080b = enumC16162l;
        c16158h.f57081c = c16149b;
        c16158h.f57082d = c16149b2;
        if (!str.startsWith("[)>\u001e05\u001d") || !str.endsWith("\u001e\u0004")) {
            i = 0;
            if (str.startsWith("[)>\u001e06\u001d")) {
                i = 0;
                if (str.endsWith("\u001e\u0004")) {
                    c16158h.m7734a((char) 237);
                    c16158h.f57087i = 2;
                    c16158h.f57084f += 7;
                    i = 0;
                }
            }
        } else {
            c16158h.m7734a((char) 236);
            c16158h.f57087i = 2;
            c16158h.f57084f += 7;
            i = 0;
        }
        while (c16158h.m7731b()) {
            new AbstractC16157g[]{c16151a, c16153c, c16163m, c16164n, c16156f, c16152b}[i].mo7704a(c16158h);
            if (c16158h.f57085g >= 0) {
                i = c16158h.f57085g;
                c16158h.f57085g = -1;
            }
        }
        int length = c16158h.f57083e.length();
        c16158h.m7729d();
        int i2 = c16158h.f57086h.f57094b;
        if (length < i2 && i != 0 && i != 5 && i != 4) {
            c16158h.m7734a((char) 254);
        }
        StringBuilder sb = c16158h.f57083e;
        if (sb.length() < i2) {
            sb.append((char) 129);
        }
        while (sb.length() < i2) {
            int length2 = (((sb.length() + 1) * 149) % 253) + 1 + 129;
            if (length2 > 254) {
                length2 -= 254;
            }
            sb.append((char) length2);
        }
        return c16158h.f57083e.toString();
    }

    /* renamed from: a */
    public static boolean m7724a(char c) {
        return c >= '0' && c <= '9';
    }

    /* renamed from: b */
    public static boolean m7719b(char c) {
        return c >= 128 && c <= 255;
    }

    /* renamed from: c */
    public static void m7718c(char c) {
        String hexString;
        throw new IllegalArgumentException("Illegal character: " + c + " (0x" + ("0000".substring(0, 4 - hexString.length()) + Integer.toHexString(c)) + ')');
    }

    /* renamed from: d */
    private static boolean m7717d(char c) {
        if (m7716e(c) || c == ' ') {
            return true;
        }
        if (c >= '0' && c <= '9') {
            return true;
        }
        return c >= 'A' && c <= 'Z';
    }

    /* renamed from: e */
    private static boolean m7716e(char c) {
        return c == '\r' || c == '*' || c == '>';
    }
}
