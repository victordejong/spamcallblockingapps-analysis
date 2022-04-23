package com.google.zxing.b.a;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.zxing.b;
import java.util.Arrays;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/b/a/j.class */
public final class j {
    private j() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(CharSequence charSequence, int i, int i2) {
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
                int a2 = a(fArr, iArr, Integer.MAX_VALUE, bArr);
                int a3 = a(bArr);
                if (iArr[0] == a2) {
                    return 0;
                }
                if (a3 == 1 && bArr[5] > 0) {
                    return 5;
                }
                if (a3 == 1 && bArr[4] > 0) {
                    return 4;
                }
                if (a3 != 1 || bArr[2] <= 0) {
                    return (a3 != 1 || bArr[3] <= 0) ? 1 : 3;
                }
                return 2;
            }
            char charAt = charSequence.charAt(i4);
            int i5 = i3 + 1;
            if (a(charAt)) {
                fArr[0] = fArr[0] + 0.5f;
            } else if (b(charAt)) {
                fArr[0] = (float) Math.ceil(fArr[0]);
                fArr[0] = fArr[0] + 2.0f;
            } else {
                fArr[0] = (float) Math.ceil(fArr[0]);
                fArr[0] = fArr[0] + 1.0f;
            }
            if (charAt == ' ' || (charAt >= '0' && charAt <= '9') || (charAt >= 'A' && charAt <= 'Z')) {
                fArr[1] = fArr[1] + 0.6666667f;
            } else if (b(charAt)) {
                fArr[1] = fArr[1] + 2.6666667f;
            } else {
                fArr[1] = fArr[1] + 1.3333334f;
            }
            if (charAt == ' ' || (charAt >= '0' && charAt <= '9') || (charAt >= 'a' && charAt <= 'z')) {
                fArr[2] = fArr[2] + 0.6666667f;
            } else if (b(charAt)) {
                fArr[2] = fArr[2] + 2.6666667f;
            } else {
                fArr[2] = fArr[2] + 1.3333334f;
            }
            if (d(charAt)) {
                fArr[3] = fArr[3] + 0.6666667f;
            } else if (b(charAt)) {
                fArr[3] = fArr[3] + 4.3333335f;
            } else {
                fArr[3] = fArr[3] + 3.3333333f;
            }
            if (charAt >= ' ' && charAt <= '^') {
                fArr[4] = fArr[4] + 0.75f;
            } else if (b(charAt)) {
                fArr[4] = fArr[4] + 4.25f;
            } else {
                fArr[4] = fArr[4] + 3.25f;
            }
            fArr[5] = fArr[5] + 1.0f;
            i3 = i5;
            if (i5 >= 4) {
                int[] iArr2 = new int[6];
                byte[] bArr2 = new byte[6];
                a(fArr, iArr2, Integer.MAX_VALUE, bArr2);
                int a4 = a(bArr2);
                if (iArr2[0] < iArr2[5] && iArr2[0] < iArr2[1] && iArr2[0] < iArr2[2] && iArr2[0] < iArr2[3] && iArr2[0] < iArr2[4]) {
                    return 0;
                }
                if (iArr2[5] < iArr2[0] || bArr2[1] + bArr2[2] + bArr2[3] + bArr2[4] == 0) {
                    return 5;
                }
                if (a4 == 1 && bArr2[4] > 0) {
                    return 4;
                }
                if (a4 == 1 && bArr2[2] > 0) {
                    return 2;
                }
                if (a4 == 1 && bArr2[3] > 0) {
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
                                        if (e(charAt2)) {
                                            return 3;
                                        }
                                        if (!d(charAt2)) {
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

    private static int a(byte[] bArr) {
        int i = 0;
        for (int i2 = 0; i2 < 6; i2++) {
            i += bArr[i2];
        }
        return i;
    }

    private static int a(float[] fArr, int[] iArr, int i, byte[] bArr) {
        Arrays.fill(bArr, (byte) 0);
        for (int i2 = 0; i2 < 6; i2++) {
            iArr[i2] = (int) Math.ceil(fArr[i2]);
            int i3 = iArr[i2];
            i = i;
            if (i > i3) {
                Arrays.fill(bArr, (byte) 0);
                i = i3;
            }
            if (i == i3) {
                bArr[i2] = (byte) (bArr[i2] + 1);
            }
        }
        return i;
    }

    public static String a(String str, l lVar, b bVar, b bVar2) {
        int i;
        a aVar = new a();
        c cVar = new c();
        m mVar = new m();
        n nVar = new n();
        f fVar = new f();
        b bVar3 = new b();
        h hVar = new h(str);
        hVar.f32926b = lVar;
        hVar.f32927c = bVar;
        hVar.f32928d = bVar2;
        if (!str.startsWith("[)>\u001e05\u001d") || !str.endsWith("\u001e\u0004")) {
            i = 0;
            if (str.startsWith("[)>\u001e06\u001d")) {
                i = 0;
                if (str.endsWith("\u001e\u0004")) {
                    hVar.a((char) 237);
                    hVar.i = 2;
                    hVar.f += 7;
                    i = 0;
                }
            }
        } else {
            hVar.a((char) 236);
            hVar.i = 2;
            hVar.f += 7;
            i = 0;
        }
        while (hVar.b()) {
            new g[]{aVar, cVar, mVar, nVar, fVar, bVar3}[i].a(hVar);
            if (hVar.g >= 0) {
                i = hVar.g;
                hVar.g = -1;
            }
        }
        int length = hVar.e.length();
        hVar.d();
        int i2 = hVar.h.f32934b;
        if (!(length >= i2 || i == 0 || i == 5 || i == 4)) {
            hVar.a((char) 254);
        }
        StringBuilder sb = hVar.e;
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
        return hVar.e.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(char c2) {
        return c2 >= '0' && c2 <= '9';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(char c2) {
        return c2 >= 128 && c2 <= 255;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(char c2) {
        String hexString;
        throw new IllegalArgumentException("Illegal character: " + c2 + " (0x" + ("0000".substring(0, 4 - hexString.length()) + Integer.toHexString(c2)) + ')');
    }

    private static boolean d(char c2) {
        if (e(c2) || c2 == ' ') {
            return true;
        }
        if (c2 < '0' || c2 > '9') {
            return c2 >= 'A' && c2 <= 'Z';
        }
        return true;
    }

    private static boolean e(char c2) {
        return c2 == '\r' || c2 == '*' || c2 == '>';
    }
}
