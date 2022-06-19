package com.squareup.okhttp;

import java.net.IDN;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import okio.Buffer;
/* renamed from: com.squareup.okhttp.l */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/l.class */
public final class C2946l {

    /* renamed from: i */
    private static final char[] f12410i = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a */
    private final String f12411a;

    /* renamed from: b */
    private final String f12412b;

    /* renamed from: c */
    private final String f12413c;

    /* renamed from: d */
    private final String f12414d;

    /* renamed from: e */
    private final int f12415e;

    /* renamed from: f */
    private final List<String> f12416f;

    /* renamed from: g */
    private final List<String> f12417g;

    /* renamed from: h */
    private final String f12418h;

    /* renamed from: com.squareup.okhttp.l$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/l$b.class */
    public static final class C2948b {

        /* renamed from: a */
        String f12419a;

        /* renamed from: d */
        String f12422d;

        /* renamed from: f */
        final List<String> f12424f;

        /* renamed from: g */
        List<String> f12425g;

        /* renamed from: h */
        String f12426h;

        /* renamed from: b */
        String f12420b = "";

        /* renamed from: c */
        String f12421c = "";

        /* renamed from: e */
        int f12423e = -1;

        public C2948b() {
            ArrayList arrayList = new ArrayList();
            this.f12424f = arrayList;
            arrayList.add("");
        }

        /* renamed from: b */
        private static String m853b(String str, int i, int i2) {
            int length;
            String m858w = C2946l.m858w(str, i, i2);
            if (!m858w.startsWith("[") || !m858w.endsWith("]")) {
                String m850e = m850e(m858w);
                if (m850e == null || C2946l.m871j(m850e, 0, length, "��\t\n\r #%/:?@[\\]") != (length = m850e.length())) {
                    return null;
                }
                return m850e;
            }
            InetAddress m851d = m851d(m858w, 1, m858w.length() - 1);
            if (m851d == null) {
                return null;
            }
            byte[] address = m851d.getAddress();
            if (address.length != 16) {
                throw new AssertionError();
            }
            return m846i(address);
        }

        /* renamed from: c */
        private static boolean m852c(String str, int i, int i2, byte[] bArr, int i3) {
            char charAt;
            int i4 = i3;
            int i5 = i;
            while (i5 < i2) {
                if (i4 == bArr.length) {
                    return false;
                }
                int i6 = i5;
                if (i4 != i3) {
                    if (str.charAt(i5) != '.') {
                        return false;
                    }
                    i6 = i5 + 1;
                }
                i5 = i6;
                int i7 = 0;
                while (i5 < i2 && (charAt = str.charAt(i5)) >= '0' && charAt <= '9') {
                    if (i7 == 0 && i6 != i5) {
                        return false;
                    }
                    i7 = ((i7 * 10) + charAt) - 48;
                    if (i7 > 255) {
                        return false;
                    }
                    i5++;
                }
                if (i5 - i6 == 0) {
                    return false;
                }
                bArr[i4] = (byte) i7;
                i4++;
            }
            return i4 == i3 + 4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:45:0x012d, code lost:
            if (r14 == 16) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x0133, code lost:
            if (r15 != (-1)) goto L49;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x0136, code lost:
            return null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0138, code lost:
            r0 = r14 - r15;
            java.lang.System.arraycopy(r0, r15, r0, 16 - r0, r0);
            java.util.Arrays.fill(r0, r15, (16 - r14) + r15, (byte) 0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x015f, code lost:
            return java.net.InetAddress.getByAddress(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x016d, code lost:
            throw new java.lang.AssertionError();
         */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static java.net.InetAddress m851d(java.lang.String r7, int r8, int r9) {
            /*
                Method dump skipped, instructions count: 369
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.C2946l.C2948b.m851d(java.lang.String, int, int):java.net.InetAddress");
        }

        /* renamed from: e */
        private static String m850e(String str) {
            try {
                String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
                if (!lowerCase.isEmpty()) {
                    return lowerCase;
                }
                return null;
            } catch (IllegalArgumentException e) {
                return null;
            }
        }

        /* renamed from: i */
        private static String m846i(byte[] bArr) {
            int i;
            int i2 = -1;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i4;
                if (i3 >= bArr.length) {
                    break;
                }
                int i5 = i3;
                while (i5 < 16 && bArr[i5] == 0 && bArr[i5 + 1] == 0) {
                    i5 += 2;
                }
                int i6 = i5 - i3;
                int i7 = i;
                if (i6 > i) {
                    i7 = i6;
                    i2 = i3;
                }
                i3 = i5 + 2;
                i4 = i7;
            }
            Buffer buffer = new Buffer();
            int i8 = 0;
            while (i8 < bArr.length) {
                if (i8 == i2) {
                    buffer.writeByte(58);
                    int i9 = i8 + i;
                    i8 = i9;
                    if (i9 == 16) {
                        buffer.writeByte(58);
                        i8 = i9;
                    }
                } else {
                    if (i8 > 0) {
                        buffer.writeByte(58);
                    }
                    buffer.writeHexadecimalUnsignedLong(((bArr[i8] & 255) << 8) | (bArr[i8 + 1] & 255));
                    i8 += 2;
                }
            }
            return buffer.readUtf8();
        }

        /* renamed from: j */
        private boolean m845j(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        /* renamed from: k */
        private boolean m844k(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        /* renamed from: m */
        private static int m842m(String str, int i, int i2) {
            try {
                int parseInt = Integer.parseInt(C2946l.m876e(str, i, i2, "", false, false));
                if (parseInt > 0 && parseInt <= 65535) {
                    return parseInt;
                }
                return -1;
            } catch (NumberFormatException e) {
                return -1;
            }
        }

        /* renamed from: n */
        private void m841n() {
            List<String> list = this.f12424f;
            if (!list.remove(list.size() - 1).isEmpty() || this.f12424f.isEmpty()) {
                this.f12424f.add("");
                return;
            }
            List<String> list2 = this.f12424f;
            list2.set(list2.size() - 1, "");
        }

        /* renamed from: p */
        private static int m839p(String str, int i, int i2) {
            int i3;
            while (i < i2) {
                char charAt = str.charAt(i);
                if (charAt == ':') {
                    return i;
                }
                int i4 = i;
                if (charAt != '[') {
                    i3 = i;
                } else {
                    while (true) {
                        int i5 = i4 + 1;
                        i3 = i5;
                        if (i5 < i2) {
                            i4 = i5;
                            if (str.charAt(i5) == ']') {
                                i3 = i5;
                                break;
                            }
                        }
                    }
                }
                i = i3 + 1;
            }
            return i2;
        }

        /* renamed from: q */
        private void m838q(String str, int i, int i2, boolean z, boolean z2) {
            String m876e = C2946l.m876e(str, i, i2, " \"<>^`{}|/\\?#", z2, false);
            if (m845j(m876e)) {
                return;
            }
            if (m844k(m876e)) {
                m841n();
                return;
            }
            List<String> list = this.f12424f;
            if (list.get(list.size() - 1).isEmpty()) {
                List<String> list2 = this.f12424f;
                list2.set(list2.size() - 1, m876e);
            } else {
                this.f12424f.add(m876e);
            }
            if (!z) {
                return;
            }
            this.f12424f.add("");
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0057  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0086 -> B:11:0x0052). Please submit an issue!!! */
        /* renamed from: r */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void m837r(java.lang.String r8, int r9, int r10) {
            /*
                r7 = this;
                r0 = r9
                r1 = r10
                if (r0 != r1) goto L6
                return
            L6:
                r0 = r8
                r1 = r9
                char r0 = r0.charAt(r1)
                r11 = r0
                r0 = r11
                r1 = 47
                if (r0 == r1) goto L3a
                r0 = r11
                r1 = 92
                if (r0 != r1) goto L1e
                goto L3a
            L1e:
                r0 = r7
                java.util.List<java.lang.String> r0 = r0.f12424f
                r12 = r0
                r0 = r12
                r1 = r12
                int r1 = r1.size()
                r2 = 1
                int r1 = r1 - r2
                java.lang.String r2 = ""
                java.lang.Object r0 = r0.set(r1, r2)
                goto L52
            L3a:
                r0 = r7
                java.util.List<java.lang.String> r0 = r0.f12424f
                r0.clear()
                r0 = r7
                java.util.List<java.lang.String> r0 = r0.f12424f
                java.lang.String r1 = ""
                boolean r0 = r0.add(r1)
                goto L86
            L52:
                r0 = r9
                r1 = r10
                if (r0 >= r1) goto L8c
                r0 = r8
                r1 = r9
                r2 = r10
                java.lang.String r3 = "/\\"
                int r0 = com.squareup.okhttp.C2946l.m879b(r0, r1, r2, r3)
                r11 = r0
                r0 = r11
                r1 = r10
                if (r0 >= r1) goto L6d
                r0 = 1
                r13 = r0
                goto L70
            L6d:
                r0 = 0
                r13 = r0
            L70:
                r0 = r7
                r1 = r8
                r2 = r9
                r3 = r11
                r4 = r13
                r5 = 1
                r0.m838q(r1, r2, r3, r4, r5)
                r0 = r11
                r9 = r0
                r0 = r13
                if (r0 == 0) goto L52
                r0 = r11
                r9 = r0
            L86:
                int r9 = r9 + 1
                goto L52
            L8c:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.C2946l.C2948b.m837r(java.lang.String, int, int):void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x001b, code lost:
            if (r0 > 'z') goto L9;
         */
        /* renamed from: t */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static int m835t(java.lang.String r3, int r4, int r5) {
            /*
                r0 = r5
                r1 = r4
                int r0 = r0 - r1
                r1 = 2
                if (r0 >= r1) goto L9
                r0 = -1
                return r0
            L9:
                r0 = r3
                r1 = r4
                char r0 = r0.charAt(r1)
                r6 = r0
                r0 = r6
                r1 = 97
                if (r0 < r1) goto L1e
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 122(0x7a, float:1.71E-43)
                if (r0 <= r1) goto L30
            L1e:
                r0 = r6
                r1 = 65
                if (r0 < r1) goto L84
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 90
                if (r0 <= r1) goto L30
                goto L84
            L30:
                r0 = r7
                r1 = 1
                int r0 = r0 + r1
                r4 = r0
                r0 = r4
                r1 = r5
                if (r0 >= r1) goto L84
                r0 = r3
                r1 = r4
                char r0 = r0.charAt(r1)
                r6 = r0
                r0 = r6
                r1 = 97
                if (r0 < r1) goto L4f
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 122(0x7a, float:1.71E-43)
                if (r0 <= r1) goto L30
            L4f:
                r0 = r6
                r1 = 65
                if (r0 < r1) goto L5e
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 90
                if (r0 <= r1) goto L30
            L5e:
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 43
                if (r0 == r1) goto L30
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 45
                if (r0 == r1) goto L30
                r0 = r6
                r1 = 46
                if (r0 != r1) goto L7c
                r0 = r4
                r7 = r0
                goto L30
            L7c:
                r0 = r6
                r1 = 58
                if (r0 != r1) goto L84
                r0 = r4
                return r0
            L84:
                r0 = -1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.C2946l.C2948b.m835t(java.lang.String, int, int):int");
        }

        /* renamed from: u */
        private int m834u(String str, int i, int i2) {
            while (i < i2) {
                char charAt = str.charAt(i);
                if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                    return i;
                }
                i++;
            }
            return i2;
        }

        /* renamed from: v */
        private int m833v(String str, int i, int i2) {
            while (true) {
                i2--;
                if (i2 >= i) {
                    char charAt = str.charAt(i2);
                    if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                        return i2 + 1;
                    }
                } else {
                    return i;
                }
            }
        }

        /* renamed from: w */
        private static int m832w(String str, int i, int i2) {
            char charAt;
            int i3 = 0;
            while (i < i2 && ((charAt = str.charAt(i)) == '\\' || charAt == '/')) {
                i3++;
                i++;
            }
            return i3;
        }

        /* renamed from: a */
        public C2946l m854a() {
            if (this.f12419a != null) {
                if (this.f12422d == null) {
                    throw new IllegalStateException("host == null");
                }
                return new C2946l(this);
            }
            throw new IllegalStateException("scheme == null");
        }

        /* renamed from: f */
        int m849f() {
            int i = this.f12423e;
            if (i == -1) {
                i = C2946l.m872i(this.f12419a);
            }
            return i;
        }

        /* renamed from: g */
        public C2948b m848g(String str) {
            this.f12425g = str != null ? C2946l.m885B(C2946l.m875f(str, " \"'<>#", true, true)) : null;
            return this;
        }

        /* renamed from: h */
        public C2948b m847h(String str) {
            if (str != null) {
                String m853b = m853b(str, 0, str.length());
                if (m853b != null) {
                    this.f12422d = m853b;
                    return this;
                }
                throw new IllegalArgumentException("unexpected host: " + str);
            }
            throw new IllegalArgumentException("host == null");
        }

        /* JADX WARN: Code restructure failed: missing block: B:23:0x00d7, code lost:
            if (r10.charAt(r11) == '#') goto L24;
         */
        /* renamed from: l */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        com.squareup.okhttp.C2946l m843l(com.squareup.okhttp.C2946l r9, java.lang.String r10) {
            /*
                Method dump skipped, instructions count: 697
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.C2946l.C2948b.m843l(com.squareup.okhttp.l, java.lang.String):com.squareup.okhttp.l");
        }

        /* renamed from: o */
        public C2948b m840o(int i) {
            if (i > 0 && i <= 65535) {
                this.f12423e = i;
                return this;
            }
            throw new IllegalArgumentException("unexpected port: " + i);
        }

        /* renamed from: s */
        public C2948b m836s(String str) {
            String str2;
            if (str != null) {
                if (str.equalsIgnoreCase("http")) {
                    str2 = "http";
                } else if (!str.equalsIgnoreCase("https")) {
                    throw new IllegalArgumentException("unexpected scheme: " + str);
                } else {
                    str2 = "https";
                }
                this.f12419a = str2;
                return this;
            }
            throw new IllegalArgumentException("scheme == null");
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f12419a);
            sb.append("://");
            if (!this.f12420b.isEmpty() || !this.f12421c.isEmpty()) {
                sb.append(this.f12420b);
                if (!this.f12421c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f12421c);
                }
                sb.append('@');
            }
            if (this.f12422d.indexOf(58) != -1) {
                sb.append('[');
                sb.append(this.f12422d);
                sb.append(']');
            } else {
                sb.append(this.f12422d);
            }
            int m849f = m849f();
            if (m849f != C2946l.m872i(this.f12419a)) {
                sb.append(':');
                sb.append(m849f);
            }
            C2946l.m860u(sb, this.f12424f);
            if (this.f12425g != null) {
                sb.append('?');
                C2946l.m862s(sb, this.f12425g);
            }
            if (this.f12426h != null) {
                sb.append('#');
                sb.append(this.f12426h);
            }
            return sb.toString();
        }
    }

    private C2946l(C2948b c2948b) {
        this.f12411a = c2948b.f12419a;
        this.f12412b = m859v(c2948b.f12420b);
        this.f12413c = m859v(c2948b.f12421c);
        this.f12414d = c2948b.f12422d;
        this.f12415e = c2948b.m849f();
        this.f12416f = m857x(c2948b.f12424f);
        List<String> list = c2948b.f12425g;
        this.f12417g = list != null ? m857x(list) : null;
        String str = c2948b.f12426h;
        if (str != null) {
            m859v(str);
        }
        this.f12418h = c2948b.toString();
    }

    /* renamed from: B */
    static List<String> m885B(String str) {
        String str2;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 <= str.length()) {
                int indexOf = str.indexOf(38, i2);
                int i3 = indexOf;
                if (indexOf == -1) {
                    i3 = str.length();
                }
                int indexOf2 = str.indexOf(61, i2);
                if (indexOf2 == -1 || indexOf2 > i3) {
                    arrayList.add(str.substring(i2, i3));
                    str2 = null;
                } else {
                    arrayList.add(str.substring(i2, indexOf2));
                    str2 = str.substring(indexOf2 + 1, i3);
                }
                arrayList.add(str2);
                i = i3 + 1;
            } else {
                return arrayList;
            }
        }
    }

    /* renamed from: e */
    static String m876e(String str, int i, int i2, String str2, boolean z, boolean z2) {
        int i3;
        int i4 = i;
        while (true) {
            i3 = i4;
            if (i3 >= i2) {
                return str.substring(i, i2);
            }
            int codePointAt = str.codePointAt(i3);
            if (codePointAt < 32 || codePointAt >= 127 || str2.indexOf(codePointAt) != -1 || ((codePointAt == 37 && !z) || (z2 && codePointAt == 43))) {
                break;
            }
            i4 = i3 + Character.charCount(codePointAt);
        }
        Buffer buffer = new Buffer();
        buffer.writeUtf8(str, i, i3);
        m874g(buffer, str, i3, i2, str2, z, z2);
        return buffer.readUtf8();
    }

    /* renamed from: f */
    static String m875f(String str, String str2, boolean z, boolean z2) {
        return m876e(str, 0, str.length(), str2, z, z2);
    }

    /* renamed from: g */
    static void m874g(Buffer buffer, String str, int i, int i2, String str2, boolean z, boolean z2) {
        Buffer buffer2;
        Buffer buffer3 = null;
        while (true) {
            Buffer buffer4 = buffer3;
            if (i < i2) {
                int codePointAt = str.codePointAt(i);
                if (z) {
                    buffer2 = buffer4;
                    if (codePointAt != 9) {
                        buffer2 = buffer4;
                        if (codePointAt != 10) {
                            buffer2 = buffer4;
                            if (codePointAt != 12) {
                                if (codePointAt == 13) {
                                    buffer2 = buffer4;
                                }
                            }
                        }
                    }
                    i += Character.charCount(codePointAt);
                    buffer3 = buffer2;
                }
                if (z2 && codePointAt == 43) {
                    buffer.writeUtf8(z ? "%20" : "%2B");
                    buffer2 = buffer4;
                } else if (codePointAt < 32 || codePointAt >= 127 || str2.indexOf(codePointAt) != -1 || (codePointAt == 37 && !z)) {
                    Buffer buffer5 = buffer4;
                    if (buffer4 == null) {
                        buffer5 = new Buffer();
                    }
                    buffer5.writeUtf8CodePoint(codePointAt);
                    while (true) {
                        buffer2 = buffer5;
                        if (!buffer5.exhausted()) {
                            int readByte = buffer5.readByte() & 255;
                            buffer.writeByte(37);
                            char[] cArr = f12410i;
                            buffer.writeByte(cArr[(readByte >> 4) & 15]);
                            buffer.writeByte(cArr[readByte & 15]);
                        }
                    }
                } else {
                    buffer.writeUtf8CodePoint(codePointAt);
                    buffer2 = buffer4;
                }
                i += Character.charCount(codePointAt);
                buffer3 = buffer2;
            } else {
                return;
            }
        }
    }

    /* renamed from: h */
    static int m873h(char c) {
        if (c < '0' || c > '9') {
            char c2 = 'a';
            if (c < 'a' || c > 'f') {
                c2 = 'A';
                if (c < 'A' || c > 'F') {
                    return -1;
                }
            }
            return (c - c2) + 10;
        }
        return c - '0';
    }

    /* renamed from: i */
    public static int m872i(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    /* renamed from: j */
    public static int m871j(String str, int i, int i2, String str2) {
        while (i < i2) {
            if (str2.indexOf(str.charAt(i)) != -1) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: p */
    public static C2946l m865p(URL url) {
        return m861t(url.toString());
    }

    /* renamed from: s */
    static void m862s(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i += 2) {
            String str = list.get(i);
            String str2 = list.get(i + 1);
            if (i > 0) {
                sb.append('&');
            }
            sb.append(str);
            if (str2 != null) {
                sb.append('=');
                sb.append(str2);
            }
        }
    }

    /* renamed from: t */
    public static C2946l m861t(String str) {
        return new C2948b().m843l(null, str);
    }

    /* renamed from: u */
    static void m860u(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append('/');
            sb.append(list.get(i));
        }
    }

    /* renamed from: v */
    static String m859v(String str) {
        return m858w(str, 0, str.length());
    }

    /* renamed from: w */
    static String m858w(String str, int i, int i2) {
        for (int i3 = i; i3 < i2; i3++) {
            if (str.charAt(i3) == '%') {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, i, i3);
                m856y(buffer, str, i3, i2);
                return buffer.readUtf8();
            }
        }
        return str.substring(i, i2);
    }

    /* renamed from: x */
    private List<String> m857x(List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String next = it.next();
            arrayList.add(next != null ? m859v(next) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: y */
    static void m856y(Buffer buffer, String str, int i, int i2) {
        int i3;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt == 37 && (i3 = i + 2) < i2) {
                int m873h = m873h(str.charAt(i + 1));
                int m873h2 = m873h(str.charAt(i3));
                if (m873h != -1 && m873h2 != -1) {
                    buffer.writeByte((m873h << 4) + m873h2);
                    i = i3;
                    i += Character.charCount(codePointAt);
                }
            }
            buffer.writeUtf8CodePoint(codePointAt);
            i += Character.charCount(codePointAt);
        }
    }

    /* renamed from: A */
    public String m886A() {
        if (this.f12417g == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        m862s(sb, this.f12417g);
        return sb.toString();
    }

    /* renamed from: C */
    public C2946l m884C(String str) {
        return new C2948b().m843l(this, str);
    }

    /* renamed from: D */
    public String m883D() {
        return this.f12411a;
    }

    /* renamed from: E */
    public URI m882E() {
        try {
            return new URI(this.f12418h);
        } catch (URISyntaxException e) {
            throw new IllegalStateException("not valid as a java.net.URI: " + this.f12418h);
        }
    }

    /* renamed from: F */
    public URL m881F() {
        try {
            return new URL(this.f12418h);
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof C2946l) && ((C2946l) obj).f12418h.equals(this.f12418h);
    }

    public int hashCode() {
        return this.f12418h.hashCode();
    }

    /* renamed from: k */
    public String m870k() {
        if (this.f12413c.isEmpty()) {
            return "";
        }
        int indexOf = this.f12418h.indexOf(58, this.f12411a.length() + 3);
        return this.f12418h.substring(indexOf + 1, this.f12418h.indexOf(64));
    }

    /* renamed from: l */
    public String m869l() {
        int indexOf = this.f12418h.indexOf(47, this.f12411a.length() + 3);
        String str = this.f12418h;
        return this.f12418h.substring(indexOf, m871j(str, indexOf, str.length(), "?#"));
    }

    /* renamed from: m */
    public List<String> m868m() {
        int indexOf = this.f12418h.indexOf(47, this.f12411a.length() + 3);
        String str = this.f12418h;
        int m871j = m871j(str, indexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < m871j) {
            int i = indexOf + 1;
            indexOf = m871j(this.f12418h, i, m871j, "/");
            arrayList.add(this.f12418h.substring(i, indexOf));
        }
        return arrayList;
    }

    /* renamed from: n */
    public String m867n() {
        if (this.f12417g == null) {
            return null;
        }
        int indexOf = this.f12418h.indexOf(63) + 1;
        String str = this.f12418h;
        return this.f12418h.substring(indexOf, m871j(str, indexOf + 1, str.length(), "#"));
    }

    /* renamed from: o */
    public String m866o() {
        if (this.f12412b.isEmpty()) {
            return "";
        }
        int length = this.f12411a.length() + 3;
        String str = this.f12418h;
        return this.f12418h.substring(length, m871j(str, length, str.length(), ":@"));
    }

    /* renamed from: q */
    public String m864q() {
        return this.f12414d;
    }

    /* renamed from: r */
    public boolean m863r() {
        return this.f12411a.equals("https");
    }

    public String toString() {
        return this.f12418h;
    }

    /* renamed from: z */
    public int m855z() {
        return this.f12415e;
    }
}
