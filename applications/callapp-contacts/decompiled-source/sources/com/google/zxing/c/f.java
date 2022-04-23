package com.google.zxing.c;

import com.google.zxing.WriterException;
import com.google.zxing.a;
import com.google.zxing.c;
import com.google.zxing.common.b;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/c/f.class */
public final class f extends o {
    private static void a(int i, int[] iArr) {
        for (int i2 = 0; i2 < 9; i2++) {
            int i3 = 1;
            if (((1 << (8 - i2)) & i) != 0) {
                i3 = 2;
            }
            iArr[i2] = i3;
        }
    }

    private static String b(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt != 0) {
                if (charAt != ' ') {
                    if (charAt == '@') {
                        sb.append("%V");
                    } else if (charAt == '`') {
                        sb.append("%W");
                    } else if (!(charAt == '-' || charAt == '.')) {
                        if (charAt <= 26) {
                            sb.append('$');
                            sb.append((char) ((charAt - 1) + 65));
                        } else if (charAt < ' ') {
                            sb.append('%');
                            sb.append((char) ((charAt - 27) + 65));
                        } else if (charAt <= ',' || charAt == '/' || charAt == ':') {
                            sb.append('/');
                            sb.append((char) ((charAt - '!') + 65));
                        } else if (charAt <= '9') {
                            sb.append((char) ((charAt - '0') + 48));
                        } else if (charAt <= '?') {
                            sb.append('%');
                            sb.append((char) ((charAt - ';') + 70));
                        } else if (charAt <= 'Z') {
                            sb.append((char) ((charAt - 'A') + 65));
                        } else if (charAt <= '_') {
                            sb.append('%');
                            sb.append((char) ((charAt - '[') + 75));
                        } else if (charAt <= 'z') {
                            sb.append('+');
                            sb.append((char) ((charAt - 'a') + 65));
                        } else if (charAt <= 127) {
                            sb.append('%');
                            sb.append((char) ((charAt - '{') + 80));
                        } else {
                            throw new IllegalArgumentException("Requested content contains a non-encodable character: '" + str.charAt(i) + "'");
                        }
                    }
                }
                sb.append(charAt);
            } else {
                sb.append("%U");
            }
        }
        return sb.toString();
    }

    @Override // com.google.zxing.c.o, com.google.zxing.e
    public final b a(String str, a aVar, int i, int i2, Map<c, ?> map) throws WriterException {
        if (aVar == a.CODE_39) {
            return super.a(str, aVar, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_39, but got ".concat(String.valueOf(aVar)));
    }

    @Override // com.google.zxing.c.o
    public final boolean[] a(String str) {
        int i;
        String str2;
        int length = str.length();
        if (length <= 80) {
            int i2 = 0;
            while (true) {
                i = length;
                str2 = str;
                if (i2 >= length) {
                    break;
                } else if ("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str.charAt(i2)) < 0) {
                    str2 = b(str);
                    i = str2.length();
                    if (i > 80) {
                        throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + i + " (extended full ASCII mode)");
                    }
                } else {
                    i2++;
                }
            }
            int[] iArr = new int[9];
            int i3 = i + 25;
            for (int i4 = 0; i4 < i; i4++) {
                a(e.f32950a["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str2.charAt(i4))], iArr);
                for (int i5 = 0; i5 < 9; i5++) {
                    i3 += iArr[i5];
                }
            }
            boolean[] zArr = new boolean[i3];
            a(148, iArr);
            int a2 = a(zArr, 0, iArr, true);
            int[] iArr2 = {1};
            int a3 = a2 + a(zArr, a2, iArr2, false);
            for (int i6 = 0; i6 < i; i6++) {
                a(e.f32950a["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str2.charAt(i6))], iArr);
                int a4 = a3 + a(zArr, a3, iArr, true);
                a3 = a4 + a(zArr, a4, iArr2, false);
            }
            a(148, iArr);
            a(zArr, a3, iArr, true);
            return zArr;
        }
        throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
    }
}
