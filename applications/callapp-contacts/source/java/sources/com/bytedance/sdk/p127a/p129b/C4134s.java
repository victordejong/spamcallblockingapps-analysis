package com.bytedance.sdk.p127a.p129b;

import com.bytedance.sdk.p127a.p128a.C3969c;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import com.mopub.common.Constants;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import okhttp3.HttpUrl;
/* renamed from: com.bytedance.sdk.a.b.s */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/s.class */
public final class C4134s {

    /* renamed from: d */
    private static final char[] f15114d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a */
    final String f15115a;

    /* renamed from: b */
    final String f15116b;

    /* renamed from: c */
    final int f15117c;

    /* renamed from: e */
    private final String f15118e;

    /* renamed from: f */
    private final String f15119f;

    /* renamed from: g */
    private final List<String> f15120g;

    /* renamed from: h */
    private final List<String> f15121h;

    /* renamed from: i */
    private final String f15122i;

    /* renamed from: j */
    private final String f15123j;

    /* renamed from: com.bytedance.sdk.a.b.s$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/s$a.class */
    public static final class C4135a {

        /* renamed from: a */
        String f15124a;

        /* renamed from: d */
        String f15127d;

        /* renamed from: f */
        final List<String> f15129f;

        /* renamed from: g */
        List<String> f15130g;

        /* renamed from: h */
        String f15131h;

        /* renamed from: b */
        String f15125b = "";

        /* renamed from: c */
        String f15126c = "";

        /* renamed from: e */
        int f15128e = -1;

        /* renamed from: com.bytedance.sdk.a.b.s$a$a */
        /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/s$a$a.class */
        public enum EnumC4136a {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public C4135a() {
            ArrayList arrayList = new ArrayList();
            this.f15129f = arrayList;
            arrayList.add("");
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0057  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x004f -> B:12:0x0052). Please submit an issue!!! */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void m36422a(java.lang.String r8, int r9, int r10) {
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
                java.util.List<java.lang.String> r0 = r0.f15129f
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
                java.util.List<java.lang.String> r0 = r0.f15129f
                r0.clear()
                r0 = r7
                java.util.List<java.lang.String> r0 = r0.f15129f
                java.lang.String r1 = ""
                boolean r0 = r0.add(r1)
            L4f:
                int r9 = r9 + 1
            L52:
                r0 = r9
                r1 = r10
                if (r0 >= r1) goto L89
                r0 = r8
                r1 = r9
                r2 = r10
                java.lang.String r3 = "/\\"
                int r0 = com.bytedance.sdk.p127a.p129b.p130a.C4015c.m36908a(r0, r1, r2, r3)
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
                r0.m36421a(r1, r2, r3, r4, r5)
                r0 = r11
                r9 = r0
                r0 = r13
                if (r0 == 0) goto L52
                r0 = r11
                r9 = r0
                goto L4f
            L89:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.p127a.p129b.C4134s.C4135a.m36422a(java.lang.String, int, int):void");
        }

        /* renamed from: a */
        private void m36421a(String str, int i, int i2, boolean z, boolean z2) {
            String m36451a = C4134s.m36451a(str, i, i2, HttpUrl.PATH_SEGMENT_ENCODE_SET, z2, false, false, true, null);
            if (m36409f(m36451a)) {
                return;
            }
            if (m36407g(m36451a)) {
                m36414d();
                return;
            }
            List<String> list = this.f15129f;
            if (list.get(list.size() - 1).isEmpty()) {
                List<String> list2 = this.f15129f;
                list2.set(list2.size() - 1, m36451a);
            } else {
                this.f15129f.add(m36451a);
            }
            if (!z) {
                return;
            }
            this.f15129f.add("");
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x001b, code lost:
            if (r0 > 'z') goto L9;
         */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static int m36418b(java.lang.String r3, int r4, int r5) {
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
                if (r0 < r1) goto L90
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 90
                if (r0 <= r1) goto L30
                goto L90
            L30:
                r0 = r7
                r1 = 1
                int r0 = r0 + r1
                r4 = r0
                r0 = r4
                r1 = r5
                if (r0 >= r1) goto L90
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
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 46
                if (r0 == r1) goto L30
                r0 = r6
                r1 = 58
                if (r0 != r1) goto L90
                r0 = r4
                return r0
            L90:
                r0 = -1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.p127a.p129b.C4134s.C4135a.m36418b(java.lang.String, int, int):int");
        }

        /* renamed from: c */
        private static int m36415c(String str, int i, int i2) {
            char charAt;
            int i3 = 0;
            while (i < i2 && ((charAt = str.charAt(i)) == '\\' || charAt == '/')) {
                i3++;
                i++;
            }
            return i3;
        }

        /* renamed from: d */
        private static int m36412d(String str, int i, int i2) {
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
        private void m36414d() {
            List<String> list = this.f15129f;
            if (!list.remove(list.size() - 1).isEmpty() || this.f15129f.isEmpty()) {
                this.f15129f.add("");
                return;
            }
            List<String> list2 = this.f15129f;
            list2.set(list2.size() - 1, "");
        }

        /* renamed from: e */
        private static String m36410e(String str, int i, int i2) {
            return C4015c.m36911a(C4134s.m36450a(str, i, i2, false));
        }

        /* renamed from: f */
        private static int m36408f(String str, int i, int i2) {
            try {
                int parseInt = Integer.parseInt(C4134s.m36451a(str, i, i2, "", false, false, false, true, null));
                if (parseInt > 0 && parseInt <= 65535) {
                    return parseInt;
                }
                return -1;
            } catch (NumberFormatException e) {
                return -1;
            }
        }

        /* renamed from: f */
        private boolean m36409f(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        /* renamed from: g */
        private boolean m36407g(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        /* renamed from: a */
        final int m36426a() {
            int i = this.f15128e;
            return i != -1 ? i : C4134s.m36453a(this.f15124a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x00ce, code lost:
            if (r13.charAt(r14) == '#') goto L25;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final com.bytedance.sdk.p127a.p129b.C4134s.C4135a.EnumC4136a m36424a(com.bytedance.sdk.p127a.p129b.C4134s r12, java.lang.String r13) {
            /*
                Method dump skipped, instructions count: 707
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.p127a.p129b.C4134s.C4135a.m36424a(com.bytedance.sdk.a.b.s, java.lang.String):com.bytedance.sdk.a.b.s$a$a");
        }

        /* renamed from: a */
        public final C4135a m36425a(int i) {
            if (i <= 0 || i > 65535) {
                throw new IllegalArgumentException("unexpected port: ".concat(String.valueOf(i)));
            }
            this.f15128e = i;
            return this;
        }

        /* renamed from: a */
        public final C4135a m36423a(String str) {
            Objects.requireNonNull(str, "scheme == null");
            if (str.equalsIgnoreCase("http")) {
                this.f15124a = "http";
            } else if (!str.equalsIgnoreCase(Constants.HTTPS)) {
                throw new IllegalArgumentException("unexpected scheme: ".concat(String.valueOf(str)));
            } else {
                this.f15124a = Constants.HTTPS;
            }
            return this;
        }

        /* renamed from: b */
        final C4135a m36420b() {
            int size = this.f15129f.size();
            for (int i = 0; i < size; i++) {
                this.f15129f.set(i, C4134s.m36449a(this.f15129f.get(i), HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, true, true, false, true));
            }
            List<String> list = this.f15130g;
            if (list != null) {
                int size2 = list.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    String str = this.f15130g.get(i2);
                    if (str != null) {
                        this.f15130g.set(i2, C4134s.m36449a(str, HttpUrl.QUERY_COMPONENT_ENCODE_SET_URI, true, true, true, true));
                    }
                }
            }
            String str2 = this.f15131h;
            if (str2 != null) {
                this.f15131h = C4134s.m36449a(str2, HttpUrl.FRAGMENT_ENCODE_SET_URI, true, true, false, false);
            }
            return this;
        }

        /* renamed from: b */
        public final C4135a m36419b(String str) {
            Objects.requireNonNull(str, "username == null");
            this.f15125b = C4134s.m36449a(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        /* renamed from: c */
        public final C4135a m36416c(String str) {
            Objects.requireNonNull(str, "password == null");
            this.f15126c = C4134s.m36449a(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        /* renamed from: c */
        public final C4134s m36417c() {
            if (this.f15124a != null) {
                if (this.f15127d == null) {
                    throw new IllegalStateException("host == null");
                }
                return new C4134s(this);
            }
            throw new IllegalStateException("scheme == null");
        }

        /* renamed from: d */
        public final C4135a m36413d(String str) {
            Objects.requireNonNull(str, "host == null");
            String m36410e = m36410e(str, 0, str.length());
            if (m36410e != null) {
                this.f15127d = m36410e;
                return this;
            }
            throw new IllegalArgumentException("unexpected host: ".concat(String.valueOf(str)));
        }

        /* renamed from: e */
        public final C4135a m36411e(String str) {
            this.f15130g = str != null ? C4134s.m36443b(C4134s.m36449a(str, HttpUrl.QUERY_ENCODE_SET, true, false, true, true)) : null;
            return this;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f15124a);
            sb.append("://");
            if (!this.f15125b.isEmpty() || !this.f15126c.isEmpty()) {
                sb.append(this.f15125b);
                if (!this.f15126c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f15126c);
                }
                sb.append('@');
            }
            if (this.f15127d.indexOf(58) != -1) {
                sb.append('[');
                sb.append(this.f15127d);
                sb.append(']');
            } else {
                sb.append(this.f15127d);
            }
            int m36426a = m36426a();
            if (m36426a != C4134s.m36453a(this.f15124a)) {
                sb.append(':');
                sb.append(m36426a);
            }
            C4134s.m36447a(sb, this.f15129f);
            if (this.f15130g != null) {
                sb.append('?');
                C4134s.m36442b(sb, this.f15130g);
            }
            if (this.f15131h != null) {
                sb.append('#');
                sb.append(this.f15131h);
            }
            return sb.toString();
        }
    }

    C4134s(C4135a c4135a) {
        this.f15115a = c4135a.f15124a;
        this.f15118e = m36448a(c4135a.f15125b, false);
        this.f15119f = m36448a(c4135a.f15126c, false);
        this.f15116b = c4135a.f15127d;
        this.f15117c = c4135a.m36426a();
        this.f15120g = m36445a(c4135a.f15129f, false);
        this.f15121h = c4135a.f15130g != null ? m36445a(c4135a.f15130g, true) : null;
        this.f15122i = c4135a.f15131h != null ? m36448a(c4135a.f15131h, false) : null;
        this.f15123j = c4135a.toString();
    }

    /* renamed from: a */
    public static int m36453a(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals(Constants.HTTPS) ? 443 : -1;
    }

    /* renamed from: a */
    public static C4134s m36446a(URL url) {
        return m36436e(url.toString());
    }

    /* renamed from: a */
    static String m36451a(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        int i3;
        int i4 = i;
        while (true) {
            i3 = i4;
            if (i3 >= i2) {
                return str.substring(i, i2);
            }
            int codePointAt = str.codePointAt(i3);
            if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || ((codePointAt == 37 && (!z || (z2 && !m36452a(str, i3, i2)))) || (codePointAt == 43 && z3)))) {
                break;
            }
            i4 = i3 + Character.charCount(codePointAt);
        }
        C3969c c3969c = new C3969c();
        c3969c.m37127a(str, i, i3);
        m36455a(c3969c, str, i3, i2, str2, z, z2, z3, z4, charset);
        return c3969c.m37108o();
    }

    /* renamed from: a */
    static String m36450a(String str, int i, int i2, boolean z) {
        for (int i3 = i; i3 < i2; i3++) {
            char charAt = str.charAt(i3);
            if (charAt == '%' || (charAt == '+' && z)) {
                C3969c c3969c = new C3969c();
                c3969c.m37127a(str, i, i3);
                m36454a(c3969c, str, i3, i2, z);
                return c3969c.m37108o();
            }
        }
        return str.substring(i, i2);
    }

    /* renamed from: a */
    static String m36449a(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        return m36451a(str, 0, str.length(), str2, z, z2, z3, z4, null);
    }

    /* renamed from: a */
    static String m36448a(String str, boolean z) {
        return m36450a(str, 0, str.length(), z);
    }

    /* renamed from: a */
    private List<String> m36445a(List<String> list, boolean z) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            String str = list.get(i);
            arrayList.add(str != null ? m36448a(str, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: a */
    static void m36455a(C3969c c3969c, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        C3969c c3969c2;
        C3969c c3969c3 = null;
        while (true) {
            C3969c c3969c4 = c3969c3;
            if (i < i2) {
                int codePointAt = str.codePointAt(i);
                if (z) {
                    c3969c2 = c3969c4;
                    if (codePointAt != 9) {
                        c3969c2 = c3969c4;
                        if (codePointAt != 10) {
                            c3969c2 = c3969c4;
                            if (codePointAt != 12) {
                                c3969c2 = c3969c4;
                                if (codePointAt == 13) {
                                }
                            }
                        }
                    }
                    i += Character.charCount(codePointAt);
                    c3969c3 = c3969c2;
                }
                if (codePointAt == 43 && z3) {
                    c3969c.mo37077b(z ? "+" : "%2B");
                    c3969c2 = c3969c4;
                } else if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || (codePointAt == 37 && (!z || (z2 && !m36452a(str, i, i2)))))) {
                    C3969c c3969c5 = c3969c4;
                    if (c3969c4 == null) {
                        c3969c5 = new C3969c();
                    }
                    if (charset == null || charset.equals(C4015c.f14578e)) {
                        c3969c5.m37134a(codePointAt);
                    } else {
                        c3969c5.m37126a(str, i, Character.charCount(codePointAt) + i, charset);
                    }
                    while (true) {
                        c3969c2 = c3969c5;
                        if (!c3969c5.mo37058e()) {
                            int mo37054h = c3969c5.mo37054h() & 255;
                            c3969c.mo37072i(37);
                            char[] cArr = f15114d;
                            c3969c.mo37072i((int) cArr[(mo37054h >> 4) & 15]);
                            c3969c.mo37072i((int) cArr[mo37054h & 15]);
                        }
                    }
                } else {
                    c3969c.m37134a(codePointAt);
                    c3969c2 = c3969c4;
                }
                i += Character.charCount(codePointAt);
                c3969c3 = c3969c2;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    static void m36454a(C3969c c3969c, String str, int i, int i2, boolean z) {
        int i3;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt != 37 || (i3 = i + 2) >= i2) {
                if (codePointAt == 43 && z) {
                    c3969c.mo37072i(32);
                    i += Character.charCount(codePointAt);
                }
                c3969c.m37134a(codePointAt);
                i += Character.charCount(codePointAt);
            } else {
                int m36919a = C4015c.m36919a(str.charAt(i + 1));
                int m36919a2 = C4015c.m36919a(str.charAt(i3));
                if (m36919a != -1 && m36919a2 != -1) {
                    c3969c.mo37072i((m36919a << 4) + m36919a2);
                    i = i3;
                    i += Character.charCount(codePointAt);
                }
                c3969c.m37134a(codePointAt);
                i += Character.charCount(codePointAt);
            }
        }
    }

    /* renamed from: a */
    static void m36447a(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append('/');
            sb.append(list.get(i));
        }
    }

    /* renamed from: a */
    static boolean m36452a(String str, int i, int i2) {
        int i3 = i + 2;
        return i3 < i2 && str.charAt(i) == '%' && C4015c.m36919a(str.charAt(i + 1)) != -1 && C4015c.m36919a(str.charAt(i3)) != -1;
    }

    /* renamed from: b */
    static List<String> m36443b(String str) {
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
    static void m36442b(StringBuilder sb, List<String> list) {
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

    /* renamed from: e */
    public static C4134s m36436e(String str) {
        C4135a c4135a = new C4135a();
        if (c4135a.m36424a(null, str) == C4135a.EnumC4136a.SUCCESS) {
            return c4135a.m36417c();
        }
        return null;
    }

    /* renamed from: a */
    public final URI m36456a() {
        String c4135a = m36427n().m36420b().toString();
        try {
            return new URI(c4135a);
        } catch (URISyntaxException e) {
            try {
                return URI.create(c4135a.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception e2) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: b */
    public final String m36444b() {
        return this.f15115a;
    }

    /* renamed from: c */
    public final C4134s m36440c(String str) {
        C4135a m36438d = m36438d(str);
        if (m36438d != null) {
            return m36438d.m36417c();
        }
        return null;
    }

    /* renamed from: c */
    public final boolean m36441c() {
        return this.f15115a.equals(Constants.HTTPS);
    }

    /* renamed from: d */
    public final C4135a m36438d(String str) {
        C4135a c4135a = new C4135a();
        if (c4135a.m36424a(this, str) == C4135a.EnumC4136a.SUCCESS) {
            return c4135a;
        }
        return null;
    }

    /* renamed from: d */
    public final String m36439d() {
        if (this.f15118e.isEmpty()) {
            return "";
        }
        int length = this.f15115a.length() + 3;
        String str = this.f15123j;
        return this.f15123j.substring(length, C4015c.m36908a(str, length, str.length(), ":@"));
    }

    /* renamed from: e */
    public final String m36437e() {
        if (this.f15119f.isEmpty()) {
            return "";
        }
        int indexOf = this.f15123j.indexOf(58, this.f15115a.length() + 3);
        return this.f15123j.substring(indexOf + 1, this.f15123j.indexOf(64));
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C4134s) && ((C4134s) obj).f15123j.equals(this.f15123j);
    }

    /* renamed from: f */
    public final String m36435f() {
        return this.f15116b;
    }

    /* renamed from: g */
    public final int m36434g() {
        return this.f15117c;
    }

    /* renamed from: h */
    public final String m36433h() {
        int indexOf = this.f15123j.indexOf(47, this.f15115a.length() + 3);
        String str = this.f15123j;
        return this.f15123j.substring(indexOf, C4015c.m36908a(str, indexOf, str.length(), "?#"));
    }

    public final int hashCode() {
        return this.f15123j.hashCode();
    }

    /* renamed from: i */
    public final List<String> m36432i() {
        int indexOf = this.f15123j.indexOf(47, this.f15115a.length() + 3);
        String str = this.f15123j;
        int m36908a = C4015c.m36908a(str, indexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < m36908a) {
            int i = indexOf + 1;
            indexOf = C4015c.m36909a(this.f15123j, i, m36908a, '/');
            arrayList.add(this.f15123j.substring(i, indexOf));
        }
        return arrayList;
    }

    /* renamed from: j */
    public final String m36431j() {
        if (this.f15121h == null) {
            return null;
        }
        int indexOf = this.f15123j.indexOf(63) + 1;
        String str = this.f15123j;
        return this.f15123j.substring(indexOf, C4015c.m36909a(str, indexOf, str.length(), '#'));
    }

    /* renamed from: k */
    public final String m36430k() {
        if (this.f15121h == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        m36442b(sb, this.f15121h);
        return sb.toString();
    }

    /* renamed from: l */
    public final String m36429l() {
        if (this.f15122i == null) {
            return null;
        }
        return this.f15123j.substring(this.f15123j.indexOf(35) + 1);
    }

    /* renamed from: m */
    public final String m36428m() {
        return m36438d("/...").m36419b("").m36416c("").m36417c().toString();
    }

    /* renamed from: n */
    public final C4135a m36427n() {
        C4135a c4135a = new C4135a();
        c4135a.f15124a = this.f15115a;
        c4135a.f15125b = m36439d();
        c4135a.f15126c = m36437e();
        c4135a.f15127d = this.f15116b;
        c4135a.f15128e = this.f15117c != m36453a(this.f15115a) ? this.f15117c : -1;
        c4135a.f15129f.clear();
        c4135a.f15129f.addAll(m36432i());
        c4135a.m36411e(m36431j());
        c4135a.f15131h = m36429l();
        return c4135a;
    }

    public final String toString() {
        return this.f15123j;
    }
}
