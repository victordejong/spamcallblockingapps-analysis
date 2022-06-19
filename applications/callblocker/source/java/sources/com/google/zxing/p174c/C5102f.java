package com.google.zxing.p174c;

import com.google.zxing.EnumC5069a;
import com.google.zxing.EnumC5095c;
import com.google.zxing.common.C5117b;
import java.util.Map;
/* renamed from: com.google.zxing.c.f */
/* loaded from: classes-dex2jar.jar:com/google/zxing/c/f.class */
public final class C5102f extends AbstractC5110n {
    /* renamed from: a */
    private static void m1487a(int i, int[] iArr) {
        for (int i2 = 0; i2 < 9; i2++) {
            iArr[i2] = ((1 << (8 - i2)) & i) == 0 ? 1 : 2;
        }
    }

    /* renamed from: b */
    private static String m1486b(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            switch (charAt) {
                case 0:
                    sb.append("%U");
                    break;
                case ' ':
                case '-':
                case '.':
                    sb.append(charAt);
                    break;
                case '@':
                    sb.append("%V");
                    break;
                case '`':
                    sb.append("%W");
                    break;
                default:
                    if (charAt > 26) {
                        if (charAt >= ' ') {
                            if (charAt > ',' && charAt != '/' && charAt != ':') {
                                if (charAt > '9') {
                                    if (charAt > '?') {
                                        if (charAt > 'Z') {
                                            if (charAt > '_') {
                                                if (charAt > 'z') {
                                                    if (charAt <= 127) {
                                                        sb.append('%');
                                                        sb.append((char) ((charAt - '{') + 80));
                                                        break;
                                                    } else {
                                                        throw new IllegalArgumentException("Requested content contains a non-encodable character: '" + str.charAt(i) + "'");
                                                    }
                                                } else {
                                                    sb.append('+');
                                                    sb.append((char) ((charAt - 'a') + 65));
                                                    break;
                                                }
                                            } else {
                                                sb.append('%');
                                                sb.append((char) ((charAt - '[') + 75));
                                                break;
                                            }
                                        } else {
                                            sb.append((char) ((charAt - 'A') + 65));
                                            break;
                                        }
                                    } else {
                                        sb.append('%');
                                        sb.append((char) ((charAt - ';') + 70));
                                        break;
                                    }
                                } else {
                                    sb.append((char) ((charAt - '0') + 48));
                                    break;
                                }
                            } else {
                                sb.append('/');
                                sb.append((char) ((charAt - '!') + 65));
                                break;
                            }
                        } else {
                            sb.append('%');
                            sb.append((char) ((charAt - 27) + 65));
                            break;
                        }
                    } else {
                        sb.append('$');
                        sb.append((char) ((charAt - 1) + 65));
                        break;
                    }
                    break;
            }
        }
        return sb.toString();
    }

    @Override // com.google.zxing.p174c.AbstractC5110n, com.google.zxing.AbstractC5133e
    /* renamed from: a */
    public C5117b mo1394a(String str, EnumC5069a enumC5069a, int i, int i2, Map<EnumC5095c, ?> map) {
        if (enumC5069a != EnumC5069a.CODE_39) {
            throw new IllegalArgumentException("Can only encode CODE_39, but got ".concat(String.valueOf(enumC5069a)));
        }
        return super.mo1394a(str, enumC5069a, i, i2, map);
    }

    @Override // com.google.zxing.p174c.AbstractC5110n
    /* renamed from: a */
    public boolean[] mo1476a(String str) {
        int i;
        String str2;
        int length = str.length();
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
        }
        int i2 = 0;
        while (true) {
            i = length;
            str2 = str;
            if (i2 >= length) {
                break;
            } else if ("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str.charAt(i2)) < 0) {
                str2 = m1486b(str);
                int length2 = str2.length();
                i = length2;
                if (length2 > 80) {
                    throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + length2 + " (extended full ASCII mode)");
                }
            } else {
                i2++;
            }
        }
        int[] iArr = new int[9];
        int i3 = i + 25;
        for (int i4 = 0; i4 < i; i4++) {
            m1487a(C5101e.f21584a["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str2.charAt(i4))], iArr);
            for (int i5 = 0; i5 < 9; i5++) {
                i3 += iArr[i5];
            }
        }
        boolean[] zArr = new boolean[i3];
        m1487a(148, iArr);
        int a = m1481a(zArr, 0, iArr, true);
        int[] iArr2 = {1};
        int a2 = m1481a(zArr, a, iArr2, false) + a;
        for (int i6 = 0; i6 < i; i6++) {
            m1487a(C5101e.f21584a["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str2.charAt(i6))], iArr);
            int a3 = a2 + m1481a(zArr, a2, iArr, true);
            a2 = a3 + m1481a(zArr, a3, iArr2, false);
        }
        m1487a(148, iArr);
        m1481a(zArr, a2, iArr, true);
        return zArr;
    }
}
