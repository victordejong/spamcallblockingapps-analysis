package com.google.zxing.p409d.p410a;

import com.explorestack.iab.vast.VastError;
import com.google.zxing.WriterException;
import com.google.zxing.common.EnumC16192c;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
/* renamed from: com.google.zxing.d.a.g */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/d/a/g.class */
final class C16205g {

    /* renamed from: c */
    private static final byte[] f57203c;

    /* renamed from: a */
    private static final byte[] f57201a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 38, 13, 9, 44, 58, 35, 45, 46, 36, 47, 43, 37, 42, 61, 94, 0, 32, 0, 0, 0};

    /* renamed from: b */
    private static final byte[] f57202b = {59, 60, 62, 64, 91, 92, 93, 95, 96, 126, 33, 13, 9, 44, 58, 10, 45, 46, 36, 47, 34, 124, 42, 40, 41, 63, 123, 125, 39, 0};

    /* renamed from: d */
    private static final byte[] f57204d = new byte[128];

    /* renamed from: e */
    private static final Charset f57205e = StandardCharsets.ISO_8859_1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.zxing.d.a.g$1 */
    /* loaded from: classes4-dex2jar.jar:com/google/zxing/d/a/g$1.class */
    public static final /* synthetic */ class C162061 {

        /* renamed from: a */
        static final /* synthetic */ int[] f57206a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC16201c.values().length];
            f57206a = iArr;
            try {
                iArr[EnumC16201c.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f57206a[EnumC16201c.BYTE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f57206a[EnumC16201c.NUMERIC.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    static {
        byte[] bArr = new byte[128];
        f57203c = bArr;
        Arrays.fill(bArr, (byte) -1);
        int i = 0;
        while (true) {
            byte[] bArr2 = f57201a;
            if (i >= bArr2.length) {
                break;
            }
            byte b = bArr2[i];
            if (b > 0) {
                f57203c[b] = (byte) i;
            }
            i++;
        }
        Arrays.fill(f57204d, (byte) -1);
        int i2 = 0;
        while (true) {
            byte[] bArr3 = f57202b;
            if (i2 < bArr3.length) {
                byte b2 = bArr3[i2];
                if (b2 > 0) {
                    f57204d[b2] = (byte) i2;
                }
                i2++;
            } else {
                return;
            }
        }
    }

    private C16205g() {
    }

    /* renamed from: a */
    private static int m7654a(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        if (i < length) {
            int i3 = i;
            char charAt = charSequence.charAt(i);
            int i4 = 0;
            while (true) {
                i2 = i4;
                if (!m7655a(charAt)) {
                    break;
                }
                i2 = i4;
                if (i3 >= length) {
                    break;
                }
                int i5 = i4 + 1;
                int i6 = i3 + 1;
                i4 = i5;
                i3 = i6;
                if (i6 < length) {
                    i4 = i5;
                    charAt = charSequence.charAt(i6);
                    i3 = i6;
                }
            }
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x000d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01bc A[EDGE_INSN: B:99:0x01bc->B:59:0x01bc ?: BREAK  , SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m7653a(java.lang.CharSequence r4, int r5, int r6, java.lang.StringBuilder r7, int r8) {
        /*
            Method dump skipped, instructions count: 544
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.p409d.p410a.C16205g.m7653a(java.lang.CharSequence, int, int, java.lang.StringBuilder, int):int");
    }

    /* renamed from: a */
    private static int m7651a(String str, int i, Charset charset) throws WriterException {
        int i2;
        CharsetEncoder newEncoder = charset.newEncoder();
        int length = str.length();
        int i3 = i;
        while (i3 < length) {
            char charAt = str.charAt(i3);
            int i4 = 0;
            while (true) {
                char c = charAt;
                i2 = i4;
                if (i4 >= 13) {
                    break;
                }
                i2 = i4;
                if (!m7655a(c)) {
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
            if (!newEncoder.canEncode(charAt2)) {
                throw new WriterException("Non-encodable character detected: " + charAt2 + " (Unicode: " + ((int) charAt2) + ')');
            }
            i3++;
        }
        return i3 - i;
    }

    /* renamed from: a */
    public static String m7650a(String str, EnumC16201c enumC16201c, Charset charset) throws WriterException {
        Charset charset2;
        int m7654a;
        StringBuilder sb = new StringBuilder(str.length());
        if (charset == null) {
            charset2 = f57205e;
        } else {
            charset2 = charset;
            if (!f57205e.equals(charset)) {
                EnumC16192c characterSetECIByName = EnumC16192c.getCharacterSetECIByName(charset.name());
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
                    } else if (value >= 811800) {
                        throw new WriterException("ECI number not in valid range from 0..811799, but was ".concat(String.valueOf(value)));
                    } else {
                        sb.append((char) 925);
                        sb.append((char) (810900 - value));
                        charset2 = charset;
                    }
                }
            }
        }
        int length = str.length();
        int i = C162061.f57206a[enumC16201c.ordinal()];
        if (i == 1) {
            m7653a(str, 0, length, sb, 0);
        } else if (i == 2) {
            byte[] bytes = str.getBytes(charset2);
            m7649a(bytes, bytes.length, 1, sb);
        } else if (i != 3) {
            int i2 = 0;
            int i3 = 0;
            loop0: while (true) {
                int i4 = i3;
                int i5 = 0;
                while (i2 < length) {
                    m7654a = m7654a(str, i2);
                    if (m7654a >= 13) {
                        break;
                    }
                    int m7647b = m7647b(str, i2);
                    if (m7647b >= 5 || m7654a == length) {
                        int i6 = i4;
                        if (i4 != 0) {
                            sb.append((char) 900);
                            i6 = 0;
                            i5 = 0;
                        }
                        i5 = m7653a(str, i2, m7647b, sb, i5);
                        i2 += m7647b;
                        i4 = i6;
                    } else {
                        int m7651a = m7651a(str, i2, charset2);
                        int i7 = m7651a;
                        if (m7651a == 0) {
                            i7 = 1;
                        }
                        int i8 = i7 + i2;
                        byte[] bytes2 = str.substring(i2, i8).getBytes(charset2);
                        if (bytes2.length == 1 && i4 == 0) {
                            m7649a(bytes2, 1, 0, sb);
                        } else {
                            m7649a(bytes2, bytes2.length, i4, sb);
                            i4 = 1;
                            i5 = 0;
                        }
                        i2 = i8;
                    }
                }
                sb.append((char) 902);
                m7652a(str, i2, m7654a, sb);
                i2 += m7654a;
                i3 = 2;
            }
        } else {
            sb.append((char) 902);
            m7652a(str, 0, length, sb);
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static void m7652a(String str, int i, int i2, StringBuilder sb) {
        BigInteger divide;
        StringBuilder sb2 = new StringBuilder((i2 / 3) + 1);
        BigInteger valueOf = BigInteger.valueOf(900L);
        BigInteger valueOf2 = BigInteger.valueOf(0L);
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 < i2) {
                sb2.setLength(0);
                int min = Math.min(44, i2 - i4);
                StringBuilder sb3 = new StringBuilder("1");
                int i5 = i + i4;
                sb3.append(str.substring(i5, i5 + min));
                BigInteger bigInteger = new BigInteger(sb3.toString());
                do {
                    sb2.append((char) bigInteger.mod(valueOf).intValue());
                    divide = bigInteger.divide(valueOf);
                    bigInteger = divide;
                } while (!divide.equals(valueOf2));
                for (int length = sb2.length() - 1; length >= 0; length--) {
                    sb.append(sb2.charAt(length));
                }
                i3 = i4 + min;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* renamed from: a */
    private static void m7649a(byte[] bArr, int i, int i2, StringBuilder sb) {
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
                char c = 0;
                for (int i5 = 0; i5 < 6; i5++) {
                    c = (c << '\b') + (bArr[i4 + i5] & 255);
                }
                for (int i6 = 0; i6 < 5; i6++) {
                    cArr[i6] = (char) (c % 900);
                    c /= 900;
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

    /* renamed from: a */
    private static boolean m7655a(char c) {
        return c >= '0' && c <= '9';
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b3, code lost:
        if (r0 <= '~') goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c8 A[EDGE_INSN: B:40:0x00c8->B:35:0x00c8 ?: BREAK  , SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m7647b(java.lang.CharSequence r3, int r4) {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.p409d.p410a.C16205g.m7647b(java.lang.CharSequence, int):int");
    }

    /* renamed from: b */
    private static boolean m7648b(char c) {
        if (c != ' ') {
            return c >= 'A' && c <= 'Z';
        }
        return true;
    }

    /* renamed from: c */
    private static boolean m7646c(char c) {
        if (c != ' ') {
            return c >= 'a' && c <= 'z';
        }
        return true;
    }

    /* renamed from: d */
    private static boolean m7645d(char c) {
        return f57203c[c] != -1;
    }

    /* renamed from: e */
    private static boolean m7644e(char c) {
        return f57204d[c] != -1;
    }
}
