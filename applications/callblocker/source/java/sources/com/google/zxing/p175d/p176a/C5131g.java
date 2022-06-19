package com.google.zxing.p175d.p176a;

import com.google.zxing.WriterException;
import com.google.zxing.common.EnumC5118c;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
/* renamed from: com.google.zxing.d.a.g */
/* loaded from: classes-dex2jar.jar:com/google/zxing/d/a/g.class */
final class C5131g {

    /* renamed from: a */
    private static final byte[] f21683a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 38, 13, 9, 44, 58, 35, 45, 46, 36, 47, 43, 37, 42, 61, 94, 0, 32, 0, 0, 0};

    /* renamed from: b */
    private static final byte[] f21684b = {59, 60, 62, 64, 91, 92, 93, 95, 96, 126, 33, 13, 9, 44, 58, 10, 45, 46, 36, 47, 34, 124, 42, 40, 41, 63, 123, 125, 39, 0};

    /* renamed from: c */
    private static final byte[] f21685c = new byte[128];

    /* renamed from: d */
    private static final byte[] f21686d = new byte[128];

    /* renamed from: e */
    private static final Charset f21687e = StandardCharsets.ISO_8859_1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.zxing.d.a.g$1 */
    /* loaded from: classes-dex2jar.jar:com/google/zxing/d/a/g$1.class */
    public static /* synthetic */ class C51321 {

        /* renamed from: a */
        static final /* synthetic */ int[] f21688a = new int[EnumC5127c.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:14:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0033 -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f21688a[EnumC5127c.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f21688a[EnumC5127c.BYTE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f21688a[EnumC5127c.NUMERIC.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    static {
        Arrays.fill(f21685c, (byte) -1);
        for (int i = 0; i < f21683a.length; i++) {
            byte b = f21683a[i];
            if (b > 0) {
                f21685c[b] = (byte) i;
            }
        }
        Arrays.fill(f21686d, (byte) -1);
        for (int i2 = 0; i2 < f21684b.length; i2++) {
            byte b2 = f21684b[i2];
            if (b2 > 0) {
                f21686d[b2] = (byte) i2;
            }
        }
    }

    /* renamed from: a */
    private static int m1407a(CharSequence charSequence, int i) {
        int i2 = 0;
        int length = charSequence.length();
        if (i < length) {
            char charAt = charSequence.charAt(i);
            int i3 = i;
            int i4 = 0;
            char c = charAt;
            while (true) {
                i2 = i4;
                if (!m1409a(c)) {
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
                    c = charSequence.charAt(i6);
                    i4 = i5;
                    i3 = i6;
                }
            }
        }
        return i2;
    }

    /* renamed from: a */
    private static int m1406a(CharSequence charSequence, int i, int i2, StringBuilder sb, int i3) {
        char charAt;
        StringBuilder sb2 = new StringBuilder(i2);
        int i4 = 0;
        while (true) {
            char charAt2 = charSequence.charAt(i + i4);
            switch (i3) {
                case 0:
                    if (m1401b(charAt2)) {
                        if (charAt2 == ' ') {
                            sb2.append((char) 26);
                            break;
                        } else {
                            sb2.append((char) (charAt2 - 'A'));
                            break;
                        }
                    } else if (m1399c(charAt2)) {
                        sb2.append((char) 27);
                        i3 = 1;
                        continue;
                    } else if (!m1398d(charAt2)) {
                        sb2.append((char) 29);
                        sb2.append((char) f21686d[charAt2]);
                        break;
                    } else {
                        i3 = 2;
                        sb2.append((char) 28);
                    }
                case 1:
                    if (m1399c(charAt2)) {
                        if (charAt2 == ' ') {
                            sb2.append((char) 26);
                            break;
                        } else {
                            sb2.append((char) (charAt2 - 'a'));
                            break;
                        }
                    } else if (m1401b(charAt2)) {
                        sb2.append((char) 27);
                        sb2.append((char) (charAt2 - 'A'));
                        break;
                    } else if (!m1398d(charAt2)) {
                        sb2.append((char) 29);
                        sb2.append((char) f21686d[charAt2]);
                        break;
                    } else {
                        i3 = 2;
                        sb2.append((char) 28);
                        continue;
                    }
                case 2:
                    if (m1398d(charAt2)) {
                        sb2.append((char) f21685c[charAt2]);
                        break;
                    } else if (m1401b(charAt2)) {
                        sb2.append((char) 28);
                        i3 = 0;
                        continue;
                    } else if (m1399c(charAt2)) {
                        sb2.append((char) 27);
                        i3 = 1;
                    } else if (i + i4 + 1 >= i2 || !m1397e(charSequence.charAt(i + i4 + 1))) {
                        sb2.append((char) 29);
                        sb2.append((char) f21686d[charAt2]);
                        break;
                    } else {
                        i3 = 3;
                        sb2.append((char) 25);
                    }
                    break;
                default:
                    if (m1397e(charAt2)) {
                        sb2.append((char) f21686d[charAt2]);
                        break;
                    } else {
                        sb2.append((char) 29);
                        i3 = 0;
                        continue;
                    }
            }
            int i5 = i4 + 1;
            i4 = i5;
            if (i5 >= i2) {
                int length = sb2.length();
                char c = 0;
                for (int i6 = 0; i6 < length; i6++) {
                    if (i6 % 2 != 0) {
                        char charAt3 = (char) ((c * 30) + sb2.charAt(i6));
                        sb.append(charAt3);
                        charAt = charAt3;
                    } else {
                        charAt = sb2.charAt(i6);
                    }
                    c = charAt;
                }
                if (length % 2 != 0) {
                    sb.append((char) ((c * 30) + 29));
                }
                return i3;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0069, code lost:
        return r7;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m1404a(java.lang.String r6, int r7, java.nio.charset.Charset r8) {
        /*
            r0 = r8
            java.nio.charset.CharsetEncoder r0 = r0.newEncoder()
            r8 = r0
            r0 = r6
            int r0 = r0.length()
            r9 = r0
            r0 = r7
            r10 = r0
        Ld:
            r0 = r10
            r1 = r9
            if (r0 >= r1) goto La9
            r0 = r6
            r1 = r10
            char r0 = r0.charAt(r1)
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = r11
            r13 = r0
        L22:
            r0 = r12
            r11 = r0
            r0 = r12
            r1 = 13
            if (r0 >= r1) goto L5c
            r0 = r12
            r11 = r0
            r0 = r13
            boolean r0 = m1409a(r0)
            if (r0 == 0) goto L5c
            int r12 = r12 + 1
            r0 = r10
            r1 = r12
            int r0 = r0 + r1
            r14 = r0
            r0 = r12
            r11 = r0
            r0 = r14
            r1 = r9
            if (r0 >= r1) goto L5c
            r0 = r6
            r1 = r14
            char r0 = r0.charAt(r1)
            r11 = r0
            r0 = r11
            r13 = r0
            goto L22
        L5c:
            r0 = r11
            r1 = 13
            if (r0 < r1) goto L6a
            r0 = r10
            r1 = r7
            int r0 = r0 - r1
            r7 = r0
        L68:
            r0 = r7
            return r0
        L6a:
            r0 = r6
            r1 = r10
            char r0 = r0.charAt(r1)
            r13 = r0
            r0 = r8
            r1 = r13
            boolean r0 = r0.canEncode(r1)
            if (r0 != 0) goto La3
            com.google.zxing.WriterException r0 = new com.google.zxing.WriterException
            r1 = r0
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r3 = r2
            java.lang.String r4 = "Non-encodable character detected: "
            r3.<init>(r4)
            r3 = r13
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = " (Unicode: "
            java.lang.StringBuilder r2 = r2.append(r3)
            r3 = r13
            java.lang.StringBuilder r2 = r2.append(r3)
            r3 = 41
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        La3:
            int r10 = r10 + 1
            goto Ld
        La9:
            r0 = r10
            r1 = r7
            int r0 = r0 - r1
            r7 = r0
            goto L68
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.p175d.p176a.C5131g.m1404a(java.lang.String, int, java.nio.charset.Charset):int");
    }

    /* renamed from: a */
    public static String m1403a(String str, EnumC5127c enumC5127c, Charset charset) {
        Charset charset2;
        StringBuilder sb = new StringBuilder(str.length());
        if (charset == null) {
            charset2 = f21687e;
        } else {
            charset2 = charset;
            if (!f21687e.equals(charset)) {
                EnumC5118c m1454a = EnumC5118c.m1454a(charset.name());
                charset2 = charset;
                if (m1454a != null) {
                    m1408a(m1454a.m1455a(), sb);
                    charset2 = charset;
                }
            }
        }
        int length = str.length();
        switch (C51321.f21688a[enumC5127c.ordinal()]) {
            case 1:
                m1406a(str, 0, length, sb, 0);
                break;
            case 2:
                byte[] bytes = str.getBytes(charset2);
                m1402a(bytes, 0, bytes.length, 1, sb);
                break;
            case 3:
                sb.append((char) 902);
                m1405a(str, 0, length, sb);
                break;
            default:
                int i = 0;
                int i2 = 0;
                int i3 = 0;
                while (i3 < length) {
                    int m1407a = m1407a(str, i3);
                    if (m1407a >= 13) {
                        sb.append((char) 902);
                        i = 2;
                        m1405a(str, i3, m1407a, sb);
                        i2 = 0;
                        i3 = m1407a + i3;
                    } else {
                        int m1400b = m1400b(str, i3);
                        if (m1400b >= 5 || m1407a == length) {
                            int i4 = i;
                            if (i != 0) {
                                sb.append((char) 900);
                                i4 = 0;
                                i2 = 0;
                            }
                            i2 = m1406a(str, i3, m1400b, sb, i2);
                            i3 += m1400b;
                            i = i4;
                        } else {
                            int m1404a = m1404a(str, i3, charset2);
                            int i5 = m1404a;
                            if (m1404a == 0) {
                                i5 = 1;
                            }
                            byte[] bytes2 = str.substring(i3, i3 + i5).getBytes(charset2);
                            if (bytes2.length == 1 && i == 0) {
                                m1402a(bytes2, 0, 1, 0, sb);
                            } else {
                                m1402a(bytes2, 0, bytes2.length, i, sb);
                                i = 1;
                                i2 = 0;
                            }
                            i3 = i5 + i3;
                        }
                    }
                }
                break;
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static void m1408a(int i, StringBuilder sb) {
        if (i >= 0 && i < 900) {
            sb.append((char) 927);
            sb.append((char) i);
        } else if (i < 810900) {
            sb.append((char) 926);
            sb.append((char) ((i / 900) - 1));
            sb.append((char) (i % 900));
        } else if (i >= 811800) {
            throw new WriterException("ECI number not in valid range from 0..811799, but was ".concat(String.valueOf(i)));
        } else {
            sb.append((char) 925);
            sb.append((char) (810900 - i));
        }
    }

    /* renamed from: a */
    private static void m1405a(String str, int i, int i2, StringBuilder sb) {
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
                BigInteger bigInteger = new BigInteger("1" + str.substring(i + i4, i + i4 + min));
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

    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* renamed from: a */
    private static void m1402a(byte[] bArr, int i, int i2, int i3, StringBuilder sb) {
        int i4;
        if (i2 == 1 && i3 == 0) {
            sb.append((char) 913);
        } else if (i2 % 6 == 0) {
            sb.append((char) 924);
        } else {
            sb.append((char) 901);
        }
        if (i2 >= 6) {
            char[] cArr = new char[5];
            int i5 = i;
            while (true) {
                i4 = i5;
                if ((i + i2) - i5 < 6) {
                    break;
                }
                char c = 0;
                for (int i6 = 0; i6 < 6; i6++) {
                    c = (c << '\b') + (bArr[i5 + i6] & 255);
                }
                for (int i7 = 0; i7 < 5; i7++) {
                    cArr[i7] = (char) (c % 900);
                    c /= 900;
                }
                for (int i8 = 4; i8 >= 0; i8--) {
                    sb.append(cArr[i8]);
                }
                i5 += 6;
            }
        } else {
            i4 = i;
        }
        while (i4 < i + i2) {
            sb.append((char) (bArr[i4] & 255));
            i4++;
        }
    }

    /* renamed from: a */
    private static boolean m1409a(char c) {
        return c >= '0' && c <= '9';
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x009c, code lost:
        r4 = r7 - r4;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m1400b(java.lang.CharSequence r3, int r4) {
        /*
            r0 = r3
            int r0 = r0.length()
            r5 = r0
            r0 = r4
            r6 = r0
        L9:
            r0 = r6
            r7 = r0
            r0 = r6
            r1 = r5
            if (r0 >= r1) goto L9c
            r0 = r3
            r1 = r6
            char r0 = r0.charAt(r1)
            r8 = r0
            r0 = 0
            r7 = r0
            r0 = r8
            r9 = r0
            r0 = r6
            r8 = r0
        L24:
            r0 = r7
            r1 = 13
            if (r0 >= r1) goto L69
            r0 = r9
            boolean r0 = m1409a(r0)
            if (r0 == 0) goto L69
            r0 = r8
            r1 = r5
            if (r0 >= r1) goto L69
            r0 = r7
            r1 = 1
            int r0 = r0 + r1
            r6 = r0
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r10 = r0
            r0 = r10
            r8 = r0
            r0 = r6
            r7 = r0
            r0 = r10
            r1 = r5
            if (r0 >= r1) goto L24
            r0 = r3
            r1 = r10
            char r0 = r0.charAt(r1)
            r11 = r0
            r0 = r10
            r8 = r0
            r0 = r6
            r7 = r0
            r0 = r11
            r9 = r0
            goto L24
        L69:
            r0 = r7
            r1 = 13
            if (r0 < r1) goto L7a
            r0 = r8
            r1 = r4
            int r0 = r0 - r1
            r1 = r7
            int r0 = r0 - r1
            r4 = r0
        L78:
            r0 = r4
            return r0
        L7a:
            r0 = r8
            r6 = r0
            r0 = r7
            if (r0 > 0) goto L9
            r0 = r8
            r7 = r0
            r0 = r3
            r1 = r8
            char r0 = r0.charAt(r1)
            boolean r0 = m1396f(r0)
            if (r0 == 0) goto L9c
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r6 = r0
            goto L9
        L9c:
            r0 = r7
            r1 = r4
            int r0 = r0 - r1
            r4 = r0
            goto L78
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.p175d.p176a.C5131g.m1400b(java.lang.CharSequence, int):int");
    }

    /* renamed from: b */
    private static boolean m1401b(char c) {
        return c == ' ' || (c >= 'A' && c <= 'Z');
    }

    /* renamed from: c */
    private static boolean m1399c(char c) {
        return c == ' ' || (c >= 'a' && c <= 'z');
    }

    /* renamed from: d */
    private static boolean m1398d(char c) {
        return f21685c[c] != -1;
    }

    /* renamed from: e */
    private static boolean m1397e(char c) {
        return f21686d[c] != -1;
    }

    /* renamed from: f */
    private static boolean m1396f(char c) {
        return c == '\t' || c == '\n' || c == '\r' || (c >= ' ' && c <= '~');
    }
}
