package p081h.p203i.p402h.p410n.p411b;

import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import p081h.p203i.p402h.C10538i;
import p081h.p203i.p402h.p405k.EnumC10550c;
/* renamed from: h.i.h.n.b.g */
/* loaded from: classes2-dex2jar.jar:h/i/h/n/b/g.class */
public final class C10596g {

    /* renamed from: a */
    public static final byte[] f24112a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 38, 13, 9, 44, 58, 35, 45, 46, 36, 47, 43, 37, 42, 61, 94, 0, 32, 0, 0, 0};

    /* renamed from: b */
    public static final byte[] f24113b = {59, 60, 62, 64, 91, 92, 93, 95, 96, 126, 33, 13, 9, 44, 58, 10, 45, 46, 36, 47, 34, 124, 42, 40, 41, 63, 123, 125, 39, 0};

    /* renamed from: c */
    public static final byte[] f24114c = new byte[128];

    /* renamed from: d */
    public static final byte[] f24115d = new byte[128];

    /* renamed from: e */
    public static final Charset f24116e = StandardCharsets.ISO_8859_1;

    /* renamed from: h.i.h.n.b.g$a */
    /* loaded from: classes2-dex2jar.jar:h/i/h/n/b/g$a.class */
    public static /* synthetic */ class C10597a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f24117a = new int[EnumC10592c.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f24117a[EnumC10592c.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f24117a[EnumC10592c.BYTE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f24117a[EnumC10592c.NUMERIC.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    static {
        Arrays.fill(f24114c, (byte) -1);
        int i = 0;
        int i2 = 0;
        while (true) {
            byte[] bArr = f24112a;
            if (i2 >= bArr.length) {
                break;
            }
            byte b = bArr[i2];
            if (b > 0) {
                f24114c[b] = (byte) i2;
            }
            i2++;
        }
        Arrays.fill(f24115d, (byte) -1);
        while (true) {
            byte[] bArr2 = f24113b;
            if (i < bArr2.length) {
                byte b2 = bArr2[i];
                if (b2 > 0) {
                    f24115d[b2] = (byte) i;
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public static int m11301a(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        int i3 = 0;
        if (i < length) {
            char charAt = charSequence.charAt(i);
            int i4 = i;
            while (true) {
                i2 = i3;
                if (!m11293c(charAt)) {
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
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m11300a(java.lang.CharSequence r4, int r5, int r6, java.lang.StringBuilder r7, int r8) {
        /*
            Method dump skipped, instructions count: 544
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p402h.p410n.p411b.C10596g.m11300a(java.lang.CharSequence, int, int, java.lang.StringBuilder, int):int");
    }

    /* renamed from: a */
    public static int m11298a(String str, int i, Charset charset) throws C10538i {
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
                if (!m11293c(charAt)) {
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
                throw new C10538i("Non-encodable character detected: " + charAt2 + " (Unicode: " + ((int) charAt2) + ')');
            }
        }
        return i3 - i;
    }

    /* renamed from: a */
    public static String m11297a(String str, EnumC10592c cVar, Charset charset) throws C10538i {
        Charset charset2;
        StringBuilder sb = new StringBuilder(str.length());
        if (charset == null) {
            charset2 = f24116e;
        } else {
            charset2 = charset;
            if (!f24116e.equals(charset)) {
                EnumC10550c a = EnumC10550c.m11439a(charset.name());
                charset2 = charset;
                if (a != null) {
                    m11302a(a.m11440a(), sb);
                    charset2 = charset;
                }
            }
        }
        int length = str.length();
        int i = C10597a.f24117a[cVar.ordinal()];
        if (i == 1) {
            m11300a(str, 0, length, sb, 0);
        } else if (i == 2) {
            byte[] bytes = str.getBytes(charset2);
            m11296a(bytes, 0, bytes.length, 1, sb);
        } else if (i != 3) {
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            while (i2 < length) {
                int a2 = m11301a(str, i2);
                if (a2 >= 13) {
                    sb.append((char) 902);
                    m11299a(str, i2, a2, sb);
                    i2 += a2;
                    i3 = 0;
                    i4 = 2;
                } else {
                    int b = m11294b(str, i2);
                    if (b >= 5 || a2 == length) {
                        i4 = i4;
                        if (i4 != 0) {
                            sb.append((char) 900);
                            i3 = 0;
                            i4 = 0;
                        }
                        i3 = m11300a(str, i2, b, sb, i3);
                        i2 += b;
                    } else {
                        int a3 = m11298a(str, i2, charset2);
                        int i5 = a3;
                        if (a3 == 0) {
                            i5 = 1;
                        }
                        int i6 = i5 + i2;
                        byte[] bytes2 = str.substring(i2, i6).getBytes(charset2);
                        if (bytes2.length == 1 && i4 == 0) {
                            m11296a(bytes2, 0, 1, 0, sb);
                        } else {
                            m11296a(bytes2, 0, bytes2.length, i4, sb);
                            i3 = 0;
                            i4 = 1;
                        }
                        i2 = i6;
                    }
                }
            }
        } else {
            sb.append((char) 902);
            m11299a(str, 0, length, sb);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static void m11302a(int i, StringBuilder sb) throws C10538i {
        if (i >= 0 && i < 900) {
            sb.append((char) 927);
            sb.append((char) i);
        } else if (i < 810900) {
            sb.append((char) 926);
            sb.append((char) ((i / 900) - 1));
            sb.append((char) (i % 900));
        } else if (i < 811800) {
            sb.append((char) 925);
            sb.append((char) (810900 - i));
        } else {
            throw new C10538i("ECI number not in valid range from 0..811799, but was ".concat(String.valueOf(i)));
        }
    }

    /* renamed from: a */
    public static void m11299a(String str, int i, int i2, StringBuilder sb) {
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1, types: [long] */
    /* JADX WARN: Type inference failed for: r18v2, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m11296a(byte[] r7, int r8, int r9, int r10, java.lang.StringBuilder r11) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p402h.p410n.p411b.C10596g.m11296a(byte[], int, int, int, java.lang.StringBuilder):void");
    }

    /* renamed from: a */
    public static boolean m11303a(char c) {
        if (c != ' ') {
            return c >= 'a' && c <= 'z';
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x009e, code lost:
        return r7 - r4;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m11294b(java.lang.CharSequence r3, int r4) {
        /*
            r0 = r3
            int r0 = r0.length()
            r5 = r0
            r0 = r4
            r6 = r0
        L_0x0009:
            r0 = r6
            r7 = r0
            r0 = r6
            r1 = r5
            if (r0 >= r1) goto L_0x009a
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
        L_0x0024:
            r0 = r7
            r1 = 13
            if (r0 >= r1) goto L_0x0069
            r0 = r9
            boolean r0 = m11293c(r0)
            if (r0 == 0) goto L_0x0069
            r0 = r8
            r1 = r5
            if (r0 >= r1) goto L_0x0069
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
            if (r0 >= r1) goto L_0x0024
            r0 = r3
            r1 = r10
            char r0 = r0.charAt(r1)
            r7 = r0
            r0 = r10
            r8 = r0
            r0 = r7
            r9 = r0
            r0 = r6
            r7 = r0
            goto L_0x0024
        L_0x0069:
            r0 = r7
            r1 = 13
            if (r0 < r1) goto L_0x0078
            r0 = r8
            r1 = r4
            int r0 = r0 - r1
            r1 = r7
            int r0 = r0 - r1
            return r0
        L_0x0078:
            r0 = r8
            r6 = r0
            r0 = r7
            if (r0 > 0) goto L_0x0009
            r0 = r8
            r7 = r0
            r0 = r3
            r1 = r8
            char r0 = r0.charAt(r1)
            boolean r0 = m11290f(r0)
            if (r0 == 0) goto L_0x009a
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r6 = r0
            goto L_0x0009
        L_0x009a:
            r0 = r7
            r1 = r4
            int r0 = r0 - r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p402h.p410n.p411b.C10596g.m11294b(java.lang.CharSequence, int):int");
    }

    /* renamed from: b */
    public static boolean m11295b(char c) {
        if (c != ' ') {
            return c >= 'A' && c <= 'Z';
        }
        return true;
    }

    /* renamed from: c */
    public static boolean m11293c(char c) {
        return c >= '0' && c <= '9';
    }

    /* renamed from: d */
    public static boolean m11292d(char c) {
        return f24114c[c] != -1;
    }

    /* renamed from: e */
    public static boolean m11291e(char c) {
        return f24115d[c] != -1;
    }

    /* renamed from: f */
    public static boolean m11290f(char c) {
        if (c == '\t' || c == '\n' || c == '\r') {
            return true;
        }
        return c >= ' ' && c <= '~';
    }
}
