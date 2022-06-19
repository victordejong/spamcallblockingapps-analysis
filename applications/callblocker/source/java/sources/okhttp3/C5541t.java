package okhttp3;

import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import okhttp3.internal.C5449c;
import p000a.C0005c;
/* renamed from: okhttp3.t */
/* loaded from: classes-dex2jar.jar:okhttp3/t.class */
public final class C5541t {

    /* renamed from: d */
    private static final char[] f23128d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a */
    final String f23129a;

    /* renamed from: b */
    final String f23130b;

    /* renamed from: c */
    final int f23131c;

    /* renamed from: e */
    private final String f23132e;

    /* renamed from: f */
    private final String f23133f;

    /* renamed from: g */
    private final List<String> f23134g;
    @Nullable

    /* renamed from: h */
    private final List<String> f23135h;
    @Nullable

    /* renamed from: i */
    private final String f23136i;

    /* renamed from: j */
    private final String f23137j;

    /* renamed from: okhttp3.t$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/t$a.class */
    public static final class C5542a {
        @Nullable

        /* renamed from: a */
        String f23138a;
        @Nullable

        /* renamed from: d */
        String f23141d;
        @Nullable

        /* renamed from: g */
        List<String> f23144g;
        @Nullable

        /* renamed from: h */
        String f23145h;

        /* renamed from: b */
        String f23139b = "";

        /* renamed from: c */
        String f23140c = "";

        /* renamed from: e */
        int f23142e = -1;

        /* renamed from: f */
        final List<String> f23143f = new ArrayList();

        /* renamed from: okhttp3.t$a$a */
        /* loaded from: classes-dex2jar.jar:okhttp3/t$a$a.class */
        public enum EnumC5543a {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public C5542a() {
            this.f23143f.add("");
        }

        /* renamed from: a */
        private void m235a(String str, int i, int i2) {
            if (i == i2) {
                return;
            }
            char charAt = str.charAt(i);
            if (charAt == '/' || charAt == '\\') {
                this.f23143f.clear();
                this.f23143f.add("");
                i++;
            } else {
                this.f23143f.set(this.f23143f.size() - 1, "");
            }
            while (i < i2) {
                int m667a = C5449c.m667a(str, i, i2, "/\\");
                boolean z = m667a < i2;
                m234a(str, i, m667a, z, true);
                i = m667a;
                if (z) {
                    i = m667a + 1;
                }
            }
        }

        /* renamed from: a */
        private void m234a(String str, int i, int i2, boolean z, boolean z2) {
            String m264a = C5541t.m264a(str, i, i2, " \"<>^`{}|/\\?#", z2, false, false, true, null);
            if (m219f(m264a)) {
                return;
            }
            if (m217g(m264a)) {
                m224d();
                return;
            }
            if (this.f23143f.get(this.f23143f.size() - 1).isEmpty()) {
                this.f23143f.set(this.f23143f.size() - 1, m264a);
            } else {
                this.f23143f.add(m264a);
            }
            if (!z) {
                return;
            }
            this.f23143f.add("");
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0035, code lost:
            if (r0 <= 'Z') goto L47;
         */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static int m229b(java.lang.String r3, int r4, int r5) {
            /*
                r0 = -1
                r6 = r0
                r0 = r5
                r1 = r4
                int r0 = r0 - r1
                r1 = 2
                if (r0 >= r1) goto Lf
                r0 = r6
                r7 = r0
            Lc:
                r0 = r7
                return r0
            Lf:
                r0 = r3
                r1 = r4
                char r0 = r0.charAt(r1)
                r8 = r0
                r0 = r8
                r1 = 97
                if (r0 < r1) goto L24
                r0 = r8
                r1 = 122(0x7a, float:1.71E-43)
                if (r0 <= r1) goto L38
            L24:
                r0 = r6
                r7 = r0
                r0 = r8
                r1 = 65
                if (r0 < r1) goto Lc
                r0 = r6
                r7 = r0
                r0 = r8
                r1 = 90
                if (r0 > r1) goto Lc
            L38:
                int r4 = r4 + 1
            L3b:
                r0 = r6
                r7 = r0
                r0 = r4
                r1 = r5
                if (r0 >= r1) goto Lc
                r0 = r3
                r1 = r4
                char r0 = r0.charAt(r1)
                r8 = r0
                r0 = r8
                r1 = 97
                if (r0 < r1) goto L58
                r0 = r8
                r1 = 122(0x7a, float:1.71E-43)
                if (r0 <= r1) goto L89
            L58:
                r0 = r8
                r1 = 65
                if (r0 < r1) goto L66
                r0 = r8
                r1 = 90
                if (r0 <= r1) goto L89
            L66:
                r0 = r8
                r1 = 48
                if (r0 < r1) goto L74
                r0 = r8
                r1 = 57
                if (r0 <= r1) goto L89
            L74:
                r0 = r8
                r1 = 43
                if (r0 == r1) goto L89
                r0 = r8
                r1 = 45
                if (r0 == r1) goto L89
                r0 = r8
                r1 = 46
                if (r0 != r1) goto L8f
            L89:
                int r4 = r4 + 1
                goto L3b
            L8f:
                r0 = r6
                r7 = r0
                r0 = r8
                r1 = 58
                if (r0 != r1) goto Lc
                r0 = r4
                r7 = r0
                goto Lc
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.C5541t.C5542a.m229b(java.lang.String, int, int):int");
        }

        /* renamed from: c */
        private static int m225c(String str, int i, int i2) {
            char charAt;
            int i3 = 0;
            while (i < i2 && ((charAt = str.charAt(i)) == '\\' || charAt == '/')) {
                i3++;
                i++;
            }
            return i3;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* renamed from: d */
        private static int m222d(String str, int i, int i2) {
            int i3;
            int i4;
            while (true) {
                if (i < i2) {
                    int i5 = i;
                    i3 = i;
                    switch (str.charAt(i)) {
                        case ':':
                            break;
                        case '[':
                            break;
                        default:
                            i4 = i;
                            continue;
                            i = i4 + 1;
                    }
                    while (true) {
                        int i6 = i5 + 1;
                        i4 = i6;
                        if (i6 < i2) {
                            i5 = i6;
                            if (str.charAt(i6) == ']') {
                                i4 = i6;
                            }
                        }
                    }
                    i = i4 + 1;
                } else {
                    i3 = i2;
                }
            }
            return i3;
        }

        /* renamed from: d */
        private void m224d() {
            if (!this.f23143f.remove(this.f23143f.size() - 1).isEmpty() || this.f23143f.isEmpty()) {
                this.f23143f.add("");
            } else {
                this.f23143f.set(this.f23143f.size() - 1, "");
            }
        }

        /* renamed from: e */
        private static String m220e(String str, int i, int i2) {
            return C5449c.m670a(C5541t.m263a(str, i, i2, false));
        }

        /* renamed from: f */
        private static int m218f(String str, int i, int i2) {
            int i3;
            try {
                i3 = Integer.parseInt(C5541t.m264a(str, i, i2, "", false, false, false, true, null));
                if (i3 <= 0 || i3 > 65535) {
                    i3 = -1;
                }
            } catch (NumberFormatException e) {
                i3 = -1;
            }
            return i3;
        }

        /* renamed from: f */
        private boolean m219f(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        /* renamed from: g */
        private boolean m217g(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        /* renamed from: a */
        int m238a() {
            return this.f23142e != -1 ? this.f23142e : C5541t.m266a(this.f23138a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:67:0x02e2, code lost:
            if (r14.charAt(r15) == '#') goto L68;
         */
        /* JADX WARN: Removed duplicated region for block: B:16:0x007b  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x00c0  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0111  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0117  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x01c8 A[SYNTHETIC] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        okhttp3.C5541t.C5542a.EnumC5543a m232a(@javax.annotation.Nullable okhttp3.C5541t r13, java.lang.String r14) {
            /*
                Method dump skipped, instructions count: 759
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.C5541t.C5542a.m232a(okhttp3.t, java.lang.String):okhttp3.t$a$a");
        }

        /* renamed from: a */
        public C5542a m237a(int i) {
            if (i <= 0 || i > 65535) {
                throw new IllegalArgumentException("unexpected port: " + i);
            }
            this.f23142e = i;
            return this;
        }

        /* renamed from: a */
        public C5542a m236a(String str) {
            if (str == null) {
                throw new NullPointerException("scheme == null");
            }
            if (str.equalsIgnoreCase("http")) {
                this.f23138a = "http";
            } else if (!str.equalsIgnoreCase("https")) {
                throw new IllegalArgumentException("unexpected scheme: " + str);
            } else {
                this.f23138a = "https";
            }
            return this;
        }

        /* renamed from: a */
        public C5542a m233a(String str, @Nullable String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (this.f23144g == null) {
                this.f23144g = new ArrayList();
            }
            this.f23144g.add(C5541t.m262a(str, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, true));
            this.f23144g.add(str2 != null ? C5541t.m262a(str2, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, true) : null);
            return this;
        }

        /* renamed from: b */
        C5542a m231b() {
            int size = this.f23143f.size();
            for (int i = 0; i < size; i++) {
                this.f23143f.set(i, C5541t.m262a(this.f23143f.get(i), "[]", true, true, false, true));
            }
            if (this.f23144g != null) {
                int size2 = this.f23144g.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    String str = this.f23144g.get(i2);
                    if (str != null) {
                        this.f23144g.set(i2, C5541t.m262a(str, "\\^`{|}", true, true, true, true));
                    }
                }
            }
            if (this.f23145h != null) {
                this.f23145h = C5541t.m262a(this.f23145h, " \"#<>\\^`{|}", true, true, false, false);
            }
            return this;
        }

        /* renamed from: b */
        public C5542a m230b(String str) {
            if (str == null) {
                throw new NullPointerException("username == null");
            }
            this.f23139b = C5541t.m262a(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        /* renamed from: b */
        public C5542a m228b(String str, @Nullable String str2) {
            if (str == null) {
                throw new NullPointerException("encodedName == null");
            }
            if (this.f23144g == null) {
                this.f23144g = new ArrayList();
            }
            this.f23144g.add(C5541t.m262a(str, " \"'<>#&=", true, false, true, true));
            this.f23144g.add(str2 != null ? C5541t.m262a(str2, " \"'<>#&=", true, false, true, true) : null);
            return this;
        }

        /* renamed from: c */
        public C5542a m226c(String str) {
            if (str == null) {
                throw new NullPointerException("password == null");
            }
            this.f23140c = C5541t.m262a(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        /* renamed from: c */
        public C5541t m227c() {
            if (this.f23138a == null) {
                throw new IllegalStateException("scheme == null");
            }
            if (this.f23141d != null) {
                return new C5541t(this);
            }
            throw new IllegalStateException("host == null");
        }

        /* renamed from: d */
        public C5542a m223d(String str) {
            if (str == null) {
                throw new NullPointerException("host == null");
            }
            String m220e = m220e(str, 0, str.length());
            if (m220e == null) {
                throw new IllegalArgumentException("unexpected host: " + str);
            }
            this.f23141d = m220e;
            return this;
        }

        /* renamed from: e */
        public C5542a m221e(@Nullable String str) {
            this.f23144g = str != null ? C5541t.m256b(C5541t.m262a(str, " \"'<>#", true, false, true, true)) : null;
            return this;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f23138a);
            sb.append("://");
            if (!this.f23139b.isEmpty() || !this.f23140c.isEmpty()) {
                sb.append(this.f23139b);
                if (!this.f23140c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f23140c);
                }
                sb.append('@');
            }
            if (this.f23141d.indexOf(58) != -1) {
                sb.append('[');
                sb.append(this.f23141d);
                sb.append(']');
            } else {
                sb.append(this.f23141d);
            }
            int m238a = m238a();
            if (m238a != C5541t.m266a(this.f23138a)) {
                sb.append(':');
                sb.append(m238a);
            }
            C5541t.m259a(sb, this.f23143f);
            if (this.f23144g != null) {
                sb.append('?');
                C5541t.m255b(sb, this.f23144g);
            }
            if (this.f23145h != null) {
                sb.append('#');
                sb.append(this.f23145h);
            }
            return sb.toString();
        }
    }

    C5541t(C5542a c5542a) {
        this.f23129a = c5542a.f23138a;
        this.f23132e = m260a(c5542a.f23139b, false);
        this.f23133f = m260a(c5542a.f23140c, false);
        this.f23130b = c5542a.f23141d;
        this.f23131c = c5542a.m238a();
        this.f23134g = m258a(c5542a.f23143f, false);
        this.f23135h = c5542a.f23144g != null ? m258a(c5542a.f23144g, true) : null;
        this.f23136i = c5542a.f23145h != null ? m260a(c5542a.f23145h, false) : null;
        this.f23137j = c5542a.toString();
    }

    /* renamed from: a */
    public static int m266a(String str) {
        return str.equals("http") ? 80 : str.equals("https") ? 443 : -1;
    }

    /* renamed from: a */
    static String m264a(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        int i3;
        String substring;
        int i4 = i;
        while (true) {
            i3 = i4;
            if (i3 >= i2) {
                substring = str.substring(i, i2);
                break;
            }
            int codePointAt = str.codePointAt(i3);
            if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || ((codePointAt == 37 && (!z || (z2 && !m265a(str, i3, i2)))) || (codePointAt == 43 && z3)))) {
                break;
            }
            i4 = i3 + Character.charCount(codePointAt);
        }
        C0005c c0005c = new C0005c();
        c0005c.m22565a(str, i, i3);
        m268a(c0005c, str, i3, i2, str2, z, z2, z3, z4, charset);
        substring = c0005c.m22546n();
        return substring;
    }

    /* renamed from: a */
    static String m263a(String str, int i, int i2, boolean z) {
        String substring;
        for (int i3 = i; i3 < i2; i3++) {
            char charAt = str.charAt(i3);
            if (charAt == '%' || (charAt == '+' && z)) {
                C0005c c0005c = new C0005c();
                c0005c.m22565a(str, i, i3);
                m267a(c0005c, str, i3, i2, z);
                substring = c0005c.m22546n();
                break;
            }
        }
        substring = str.substring(i, i2);
        return substring;
    }

    /* renamed from: a */
    static String m262a(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        return m264a(str, 0, str.length(), str2, z, z2, z3, z4, null);
    }

    /* renamed from: a */
    public static String m261a(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        return m264a(str, 0, str.length(), str2, z, z2, z3, z4, charset);
    }

    /* renamed from: a */
    static String m260a(String str, boolean z) {
        return m263a(str, 0, str.length(), z);
    }

    /* renamed from: a */
    private List<String> m258a(List<String> list, boolean z) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            String str = list.get(i);
            arrayList.add(str != null ? m260a(str, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: a */
    static void m268a(C0005c c0005c, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
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
                    c0005c.mo22513b(z ? "+" : "%2B");
                    c0005c2 = c0005c4;
                } else if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || (codePointAt == 37 && (!z || (z2 && !m265a(str, i, i2)))))) {
                    C0005c c0005c5 = c0005c4;
                    if (c0005c4 == null) {
                        c0005c5 = new C0005c();
                    }
                    if (charset == null || charset.equals(C5449c.f22760e)) {
                        c0005c5.m22572a(codePointAt);
                    } else {
                        c0005c5.m22564a(str, i, Character.charCount(codePointAt) + i, charset);
                    }
                    while (true) {
                        c0005c2 = c0005c5;
                        if (!c0005c5.mo22493e()) {
                            int mo22491g = c0005c5.mo22491g() & 255;
                            c0005c.mo22508i(37);
                            c0005c.mo22508i((int) f23128d[(mo22491g >> 4) & 15]);
                            c0005c.mo22508i((int) f23128d[mo22491g & 15]);
                        }
                    }
                } else {
                    c0005c.m22572a(codePointAt);
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
    static void m267a(C0005c c0005c, String str, int i, int i2, boolean z) {
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt != 37 || i + 2 >= i2) {
                if (codePointAt == 43 && z) {
                    c0005c.mo22508i(32);
                }
                c0005c.m22572a(codePointAt);
            } else {
                int m677a = C5449c.m677a(str.charAt(i + 1));
                int m677a2 = C5449c.m677a(str.charAt(i + 2));
                if (m677a != -1 && m677a2 != -1) {
                    c0005c.mo22508i((m677a << 4) + m677a2);
                    i += 2;
                }
                c0005c.m22572a(codePointAt);
            }
            i += Character.charCount(codePointAt);
        }
    }

    /* renamed from: a */
    static void m259a(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append('/');
            sb.append(list.get(i));
        }
    }

    /* renamed from: a */
    static boolean m265a(String str, int i, int i2) {
        return i + 2 < i2 && str.charAt(i) == '%' && C5449c.m677a(str.charAt(i + 1)) != -1 && C5449c.m677a(str.charAt(i + 2)) != -1;
    }

    /* renamed from: b */
    static List<String> m256b(String str) {
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
    static void m255b(StringBuilder sb, List<String> list) {
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
    public static C5541t m249e(String str) {
        C5541t c5541t = null;
        C5542a c5542a = new C5542a();
        if (c5542a.m232a((C5541t) null, str) == C5542a.EnumC5543a.SUCCESS) {
            c5541t = c5542a.m227c();
        }
        return c5541t;
    }

    /* renamed from: a */
    public URI m269a() {
        URI create;
        String c5542a = m239o().m231b().toString();
        try {
            create = new URI(c5542a);
        } catch (URISyntaxException e) {
            try {
                create = URI.create(c5542a.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception e2) {
                throw new RuntimeException(e);
            }
        }
        return create;
    }

    /* renamed from: b */
    public String m257b() {
        return this.f23129a;
    }

    @Nullable
    /* renamed from: c */
    public C5541t m253c(String str) {
        C5542a m251d = m251d(str);
        return m251d != null ? m251d.m227c() : null;
    }

    /* renamed from: c */
    public boolean m254c() {
        return this.f23129a.equals("https");
    }

    /* renamed from: d */
    public String m252d() {
        String substring;
        if (this.f23132e.isEmpty()) {
            substring = "";
        } else {
            int length = this.f23129a.length() + 3;
            substring = this.f23137j.substring(length, C5449c.m667a(this.f23137j, length, this.f23137j.length(), ":@"));
        }
        return substring;
    }

    @Nullable
    /* renamed from: d */
    public C5542a m251d(String str) {
        C5542a c5542a = new C5542a();
        return c5542a.m232a(this, str) == C5542a.EnumC5543a.SUCCESS ? c5542a : null;
    }

    /* renamed from: e */
    public String m250e() {
        String substring;
        if (this.f23133f.isEmpty()) {
            substring = "";
        } else {
            int indexOf = this.f23137j.indexOf(58, this.f23129a.length() + 3);
            substring = this.f23137j.substring(indexOf + 1, this.f23137j.indexOf(64));
        }
        return substring;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof C5541t) && ((C5541t) obj).f23137j.equals(this.f23137j);
    }

    /* renamed from: f */
    public String m248f() {
        return this.f23130b;
    }

    /* renamed from: g */
    public int m247g() {
        return this.f23131c;
    }

    /* renamed from: h */
    public String m246h() {
        int indexOf = this.f23137j.indexOf(47, this.f23129a.length() + 3);
        return this.f23137j.substring(indexOf, C5449c.m667a(this.f23137j, indexOf, this.f23137j.length(), "?#"));
    }

    public int hashCode() {
        return this.f23137j.hashCode();
    }

    /* renamed from: i */
    public List<String> m245i() {
        int indexOf = this.f23137j.indexOf(47, this.f23129a.length() + 3);
        int m667a = C5449c.m667a(this.f23137j, indexOf, this.f23137j.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < m667a) {
            int i = indexOf + 1;
            indexOf = C5449c.m668a(this.f23137j, i, m667a, '/');
            arrayList.add(this.f23137j.substring(i, indexOf));
        }
        return arrayList;
    }

    /* renamed from: j */
    public List<String> m244j() {
        return this.f23134g;
    }

    @Nullable
    /* renamed from: k */
    public String m243k() {
        String substring;
        if (this.f23135h == null) {
            substring = null;
        } else {
            int indexOf = this.f23137j.indexOf(63) + 1;
            substring = this.f23137j.substring(indexOf, C5449c.m668a(this.f23137j, indexOf, this.f23137j.length(), '#'));
        }
        return substring;
    }

    @Nullable
    /* renamed from: l */
    public String m242l() {
        String sb;
        if (this.f23135h == null) {
            sb = null;
        } else {
            StringBuilder sb2 = new StringBuilder();
            m255b(sb2, this.f23135h);
            sb = sb2.toString();
        }
        return sb;
    }

    @Nullable
    /* renamed from: m */
    public String m241m() {
        String substring;
        if (this.f23136i == null) {
            substring = null;
        } else {
            substring = this.f23137j.substring(this.f23137j.indexOf(35) + 1);
        }
        return substring;
    }

    /* renamed from: n */
    public String m240n() {
        return m251d("/...").m230b("").m226c("").m227c().toString();
    }

    /* renamed from: o */
    public C5542a m239o() {
        C5542a c5542a = new C5542a();
        c5542a.f23138a = this.f23129a;
        c5542a.f23139b = m252d();
        c5542a.f23140c = m250e();
        c5542a.f23141d = this.f23130b;
        c5542a.f23142e = this.f23131c != m266a(this.f23129a) ? this.f23131c : -1;
        c5542a.f23143f.clear();
        c5542a.f23143f.addAll(m245i());
        c5542a.m221e(m243k());
        c5542a.f23145h = m241m();
        return c5542a;
    }

    public String toString() {
        return this.f23137j;
    }
}
