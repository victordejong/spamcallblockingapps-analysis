package com.google.zxing.d.a;

import com.explorestack.iab.vast.VastError;
import com.google.zxing.WriterException;
import com.google.zxing.common.c;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/d/a/g.class */
final class g {

    /* renamed from: c  reason: collision with root package name */
    private static final byte[] f33010c;

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f33008a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 38, 13, 9, 44, 58, 35, 45, 46, 36, 47, 43, 37, 42, 61, 94, 0, 32, 0, 0, 0};

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f33009b = {59, 60, 62, 64, 91, 92, 93, 95, 96, 126, 33, 13, 9, 44, 58, 10, 45, 46, 36, 47, 34, 124, 42, 40, 41, 63, 123, 125, 39, 0};

    /* renamed from: d  reason: collision with root package name */
    private static final byte[] f33011d = new byte[128];
    private static final Charset e = StandardCharsets.ISO_8859_1;

    /* renamed from: com.google.zxing.d.a.g$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/google/zxing/d/a/g$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f33012a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[c.values().length];
            f33012a = iArr;
            try {
                iArr[c.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f33012a[c.BYTE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f33012a[c.NUMERIC.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    static {
        byte[] bArr = new byte[128];
        f33010c = bArr;
        Arrays.fill(bArr, (byte) -1);
        int i = 0;
        int i2 = 0;
        while (true) {
            byte[] bArr2 = f33008a;
            if (i2 >= bArr2.length) {
                break;
            }
            byte b2 = bArr2[i2];
            if (b2 > 0) {
                f33010c[b2] = (byte) i2;
            }
            i2++;
        }
        Arrays.fill(f33011d, (byte) -1);
        while (true) {
            byte[] bArr3 = f33009b;
            if (i < bArr3.length) {
                byte b3 = bArr3[i];
                if (b3 > 0) {
                    f33011d[b3] = (byte) i;
                }
                i++;
            } else {
                return;
            }
        }
    }

    private g() {
    }

    private static int a(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        int i3 = 0;
        if (i < length) {
            char charAt = charSequence.charAt(i);
            int i4 = i;
            while (true) {
                i2 = i3;
                if (!a(charAt)) {
                    break;
                }
                i2 = i3;
                if (i4 >= length) {
                    break;
                }
                int i5 = i3 + 1;
                int i6 = i4 + 1;
                i3 = i5;
                i4 = i6;
                if (i6 < length) {
                    charAt = charSequence.charAt(i6);
                    i3 = i5;
                    i4 = i6;
                }
            }
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x000d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01bc A[EDGE_INSN: B:99:0x01bc->B:59:0x01bc ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int a(java.lang.CharSequence r4, int r5, int r6, java.lang.StringBuilder r7, int r8) {
        /*
            Method dump skipped, instructions count: 544
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.d.a.g.a(java.lang.CharSequence, int, int, java.lang.StringBuilder, int):int");
    }

    private static int a(String str, int i, Charset charset) throws WriterException {
        int i2;
        CharsetEncoder newEncoder = charset.newEncoder();
        int length = str.length();
        int i3 = i;
        while (i3 < length) {
            char charAt = str.charAt(i3);
            int i4 = 0;
            while (true) {
                i2 = i4;
                if (i4 >= 13) {
                    break;
                }
                i2 = i4;
                if (!a(charAt)) {
                    break;
                }
                i4++;
                int i5 = i3 + i4;
                i2 = i4;
                if (i5 >= length) {
                    break;
                }
                charAt = str.charAt(i5);
            }
            if (i2 >= 13) {
                return i3 - i;
            }
            char charAt2 = str.charAt(i3);
            if (newEncoder.canEncode(charAt2)) {
                i3++;
            } else {
                throw new WriterException("Non-encodable character detected: " + charAt2 + " (Unicode: " + ((int) charAt2) + ')');
            }
        }
        return i3 - i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str, c cVar, Charset charset) throws WriterException {
        Charset charset2;
        int a2;
        StringBuilder sb = new StringBuilder(str.length());
        if (charset == null) {
            charset2 = e;
        } else {
            charset2 = charset;
            if (!e.equals(charset)) {
                c characterSetECIByName = c.getCharacterSetECIByName(charset.name());
                charset2 = charset;
                if (characterSetECIByName != null) {
                    int value = characterSetECIByName.getValue();
                    if (value >= 0 && value < 900) {
                        sb.append((char) 927);
                        sb.append((char) value);
                        charset2 = charset;
                    } else if (value < 810900) {
                        sb.append((char) 926);
                        sb.append((char) ((value / VastError.ERROR_CODE_UNKNOWN) - 1));
                        sb.append((char) (value % VastError.ERROR_CODE_UNKNOWN));
                        charset2 = charset;
                    } else if (value < 811800) {
                        sb.append((char) 925);
                        sb.append((char) (810900 - value));
                        charset2 = charset;
                    } else {
                        throw new WriterException("ECI number not in valid range from 0..811799, but was ".concat(String.valueOf(value)));
                    }
                }
            }
        }
        int length = str.length();
        int i = AnonymousClass1.f33012a[cVar.ordinal()];
        if (i == 1) {
            a(str, 0, length, sb, 0);
        } else if (i == 2) {
            byte[] bytes = str.getBytes(charset2);
            a(bytes, bytes.length, 1, sb);
        } else if (i != 3) {
            int i2 = 0;
            int i3 = 0;
            loop0: while (true) {
                int i4 = 0;
                while (i2 < length) {
                    a2 = a(str, i2);
                    if (a2 >= 13) {
                        break;
                    }
                    int b2 = b(str, i2);
                    if (b2 >= 5 || a2 == length) {
                        i3 = i3;
                        if (i3 != 0) {
                            sb.append((char) 900);
                            i3 = 0;
                            i4 = 0;
                        }
                        i4 = a(str, i2, b2, sb, i4);
                        i2 += b2;
                    } else {
                        int a3 = a(str, i2, charset2);
                        int i5 = a3;
                        if (a3 == 0) {
                            i5 = 1;
                        }
                        int i6 = i5 + i2;
                        byte[] bytes2 = str.substring(i2, i6).getBytes(charset2);
                        if (bytes2.length == 1 && i3 == 0) {
                            a(bytes2, 1, 0, sb);
                        } else {
                            a(bytes2, bytes2.length, i3, sb);
                            i3 = 1;
                            i4 = 0;
                        }
                        i2 = i6;
                    }
                }
                sb.append((char) 902);
                a(str, i2, a2, sb);
                i2 += a2;
                i3 = 2;
            }
        } else {
            sb.append((char) 902);
            a(str, 0, length, sb);
        }
        return sb.toString();
    }

    private static void a(String str, int i, int i2, StringBuilder sb) {
        BigInteger divide;
        StringBuilder sb2 = new StringBuilder((i2 / 3) + 1);
        BigInteger valueOf = BigInteger.valueOf(900L);
        BigInteger valueOf2 = BigInteger.valueOf(0L);
        int i3 = 0;
        while (i3 < i2) {
            sb2.setLength(0);
            int min = Math.min(44, i2 - i3);
            StringBuilder sb3 = new StringBuilder("1");
            int i4 = i + i3;
            sb3.append(str.substring(i4, i4 + min));
            BigInteger bigInteger = new BigInteger(sb3.toString());
            do {
                sb2.append((char) bigInteger.mod(valueOf).intValue());
                divide = bigInteger.divide(valueOf);
                bigInteger = divide;
            } while (!divide.equals(valueOf2));
            for (int length = sb2.length() - 1; length >= 0; length--) {
                sb.append(sb2.charAt(length));
            }
            i3 += min;
        }
    }

    private static void a(byte[] bArr, int i, int i2, StringBuilder sb) {
        int i3;
        if (i == 1 && i2 == 0) {
            sb.append((char) 913);
        } else if (i % 6 == 0) {
            sb.append((char) 924);
        } else {
            sb.append((char) 901);
        }
        if (i >= 6) {
            char[] cArr = new char[5];
            int i4 = 0;
            while (true) {
                i3 = i4;
                if ((i + 0) - i4 < 6) {
                    break;
                }
                long j = 0;
                for (int i5 = 0; i5 < 6; i5++) {
                    j = (j << 8) + (bArr[i4 + i5] & 255);
                }
                for (int i6 = 0; i6 < 5; i6++) {
                    cArr[i6] = (char) (j % 900);
                    j /= 900;
                }
                for (int i7 = 4; i7 >= 0; i7--) {
                    sb.append(cArr[i7]);
                }
                i4 += 6;
            }
        } else {
            i3 = 0;
        }
        while (i3 < i + 0) {
            sb.append((char) (bArr[i3] & 255));
            i3++;
        }
    }

    private static boolean a(char c2) {
        return c2 >= '0' && c2 <= '9';
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b3, code lost:
        if (r0 <= '~') goto L_0x00b6;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c8 A[EDGE_INSN: B:40:0x00c8->B:35:0x00c8 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int b(java.lang.CharSequence r3, int r4) {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.d.a.g.b(java.lang.CharSequence, int):int");
    }

    private static boolean b(char c2) {
        if (c2 != ' ') {
            return c2 >= 'A' && c2 <= 'Z';
        }
        return true;
    }

    private static boolean c(char c2) {
        if (c2 != ' ') {
            return c2 >= 'a' && c2 <= 'z';
        }
        return true;
    }

    private static boolean d(char c2) {
        return f33010c[c2] != -1;
    }

    private static boolean e(char c2) {
        return f33011d[c2] != -1;
    }
}
