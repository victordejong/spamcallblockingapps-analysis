package p000;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import javax.annotation.Nullable;
/* renamed from: wl1 */
/* loaded from: classes3-dex2jar.jar:wl1.class */
public final class wl1 {

    /* renamed from: j */
    public static final char[] f8588j = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a */
    public final String f8589a;

    /* renamed from: b */
    public final String f8590b;

    /* renamed from: c */
    public final String f8591c;

    /* renamed from: d */
    public final String f8592d;

    /* renamed from: e */
    public final int f8593e;

    /* renamed from: f */
    public final List<String> f8594f;
    @Nullable

    /* renamed from: g */
    public final List<String> f8595g;
    @Nullable

    /* renamed from: h */
    public final String f8596h;

    /* renamed from: i */
    public final String f8597i;

    /* renamed from: wl1$a */
    /* loaded from: classes3-dex2jar.jar:wl1$a.class */
    public static final class C1718a {
        @Nullable

        /* renamed from: a */
        public String f8598a;
        @Nullable

        /* renamed from: d */
        public String f8601d;

        /* renamed from: f */
        public final List<String> f8603f;
        @Nullable

        /* renamed from: g */
        public List<String> f8604g;
        @Nullable

        /* renamed from: h */
        public String f8605h;

        /* renamed from: b */
        public String f8599b = "";

        /* renamed from: c */
        public String f8600c = "";

        /* renamed from: e */
        public int f8602e = -1;

        public C1718a() {
            ArrayList arrayList = new ArrayList();
            this.f8603f = arrayList;
            arrayList.add("");
        }

        /* renamed from: b */
        public static String m188b(String str, int i, int i2) {
            return cm1.m5303a(wl1.m195p(str, i, i2, false));
        }

        /* renamed from: i */
        public static int m181i(String str, int i, int i2) {
            try {
                int parseInt = Integer.parseInt(wl1.m210a(str, i, i2, "", false, false, false, true, null));
                if (parseInt > 0 && parseInt <= 65535) {
                    return parseInt;
                }
                return -1;
            } catch (NumberFormatException e) {
                return -1;
            }
        }

        /* renamed from: l */
        public static int m178l(String str, int i, int i2) {
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

        /* JADX WARN: Code restructure failed: missing block: B:8:0x001b, code lost:
            if (r0 > 'z') goto L9;
         */
        /* renamed from: p */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int m174p(java.lang.String r3, int r4, int r5) {
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
                if (r0 < r1) goto L93
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 90
                if (r0 <= r1) goto L30
                goto L93
            L30:
                r0 = r7
                r1 = 1
                int r0 = r0 + r1
                r4 = r0
                r0 = r4
                r1 = r5
                if (r0 >= r1) goto L93
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
                r0 = r6
                r1 = 48
                if (r0 < r1) goto L6d
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 57
                if (r0 <= r1) goto L30
            L6d:
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
                if (r0 != r1) goto L8b
                r0 = r4
                r7 = r0
                goto L30
            L8b:
                r0 = r6
                r1 = 58
                if (r0 != r1) goto L93
                r0 = r4
                return r0
            L93:
                r0 = -1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p000.wl1.C1718a.m174p(java.lang.String, int, int):int");
        }

        /* renamed from: q */
        public static int m173q(String str, int i, int i2) {
            char charAt;
            int i3 = 0;
            while (i < i2 && ((charAt = str.charAt(i)) == '\\' || charAt == '/')) {
                i3++;
                i++;
            }
            return i3;
        }

        /* renamed from: a */
        public wl1 m189a() {
            if (this.f8598a != null) {
                if (this.f8601d == null) {
                    throw new IllegalStateException("host == null");
                }
                return new wl1(this);
            }
            throw new IllegalStateException("scheme == null");
        }

        /* renamed from: c */
        public int m187c() {
            int i = this.f8602e;
            if (i == -1) {
                i = wl1.m207d(this.f8598a);
            }
            return i;
        }

        /* renamed from: d */
        public C1718a m186d(@Nullable String str) {
            this.f8604g = str != null ? wl1.m190u(wl1.m209b(str, " \"'<>#", true, false, true, true)) : null;
            return this;
        }

        /* renamed from: e */
        public C1718a m185e(@Nullable String str) {
            this.f8605h = str != null ? wl1.m209b(str, "", false, false, false, false) : null;
            return this;
        }

        /* renamed from: f */
        public final boolean m184f(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        /* renamed from: g */
        public final boolean m183g(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x00fc, code lost:
            if (r13.charAt(r14) == '#') goto L25;
         */
        /* renamed from: h */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public p000.wl1.C1718a m182h(@javax.annotation.Nullable p000.wl1 r12, java.lang.String r13) {
            /*
                Method dump skipped, instructions count: 851
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p000.wl1.C1718a.m182h(wl1, java.lang.String):wl1$a");
        }

        /* renamed from: j */
        public C1718a m180j(String str) {
            Objects.requireNonNull(str, "password == null");
            this.f8600c = wl1.m209b(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        /* renamed from: k */
        public final void m179k() {
            List<String> list = this.f8603f;
            if (!list.remove(list.size() - 1).isEmpty() || this.f8603f.isEmpty()) {
                this.f8603f.add("");
                return;
            }
            List<String> list2 = this.f8603f;
            list2.set(list2.size() - 1, "");
        }

        /* renamed from: m */
        public final void m177m(String str, int i, int i2, boolean z, boolean z2) {
            String m210a = wl1.m210a(str, i, i2, " \"<>^`{}|/\\?#", z2, false, false, true, null);
            if (m184f(m210a)) {
                return;
            }
            if (m183g(m210a)) {
                m179k();
                return;
            }
            List<String> list = this.f8603f;
            if (list.get(list.size() - 1).isEmpty()) {
                List<String> list2 = this.f8603f;
                list2.set(list2.size() - 1, m210a);
            } else {
                this.f8603f.add(m210a);
            }
            if (!z) {
                return;
            }
            this.f8603f.add("");
        }

        /* renamed from: n */
        public C1718a m176n(@Nullable String str) {
            this.f8604g = str != null ? wl1.m190u(wl1.m209b(str, " \"'<>#", false, false, true, true)) : null;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0057  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0087 -> B:11:0x0052). Please submit an issue!!! */
        /* renamed from: o */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m175o(java.lang.String r8, int r9, int r10) {
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
                java.util.List<java.lang.String> r0 = r0.f8603f
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
                java.util.List<java.lang.String> r0 = r0.f8603f
                r0.clear()
                r0 = r7
                java.util.List<java.lang.String> r0 = r0.f8603f
                java.lang.String r1 = ""
                boolean r0 = r0.add(r1)
                goto L87
            L52:
                r0 = r9
                r1 = r10
                if (r0 >= r1) goto L8d
                r0 = r8
                r1 = r9
                r2 = r10
                java.lang.String r3 = "/\\"
                int r0 = p000.cm1.m5295i(r0, r1, r2, r3)
                r11 = r0
                r0 = r11
                r1 = r10
                if (r0 >= r1) goto L6e
                r0 = 1
                r13 = r0
                goto L71
            L6e:
                r0 = 0
                r13 = r0
            L71:
                r0 = r7
                r1 = r8
                r2 = r9
                r3 = r11
                r4 = r13
                r5 = 1
                r0.m177m(r1, r2, r3, r4, r5)
                r0 = r11
                r9 = r0
                r0 = r13
                if (r0 == 0) goto L52
                r0 = r11
                r9 = r0
            L87:
                int r9 = r9 + 1
                goto L52
            L8d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p000.wl1.C1718a.m175o(java.lang.String, int, int):void");
        }

        /* renamed from: r */
        public C1718a m172r(String str) {
            Objects.requireNonNull(str, "username == null");
            this.f8599b = wl1.m209b(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            String str2 = this.f8598a;
            if (str2 != null) {
                sb.append(str2);
                str = "://";
            } else {
                str = "//";
            }
            sb.append(str);
            if (!this.f8599b.isEmpty() || !this.f8600c.isEmpty()) {
                sb.append(this.f8599b);
                if (!this.f8600c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f8600c);
                }
                sb.append('@');
            }
            String str3 = this.f8601d;
            if (str3 != null) {
                if (str3.indexOf(58) != -1) {
                    sb.append('[');
                    sb.append(this.f8601d);
                    sb.append(']');
                } else {
                    sb.append(this.f8601d);
                }
            }
            if (this.f8602e != -1 || this.f8598a != null) {
                int m187c = m187c();
                String str4 = this.f8598a;
                if (str4 == null || m187c != wl1.m207d(str4)) {
                    sb.append(':');
                    sb.append(m187c);
                }
            }
            wl1.m196o(sb, this.f8603f);
            if (this.f8604g != null) {
                sb.append('?');
                wl1.m199l(sb, this.f8604g);
            }
            if (this.f8605h != null) {
                sb.append('#');
                sb.append(this.f8605h);
            }
            return sb.toString();
        }
    }

    public wl1(C1718a c1718a) {
        this.f8589a = c1718a.f8598a;
        this.f8590b = m194q(c1718a.f8599b, false);
        this.f8591c = m194q(c1718a.f8600c, false);
        this.f8592d = c1718a.f8601d;
        this.f8593e = c1718a.m187c();
        this.f8594f = m193r(c1718a.f8603f, false);
        List<String> list = c1718a.f8604g;
        this.f8595g = list != null ? m193r(list, true) : null;
        String str = c1718a.f8605h;
        this.f8596h = str != null ? m194q(str, false) : null;
        this.f8597i = c1718a.toString();
    }

    /* renamed from: a */
    public static String m210a(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        int i3;
        int i4 = i;
        while (true) {
            i3 = i4;
            if (i3 >= i2) {
                return str.substring(i, i2);
            }
            int codePointAt = str.codePointAt(i3);
            if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || ((codePointAt == 37 && (!z || (z2 && !m191t(str, i3, i2)))) || (codePointAt == 43 && z3)))) {
                break;
            }
            i4 = i3 + Character.charCount(codePointAt);
        }
        dm1 dm1Var = new dm1();
        dm1Var.m2482J(str, i, i3);
        m208c(dm1Var, str, i3, i2, str2, z, z2, z3, z4, charset);
        return dm1Var.m2474y();
    }

    /* renamed from: b */
    public static String m209b(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        return m210a(str, 0, str.length(), str2, z, z2, z3, z4, null);
    }

    /* renamed from: c */
    public static void m208c(dm1 dm1Var, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        dm1 dm1Var2;
        dm1 dm1Var3 = null;
        while (true) {
            dm1 dm1Var4 = dm1Var3;
            if (i < i2) {
                int codePointAt = str.codePointAt(i);
                if (z) {
                    dm1Var2 = dm1Var4;
                    if (codePointAt != 9) {
                        dm1Var2 = dm1Var4;
                        if (codePointAt != 10) {
                            dm1Var2 = dm1Var4;
                            if (codePointAt != 12) {
                                if (codePointAt == 13) {
                                    dm1Var2 = dm1Var4;
                                }
                            }
                        }
                    }
                    i += Character.charCount(codePointAt);
                    dm1Var3 = dm1Var2;
                }
                if (codePointAt == 43 && z3) {
                    dm1Var.m2483I(z ? "+" : "%2B");
                    dm1Var2 = dm1Var4;
                } else if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || (codePointAt == 37 && (!z || (z2 && !m191t(str, i, i2)))))) {
                    dm1 dm1Var5 = dm1Var4;
                    if (dm1Var4 == null) {
                        dm1Var5 = new dm1();
                    }
                    if (charset == null || charset.equals(cm1.f2396b)) {
                        dm1Var5.m2481K(codePointAt);
                    } else {
                        dm1Var5.m2484H(str, i, Character.charCount(codePointAt) + i, charset);
                    }
                    while (true) {
                        dm1Var2 = dm1Var5;
                        if (!dm1Var5.m2479h()) {
                            int m2478l = dm1Var5.m2478l() & 255;
                            dm1Var.m2486F(37);
                            char[] cArr = f8588j;
                            dm1Var.m2486F(cArr[(m2478l >> 4) & 15]);
                            dm1Var.m2486F(cArr[m2478l & 15]);
                        }
                    }
                } else {
                    dm1Var.m2481K(codePointAt);
                    dm1Var2 = dm1Var4;
                }
                i += Character.charCount(codePointAt);
                dm1Var3 = dm1Var2;
            } else {
                return;
            }
        }
    }

    /* renamed from: d */
    public static int m207d(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    /* renamed from: k */
    public static wl1 m200k(String str) {
        C1718a c1718a = new C1718a();
        c1718a.m182h(null, str);
        return c1718a.m189a();
    }

    /* renamed from: l */
    public static void m199l(StringBuilder sb, List<String> list) {
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

    @Nullable
    /* renamed from: n */
    public static wl1 m197n(String str) {
        try {
            return m200k(str);
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

    /* renamed from: o */
    public static void m196o(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append('/');
            sb.append(list.get(i));
        }
    }

    /* renamed from: p */
    public static String m195p(String str, int i, int i2, boolean z) {
        for (int i3 = i; i3 < i2; i3++) {
            char charAt = str.charAt(i3);
            if (charAt == '%' || (charAt == '+' && z)) {
                dm1 dm1Var = new dm1();
                dm1Var.m2482J(str, i, i3);
                m192s(dm1Var, str, i3, i2, z);
                return dm1Var.m2474y();
            }
        }
        return str.substring(i, i2);
    }

    /* renamed from: q */
    public static String m194q(String str, boolean z) {
        return m195p(str, 0, str.length(), z);
    }

    /* renamed from: s */
    public static void m192s(dm1 dm1Var, String str, int i, int i2, boolean z) {
        int i3;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt != 37 || (i3 = i + 2) >= i2) {
                if (codePointAt == 43 && z) {
                    dm1Var.m2486F(32);
                    i += Character.charCount(codePointAt);
                }
                dm1Var.m2481K(codePointAt);
                i += Character.charCount(codePointAt);
            } else {
                int m5299e = cm1.m5299e(str.charAt(i + 1));
                int m5299e2 = cm1.m5299e(str.charAt(i3));
                if (m5299e != -1 && m5299e2 != -1) {
                    dm1Var.m2486F((m5299e << 4) + m5299e2);
                    i = i3;
                    i += Character.charCount(codePointAt);
                }
                dm1Var.m2481K(codePointAt);
                i += Character.charCount(codePointAt);
            }
        }
    }

    /* renamed from: t */
    public static boolean m191t(String str, int i, int i2) {
        int i3 = i + 2;
        boolean z = true;
        if (i3 >= i2 || str.charAt(i) != '%' || cm1.m5299e(str.charAt(i + 1)) == -1 || cm1.m5299e(str.charAt(i3)) == -1) {
            z = false;
        }
        return z;
    }

    /* renamed from: u */
    public static List<String> m190u(String str) {
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

    @Nullable
    /* renamed from: e */
    public String m206e() {
        if (this.f8596h == null) {
            return null;
        }
        return this.f8597i.substring(this.f8597i.indexOf(35) + 1);
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof wl1) && ((wl1) obj).f8597i.equals(this.f8597i);
    }

    /* renamed from: f */
    public String m205f() {
        if (this.f8591c.isEmpty()) {
            return "";
        }
        int indexOf = this.f8597i.indexOf(58, this.f8589a.length() + 3);
        return this.f8597i.substring(indexOf + 1, this.f8597i.indexOf(64));
    }

    /* renamed from: g */
    public String m204g() {
        int indexOf = this.f8597i.indexOf(47, this.f8589a.length() + 3);
        String str = this.f8597i;
        return this.f8597i.substring(indexOf, cm1.m5295i(str, indexOf, str.length(), "?#"));
    }

    /* renamed from: h */
    public List<String> m203h() {
        int indexOf = this.f8597i.indexOf(47, this.f8589a.length() + 3);
        String str = this.f8597i;
        int m5295i = cm1.m5295i(str, indexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < m5295i) {
            int i = indexOf + 1;
            indexOf = cm1.m5296h(this.f8597i, i, m5295i, '/');
            arrayList.add(this.f8597i.substring(i, indexOf));
        }
        return arrayList;
    }

    public int hashCode() {
        return this.f8597i.hashCode();
    }

    @Nullable
    /* renamed from: i */
    public String m202i() {
        if (this.f8595g == null) {
            return null;
        }
        int indexOf = this.f8597i.indexOf(63) + 1;
        String str = this.f8597i;
        return this.f8597i.substring(indexOf, cm1.m5296h(str, indexOf, str.length(), '#'));
    }

    /* renamed from: j */
    public String m201j() {
        if (this.f8590b.isEmpty()) {
            return "";
        }
        int length = this.f8589a.length() + 3;
        String str = this.f8597i;
        return this.f8597i.substring(length, cm1.m5295i(str, length, str.length(), ":@"));
    }

    /* renamed from: m */
    public C1718a m198m() {
        C1718a c1718a = new C1718a();
        c1718a.f8598a = this.f8589a;
        c1718a.f8599b = m201j();
        c1718a.f8600c = m205f();
        c1718a.f8601d = this.f8592d;
        c1718a.f8602e = this.f8593e != m207d(this.f8589a) ? this.f8593e : -1;
        c1718a.f8603f.clear();
        c1718a.f8603f.addAll(m203h());
        c1718a.m186d(m202i());
        c1718a.f8605h = m206e();
        return c1718a;
    }

    /* renamed from: r */
    public final List<String> m193r(List<String> list, boolean z) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            String str = list.get(i);
            arrayList.add(str != null ? m194q(str, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    public String toString() {
        return this.f8597i;
    }
}
