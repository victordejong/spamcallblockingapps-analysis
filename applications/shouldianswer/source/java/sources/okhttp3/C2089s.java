package okhttp3;

import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import okhttp3.internal.C1999c;
import p000a.C0005c;
/* renamed from: okhttp3.s */
/* loaded from: classes-dex2jar.jar:okhttp3/s.class */
public final class C2089s {

    /* renamed from: d */
    private static final char[] f5348d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a */
    final String f5349a;

    /* renamed from: b */
    final String f5350b;

    /* renamed from: c */
    final int f5351c;

    /* renamed from: e */
    private final String f5352e;

    /* renamed from: f */
    private final String f5353f;

    /* renamed from: g */
    private final List<String> f5354g;
    @Nullable

    /* renamed from: h */
    private final List<String> f5355h;
    @Nullable

    /* renamed from: i */
    private final String f5356i;

    /* renamed from: j */
    private final String f5357j;

    /* renamed from: okhttp3.s$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/s$a.class */
    public static final class C2090a {
        @Nullable

        /* renamed from: a */
        String f5358a;
        @Nullable

        /* renamed from: d */
        String f5361d;
        @Nullable

        /* renamed from: g */
        List<String> f5364g;
        @Nullable

        /* renamed from: h */
        String f5365h;

        /* renamed from: b */
        String f5359b = "";

        /* renamed from: c */
        String f5360c = "";

        /* renamed from: e */
        int f5362e = -1;

        /* renamed from: f */
        final List<String> f5363f = new ArrayList();

        /* renamed from: okhttp3.s$a$a */
        /* loaded from: classes-dex2jar.jar:okhttp3/s$a$a.class */
        public enum EnumC2091a {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public C2090a() {
            this.f5363f.add("");
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0057  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0086 -> B:11:0x0052). Please submit an issue!!! */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void m1922a(java.lang.String r8, int r9, int r10) {
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
                java.util.List<java.lang.String> r0 = r0.f5363f
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
                java.util.List<java.lang.String> r0 = r0.f5363f
                r0.clear()
                r0 = r7
                java.util.List<java.lang.String> r0 = r0.f5363f
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
                int r0 = okhttp3.internal.C1999c.m2347a(r0, r1, r2, r3)
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
                r0.m1921a(r1, r2, r3, r4, r5)
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
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.C2089s.C2090a.m1922a(java.lang.String, int, int):void");
        }

        /* renamed from: a */
        private void m1921a(String str, int i, int i2, boolean z, boolean z2) {
            String m1950a = C2089s.m1950a(str, i, i2, " \"<>^`{}|/\\?#", z2, false, false, true, null);
            if (m1905h(m1950a)) {
                return;
            }
            if (m1904i(m1950a)) {
                m1913d();
                return;
            }
            List<String> list = this.f5363f;
            if (list.get(list.size() - 1).isEmpty()) {
                List<String> list2 = this.f5363f;
                list2.set(list2.size() - 1, m1950a);
            } else {
                this.f5363f.add(m1950a);
            }
            if (!z) {
                return;
            }
            this.f5363f.add("");
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x001b, code lost:
            if (r0 > 'z') goto L9;
         */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static int m1917b(java.lang.String r3, int r4, int r5) {
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
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.C2089s.C2090a.m1917b(java.lang.String, int, int):int");
        }

        /* renamed from: c */
        private static int m1914c(String str, int i, int i2) {
            char charAt;
            int i3 = 0;
            while (i < i2 && ((charAt = str.charAt(i)) == '\\' || charAt == '/')) {
                i3++;
                i++;
            }
            return i3;
        }

        /* renamed from: d */
        private static int m1911d(String str, int i, int i2) {
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

        /* renamed from: d */
        private void m1913d() {
            List<String> list = this.f5363f;
            if (!list.remove(list.size() - 1).isEmpty() || this.f5363f.isEmpty()) {
                this.f5363f.add("");
                return;
            }
            List<String> list2 = this.f5363f;
            list2.set(list2.size() - 1, "");
        }

        /* renamed from: e */
        private static String m1909e(String str, int i, int i2) {
            return C1999c.m2350a(C2089s.m1949a(str, i, i2, false));
        }

        /* renamed from: f */
        private static int m1907f(String str, int i, int i2) {
            try {
                int parseInt = Integer.parseInt(C2089s.m1950a(str, i, i2, "", false, false, false, true, null));
                if (parseInt > 0 && parseInt <= 65535) {
                    return parseInt;
                }
                return -1;
            } catch (NumberFormatException e) {
                return -1;
            }
        }

        /* renamed from: h */
        private boolean m1905h(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        /* renamed from: i */
        private boolean m1904i(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        /* renamed from: a */
        int m1925a() {
            int i = this.f5362e;
            if (i == -1) {
                i = C2089s.m1952a(this.f5358a);
            }
            return i;
        }

        /* renamed from: a */
        EnumC2091a m1920a(@Nullable C2089s c2089s, String str) {
            int i;
            int m2349a = C1999c.m2349a(str, 0, str.length());
            int m2331b = C1999c.m2331b(str, m2349a, str.length());
            if (m1917b(str, m2349a, m2331b) != -1) {
                if (str.regionMatches(true, m2349a, "https:", 0, 6)) {
                    this.f5358a = "https";
                    m2349a += 6;
                } else if (!str.regionMatches(true, m2349a, "http:", 0, 5)) {
                    return EnumC2091a.UNSUPPORTED_SCHEME;
                } else {
                    this.f5358a = "http";
                    m2349a += 5;
                }
            } else if (c2089s == null) {
                return EnumC2091a.MISSING_SCHEME;
            } else {
                this.f5358a = c2089s.f5349a;
            }
            int m1914c = m1914c(str, m2349a, m2331b);
            if (m1914c >= 2 || c2089s == null || !c2089s.f5349a.equals(this.f5358a)) {
                boolean z = false;
                boolean z2 = false;
                int i2 = m2349a + m1914c;
                while (true) {
                    i = C1999c.m2347a(str, i2, m2331b, "@/\\?#");
                    char charAt = i != m2331b ? str.charAt(i) : (char) 65535;
                    if (charAt == 65535 || charAt == '#' || charAt == '/' || charAt == '\\' || charAt == '?') {
                        break;
                    } else if (charAt == '@') {
                        if (!z2) {
                            int m2348a = C1999c.m2348a(str, i2, i, ':');
                            String m1950a = C2089s.m1950a(str, i2, m2348a, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                            String str2 = m1950a;
                            if (z) {
                                str2 = this.f5359b + "%40" + m1950a;
                            }
                            this.f5359b = str2;
                            if (m2348a != i) {
                                this.f5360c = C2089s.m1950a(str, m2348a + 1, i, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                                z2 = true;
                            }
                            z = true;
                        } else {
                            this.f5360c += "%40" + C2089s.m1950a(str, i2, i, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                        }
                        i2 = i + 1;
                    }
                }
                int m1911d = m1911d(str, i2, i);
                int i3 = m1911d + 1;
                if (i3 < i) {
                    this.f5361d = m1909e(str, i2, m1911d);
                    this.f5362e = m1907f(str, i3, i);
                    if (this.f5362e == -1) {
                        return EnumC2091a.INVALID_PORT;
                    }
                } else {
                    this.f5361d = m1909e(str, i2, m1911d);
                    this.f5362e = C2089s.m1952a(this.f5358a);
                }
                if (this.f5361d == null) {
                    return EnumC2091a.INVALID_HOST;
                }
            } else {
                this.f5359b = c2089s.m1937e();
                this.f5360c = c2089s.m1935f();
                this.f5361d = c2089s.f5350b;
                this.f5362e = c2089s.f5351c;
                this.f5363f.clear();
                this.f5363f.addAll(c2089s.m1931j());
                if (m2349a == m2331b || str.charAt(m2349a) == '#') {
                    m1908f(c2089s.m1930k());
                }
                i = m2349a;
            }
            int m2347a = C1999c.m2347a(str, i, m2331b, "?#");
            m1922a(str, i, m2347a);
            int i4 = m2347a;
            if (m2347a < m2331b) {
                i4 = m2347a;
                if (str.charAt(m2347a) == '?') {
                    i4 = C1999c.m2348a(str, m2347a, m2331b, '#');
                    this.f5364g = C2089s.m1943b(C2089s.m1950a(str, m2347a + 1, i4, " \"'<>#", true, false, true, true, null));
                }
            }
            if (i4 < m2331b && str.charAt(i4) == '#') {
                this.f5365h = C2089s.m1950a(str, 1 + i4, m2331b, "", true, false, false, false, null);
            }
            return EnumC2091a.SUCCESS;
        }

        /* renamed from: a */
        public C2090a m1924a(int i) {
            if (i > 0 && i <= 65535) {
                this.f5362e = i;
                return this;
            }
            throw new IllegalArgumentException("unexpected port: " + i);
        }

        /* renamed from: a */
        public C2090a m1923a(String str) {
            if (str != null) {
                if (str.equalsIgnoreCase("http")) {
                    this.f5358a = "http";
                } else if (!str.equalsIgnoreCase("https")) {
                    throw new IllegalArgumentException("unexpected scheme: " + str);
                } else {
                    this.f5358a = "https";
                }
                return this;
            }
            throw new NullPointerException("scheme == null");
        }

        /* renamed from: b */
        C2090a m1919b() {
            int size = this.f5363f.size();
            for (int i = 0; i < size; i++) {
                this.f5363f.set(i, C2089s.m1948a(this.f5363f.get(i), "[]", true, true, false, true));
            }
            List<String> list = this.f5364g;
            if (list != null) {
                int size2 = list.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    String str = this.f5364g.get(i2);
                    if (str != null) {
                        this.f5364g.set(i2, C2089s.m1948a(str, "\\^`{|}", true, true, true, true));
                    }
                }
            }
            String str2 = this.f5365h;
            if (str2 != null) {
                this.f5365h = C2089s.m1948a(str2, " \"#<>\\^`{|}", true, true, false, false);
            }
            return this;
        }

        /* renamed from: b */
        public C2090a m1918b(String str) {
            if (str != null) {
                this.f5359b = C2089s.m1948a(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
                return this;
            }
            throw new NullPointerException("username == null");
        }

        /* renamed from: c */
        public C2090a m1915c(String str) {
            if (str != null) {
                this.f5360c = C2089s.m1948a(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
                return this;
            }
            throw new NullPointerException("password == null");
        }

        /* renamed from: c */
        public C2089s m1916c() {
            if (this.f5358a != null) {
                if (this.f5361d == null) {
                    throw new IllegalStateException("host == null");
                }
                return new C2089s(this);
            }
            throw new IllegalStateException("scheme == null");
        }

        /* renamed from: d */
        public C2090a m1912d(String str) {
            if (str != null) {
                String m1909e = m1909e(str, 0, str.length());
                if (m1909e != null) {
                    this.f5361d = m1909e;
                    return this;
                }
                throw new IllegalArgumentException("unexpected host: " + str);
            }
            throw new NullPointerException("host == null");
        }

        /* renamed from: e */
        public C2090a m1910e(@Nullable String str) {
            this.f5364g = str != null ? C2089s.m1943b(C2089s.m1948a(str, " \"'<>#", false, false, true, true)) : null;
            return this;
        }

        /* renamed from: f */
        public C2090a m1908f(@Nullable String str) {
            this.f5364g = str != null ? C2089s.m1943b(C2089s.m1948a(str, " \"'<>#", true, false, true, true)) : null;
            return this;
        }

        /* renamed from: g */
        public C2090a m1906g(@Nullable String str) {
            this.f5365h = str != null ? C2089s.m1948a(str, "", false, false, false, false) : null;
            return this;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f5358a);
            sb.append("://");
            if (!this.f5359b.isEmpty() || !this.f5360c.isEmpty()) {
                sb.append(this.f5359b);
                if (!this.f5360c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f5360c);
                }
                sb.append('@');
            }
            if (this.f5361d.indexOf(58) != -1) {
                sb.append('[');
                sb.append(this.f5361d);
                sb.append(']');
            } else {
                sb.append(this.f5361d);
            }
            int m1925a = m1925a();
            if (m1925a != C2089s.m1952a(this.f5358a)) {
                sb.append(':');
                sb.append(m1925a);
            }
            C2089s.m1946a(sb, this.f5363f);
            if (this.f5364g != null) {
                sb.append('?');
                C2089s.m1942b(sb, this.f5364g);
            }
            if (this.f5365h != null) {
                sb.append('#');
                sb.append(this.f5365h);
            }
            return sb.toString();
        }
    }

    C2089s(C2090a c2090a) {
        this.f5349a = c2090a.f5358a;
        this.f5352e = m1947a(c2090a.f5359b, false);
        this.f5353f = m1947a(c2090a.f5360c, false);
        this.f5350b = c2090a.f5361d;
        this.f5351c = c2090a.m1925a();
        this.f5354g = m1945a(c2090a.f5363f, false);
        this.f5355h = c2090a.f5364g != null ? m1945a(c2090a.f5364g, true) : null;
        this.f5356i = c2090a.f5365h != null ? m1947a(c2090a.f5365h, false) : null;
        this.f5357j = c2090a.toString();
    }

    /* renamed from: a */
    public static int m1952a(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    /* renamed from: a */
    static String m1950a(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        int i3;
        int i4 = i;
        while (true) {
            i3 = i4;
            if (i3 >= i2) {
                return str.substring(i, i2);
            }
            int codePointAt = str.codePointAt(i3);
            if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || ((codePointAt == 37 && (!z || (z2 && !m1951a(str, i3, i2)))) || (codePointAt == 43 && z3)))) {
                break;
            }
            i4 = i3 + Character.charCount(codePointAt);
        }
        C0005c c0005c = new C0005c();
        c0005c.m8140a(str, i, i3);
        m1954a(c0005c, str, i3, i2, str2, z, z2, z3, z4, charset);
        return c0005c.m8121o();
    }

    /* renamed from: a */
    static String m1949a(String str, int i, int i2, boolean z) {
        for (int i3 = i; i3 < i2; i3++) {
            char charAt = str.charAt(i3);
            if (charAt == '%' || (charAt == '+' && z)) {
                C0005c c0005c = new C0005c();
                c0005c.m8140a(str, i, i3);
                m1953a(c0005c, str, i3, i2, z);
                return c0005c.m8121o();
            }
        }
        return str.substring(i, i2);
    }

    /* renamed from: a */
    static String m1948a(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        return m1950a(str, 0, str.length(), str2, z, z2, z3, z4, null);
    }

    /* renamed from: a */
    static String m1947a(String str, boolean z) {
        return m1949a(str, 0, str.length(), z);
    }

    /* renamed from: a */
    private List<String> m1945a(List<String> list, boolean z) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            String str = list.get(i);
            arrayList.add(str != null ? m1947a(str, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: a */
    static void m1954a(C0005c c0005c, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        C0005c c0005c2;
        C0005c c0005c3 = null;
        while (true) {
            C0005c c0005c4 = c0005c3;
            if (i < i2) {
                int codePointAt = str.codePointAt(i);
                if (z) {
                    c0005c2 = c0005c4;
                    if (codePointAt != 9) {
                        c0005c2 = c0005c4;
                        if (codePointAt != 10) {
                            c0005c2 = c0005c4;
                            if (codePointAt != 12) {
                                if (codePointAt == 13) {
                                    c0005c2 = c0005c4;
                                }
                            }
                        }
                    }
                    i += Character.charCount(codePointAt);
                    c0005c3 = c0005c2;
                }
                if (codePointAt == 43 && z3) {
                    c0005c.mo8089b(z ? "+" : "%2B");
                    c0005c2 = c0005c4;
                } else if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || (codePointAt == 37 && (!z || (z2 && !m1951a(str, i, i2)))))) {
                    C0005c c0005c5 = c0005c4;
                    if (c0005c4 == null) {
                        c0005c5 = new C0005c();
                    }
                    if (charset == null || charset.equals(C1999c.f4986e)) {
                        c0005c5.m8147a(codePointAt);
                    } else {
                        c0005c5.m8139a(str, i, Character.charCount(codePointAt) + i, charset);
                    }
                    while (true) {
                        c0005c2 = c0005c5;
                        if (!c0005c5.mo8070e()) {
                            int mo8066h = c0005c5.mo8066h() & 255;
                            c0005c.mo8084i(37);
                            c0005c.mo8084i((int) f5348d[(mo8066h >> 4) & 15]);
                            c0005c.mo8084i((int) f5348d[mo8066h & 15]);
                        }
                    }
                } else {
                    c0005c.m8147a(codePointAt);
                    c0005c2 = c0005c4;
                }
                i += Character.charCount(codePointAt);
                c0005c3 = c0005c2;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    static void m1953a(C0005c c0005c, String str, int i, int i2, boolean z) {
        int i3;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt != 37 || (i3 = i + 2) >= i2) {
                if (codePointAt == 43 && z) {
                    c0005c.mo8084i(32);
                    i += Character.charCount(codePointAt);
                }
                c0005c.m8147a(codePointAt);
                i += Character.charCount(codePointAt);
            } else {
                int m2357a = C1999c.m2357a(str.charAt(i + 1));
                int m2357a2 = C1999c.m2357a(str.charAt(i3));
                if (m2357a != -1 && m2357a2 != -1) {
                    c0005c.mo8084i((m2357a << 4) + m2357a2);
                    i = i3;
                    i += Character.charCount(codePointAt);
                }
                c0005c.m8147a(codePointAt);
                i += Character.charCount(codePointAt);
            }
        }
    }

    /* renamed from: a */
    static void m1946a(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append('/');
            sb.append(list.get(i));
        }
    }

    /* renamed from: a */
    static boolean m1951a(String str, int i, int i2) {
        int i3 = i + 2;
        boolean z = true;
        if (i3 >= i2 || str.charAt(i) != '%' || C1999c.m2357a(str.charAt(i + 1)) == -1 || C1999c.m2357a(str.charAt(i3)) == -1) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    static List<String> m1943b(String str) {
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
                    arrayList.add(null);
                } else {
                    arrayList.add(str.substring(i2, indexOf2));
                    arrayList.add(str.substring(indexOf2 + 1, i3));
                }
                i = i3 + 1;
            } else {
                return arrayList;
            }
        }
    }

    /* renamed from: b */
    static void m1942b(StringBuilder sb, List<String> list) {
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
    /* renamed from: e */
    public static C2089s m1936e(String str) {
        C2090a c2090a = new C2090a();
        C2089s c2089s = null;
        if (c2090a.m1920a(null, str) == C2090a.EnumC2091a.SUCCESS) {
            c2089s = c2090a.m1916c();
        }
        return c2089s;
    }

    /* renamed from: a */
    public URL m1955a() {
        try {
            return new URL(this.f5357j);
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: b */
    public URI m1944b() {
        String c2090a = m1926o().m1919b().toString();
        try {
            return new URI(c2090a);
        } catch (URISyntaxException e) {
            try {
                return URI.create(c2090a.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception e2) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: c */
    public String m1941c() {
        return this.f5349a;
    }

    @Nullable
    /* renamed from: c */
    public C2089s m1940c(String str) {
        C2090a m1938d = m1938d(str);
        return m1938d != null ? m1938d.m1916c() : null;
    }

    @Nullable
    /* renamed from: d */
    public C2090a m1938d(String str) {
        C2090a c2090a = new C2090a();
        return c2090a.m1920a(this, str) == C2090a.EnumC2091a.SUCCESS ? c2090a : null;
    }

    /* renamed from: d */
    public boolean m1939d() {
        return this.f5349a.equals("https");
    }

    /* renamed from: e */
    public String m1937e() {
        if (this.f5352e.isEmpty()) {
            return "";
        }
        int length = this.f5349a.length() + 3;
        String str = this.f5357j;
        return this.f5357j.substring(length, C1999c.m2347a(str, length, str.length(), ":@"));
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof C2089s) && ((C2089s) obj).f5357j.equals(this.f5357j);
    }

    /* renamed from: f */
    public String m1935f() {
        if (this.f5353f.isEmpty()) {
            return "";
        }
        int indexOf = this.f5357j.indexOf(58, this.f5349a.length() + 3);
        return this.f5357j.substring(indexOf + 1, this.f5357j.indexOf(64));
    }

    /* renamed from: g */
    public String m1934g() {
        return this.f5350b;
    }

    /* renamed from: h */
    public int m1933h() {
        return this.f5351c;
    }

    public int hashCode() {
        return this.f5357j.hashCode();
    }

    /* renamed from: i */
    public String m1932i() {
        int indexOf = this.f5357j.indexOf(47, this.f5349a.length() + 3);
        String str = this.f5357j;
        return this.f5357j.substring(indexOf, C1999c.m2347a(str, indexOf, str.length(), "?#"));
    }

    /* renamed from: j */
    public List<String> m1931j() {
        int indexOf = this.f5357j.indexOf(47, this.f5349a.length() + 3);
        String str = this.f5357j;
        int m2347a = C1999c.m2347a(str, indexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < m2347a) {
            int i = indexOf + 1;
            indexOf = C1999c.m2348a(this.f5357j, i, m2347a, '/');
            arrayList.add(this.f5357j.substring(i, indexOf));
        }
        return arrayList;
    }

    @Nullable
    /* renamed from: k */
    public String m1930k() {
        if (this.f5355h == null) {
            return null;
        }
        int indexOf = this.f5357j.indexOf(63) + 1;
        String str = this.f5357j;
        return this.f5357j.substring(indexOf, C1999c.m2348a(str, indexOf, str.length(), '#'));
    }

    @Nullable
    /* renamed from: l */
    public String m1929l() {
        if (this.f5355h == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        m1942b(sb, this.f5355h);
        return sb.toString();
    }

    @Nullable
    /* renamed from: m */
    public String m1928m() {
        if (this.f5356i == null) {
            return null;
        }
        return this.f5357j.substring(this.f5357j.indexOf(35) + 1);
    }

    /* renamed from: n */
    public String m1927n() {
        return m1938d("/...").m1918b("").m1915c("").m1916c().toString();
    }

    /* renamed from: o */
    public C2090a m1926o() {
        C2090a c2090a = new C2090a();
        c2090a.f5358a = this.f5349a;
        c2090a.f5359b = m1937e();
        c2090a.f5360c = m1935f();
        c2090a.f5361d = this.f5350b;
        c2090a.f5362e = this.f5351c != m1952a(this.f5349a) ? this.f5351c : -1;
        c2090a.f5363f.clear();
        c2090a.f5363f.addAll(m1931j());
        c2090a.m1908f(m1930k());
        c2090a.f5365h = m1928m();
        return c2090a;
    }

    public String toString() {
        return this.f5357j;
    }
}
