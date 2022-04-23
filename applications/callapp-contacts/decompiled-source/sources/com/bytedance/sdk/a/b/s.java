package com.bytedance.sdk.a.b;

import com.bytedance.sdk.a.b.a.c;
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
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/s.class */
public final class s {

    /* renamed from: d  reason: collision with root package name */
    private static final char[] f8133d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a  reason: collision with root package name */
    final String f8134a;

    /* renamed from: b  reason: collision with root package name */
    final String f8135b;

    /* renamed from: c  reason: collision with root package name */
    final int f8136c;
    private final String e;
    private final String f;
    private final List<String> g;
    private final List<String> h;
    private final String i;
    private final String j;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/s$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        String f8137a;

        /* renamed from: d  reason: collision with root package name */
        String f8140d;
        final List<String> f;
        List<String> g;
        String h;

        /* renamed from: b  reason: collision with root package name */
        String f8138b = "";

        /* renamed from: c  reason: collision with root package name */
        String f8139c = "";
        int e = -1;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.bytedance.sdk.a.b.s$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/s$a$a.class */
        public enum EnumC0155a {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public a() {
            ArrayList arrayList = new ArrayList();
            this.f = arrayList;
            arrayList.add("");
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0057  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x004f -> B:12:0x0052). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void a(java.lang.String r8, int r9, int r10) {
            /*
                r7 = this;
                r0 = r9
                r1 = r10
                if (r0 != r1) goto L_0x0006
                return
            L_0x0006:
                r0 = r8
                r1 = r9
                char r0 = r0.charAt(r1)
                r11 = r0
                r0 = r11
                r1 = 47
                if (r0 == r1) goto L_0x003a
                r0 = r11
                r1 = 92
                if (r0 != r1) goto L_0x001e
                goto L_0x003a
            L_0x001e:
                r0 = r7
                java.util.List<java.lang.String> r0 = r0.f
                r12 = r0
                r0 = r12
                r1 = r12
                int r1 = r1.size()
                r2 = 1
                int r1 = r1 - r2
                java.lang.String r2 = ""
                java.lang.Object r0 = r0.set(r1, r2)
                goto L_0x0052
            L_0x003a:
                r0 = r7
                java.util.List<java.lang.String> r0 = r0.f
                r0.clear()
                r0 = r7
                java.util.List<java.lang.String> r0 = r0.f
                java.lang.String r1 = ""
                boolean r0 = r0.add(r1)
            L_0x004f:
                int r9 = r9 + 1
            L_0x0052:
                r0 = r9
                r1 = r10
                if (r0 >= r1) goto L_0x0089
                r0 = r8
                r1 = r9
                r2 = r10
                java.lang.String r3 = "/\\"
                int r0 = com.bytedance.sdk.a.b.a.c.a(r0, r1, r2, r3)
                r11 = r0
                r0 = r11
                r1 = r10
                if (r0 >= r1) goto L_0x006d
                r0 = 1
                r13 = r0
                goto L_0x0070
            L_0x006d:
                r0 = 0
                r13 = r0
            L_0x0070:
                r0 = r7
                r1 = r8
                r2 = r9
                r3 = r11
                r4 = r13
                r5 = 1
                r0.a(r1, r2, r3, r4, r5)
                r0 = r11
                r9 = r0
                r0 = r13
                if (r0 == 0) goto L_0x0052
                r0 = r11
                r9 = r0
                goto L_0x004f
            L_0x0089:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.b.s.a.a(java.lang.String, int, int):void");
        }

        private void a(String str, int i, int i2, boolean z, boolean z2) {
            String a2 = s.a(str, i, i2, HttpUrl.PATH_SEGMENT_ENCODE_SET, z2, false, false, true, null);
            if (!f(a2)) {
                if (g(a2)) {
                    d();
                    return;
                }
                List<String> list = this.f;
                if (list.get(list.size() - 1).isEmpty()) {
                    List<String> list2 = this.f;
                    list2.set(list2.size() - 1, a2);
                } else {
                    this.f.add(a2);
                }
                if (z) {
                    this.f.add("");
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x001b, code lost:
            if (r0 > 'z') goto L_0x001e;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static int b(java.lang.String r3, int r4, int r5) {
            /*
                r0 = r5
                r1 = r4
                int r0 = r0 - r1
                r1 = 2
                if (r0 >= r1) goto L_0x0009
                r0 = -1
                return r0
            L_0x0009:
                r0 = r3
                r1 = r4
                char r0 = r0.charAt(r1)
                r6 = r0
                r0 = r6
                r1 = 97
                if (r0 < r1) goto L_0x001e
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 122(0x7a, float:1.71E-43)
                if (r0 <= r1) goto L_0x0030
            L_0x001e:
                r0 = r6
                r1 = 65
                if (r0 < r1) goto L_0x0090
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 90
                if (r0 <= r1) goto L_0x0030
                goto L_0x0090
            L_0x0030:
                r0 = r7
                r1 = 1
                int r0 = r0 + r1
                r4 = r0
                r0 = r4
                r1 = r5
                if (r0 >= r1) goto L_0x0090
                r0 = r3
                r1 = r4
                char r0 = r0.charAt(r1)
                r6 = r0
                r0 = r6
                r1 = 97
                if (r0 < r1) goto L_0x004f
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 122(0x7a, float:1.71E-43)
                if (r0 <= r1) goto L_0x0030
            L_0x004f:
                r0 = r6
                r1 = 65
                if (r0 < r1) goto L_0x005e
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 90
                if (r0 <= r1) goto L_0x0030
            L_0x005e:
                r0 = r6
                r1 = 48
                if (r0 < r1) goto L_0x006d
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 57
                if (r0 <= r1) goto L_0x0030
            L_0x006d:
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 43
                if (r0 == r1) goto L_0x0030
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 45
                if (r0 == r1) goto L_0x0030
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 46
                if (r0 == r1) goto L_0x0030
                r0 = r6
                r1 = 58
                if (r0 != r1) goto L_0x0090
                r0 = r4
                return r0
            L_0x0090:
                r0 = -1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.b.s.a.b(java.lang.String, int, int):int");
        }

        private static int c(String str, int i, int i2) {
            char charAt;
            int i3 = 0;
            while (i < i2 && ((charAt = str.charAt(i)) == '\\' || charAt == '/')) {
                i3++;
                i++;
            }
            return i3;
        }

        private static int d(String str, int i, int i2) {
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

        private void d() {
            List<String> list = this.f;
            if (!list.remove(list.size() - 1).isEmpty() || this.f.isEmpty()) {
                this.f.add("");
                return;
            }
            List<String> list2 = this.f;
            list2.set(list2.size() - 1, "");
        }

        private static String e(String str, int i, int i2) {
            return c.a(s.a(str, i, i2, false));
        }

        private static int f(String str, int i, int i2) {
            try {
                int parseInt = Integer.parseInt(s.a(str, i, i2, "", false, false, false, true, null));
                if (parseInt <= 0 || parseInt > 65535) {
                    return -1;
                }
                return parseInt;
            } catch (NumberFormatException e) {
                return -1;
            }
        }

        private boolean f(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        private boolean g(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        final int a() {
            int i = this.e;
            return i != -1 ? i : s.a(this.f8137a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x00ce, code lost:
            if (r13.charAt(r14) == '#') goto L_0x00d1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final com.bytedance.sdk.a.b.s.a.EnumC0155a a(com.bytedance.sdk.a.b.s r12, java.lang.String r13) {
            /*
                Method dump skipped, instructions count: 707
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.b.s.a.a(com.bytedance.sdk.a.b.s, java.lang.String):com.bytedance.sdk.a.b.s$a$a");
        }

        public final a a(int i) {
            if (i <= 0 || i > 65535) {
                throw new IllegalArgumentException("unexpected port: ".concat(String.valueOf(i)));
            }
            this.e = i;
            return this;
        }

        public final a a(String str) {
            Objects.requireNonNull(str, "scheme == null");
            if (str.equalsIgnoreCase("http")) {
                this.f8137a = "http";
            } else if (str.equalsIgnoreCase(Constants.HTTPS)) {
                this.f8137a = Constants.HTTPS;
            } else {
                throw new IllegalArgumentException("unexpected scheme: ".concat(String.valueOf(str)));
            }
            return this;
        }

        final a b() {
            int size = this.f.size();
            for (int i = 0; i < size; i++) {
                this.f.set(i, s.a(this.f.get(i), HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, true, true, false, true));
            }
            List<String> list = this.g;
            if (list != null) {
                int size2 = list.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    String str = this.g.get(i2);
                    if (str != null) {
                        this.g.set(i2, s.a(str, HttpUrl.QUERY_COMPONENT_ENCODE_SET_URI, true, true, true, true));
                    }
                }
            }
            String str2 = this.h;
            if (str2 != null) {
                this.h = s.a(str2, HttpUrl.FRAGMENT_ENCODE_SET_URI, true, true, false, false);
            }
            return this;
        }

        public final a b(String str) {
            Objects.requireNonNull(str, "username == null");
            this.f8138b = s.a(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        public final a c(String str) {
            Objects.requireNonNull(str, "password == null");
            this.f8139c = s.a(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        public final s c() {
            if (this.f8137a == null) {
                throw new IllegalStateException("scheme == null");
            } else if (this.f8140d != null) {
                return new s(this);
            } else {
                throw new IllegalStateException("host == null");
            }
        }

        public final a d(String str) {
            Objects.requireNonNull(str, "host == null");
            String e = e(str, 0, str.length());
            if (e != null) {
                this.f8140d = e;
                return this;
            }
            throw new IllegalArgumentException("unexpected host: ".concat(String.valueOf(str)));
        }

        public final a e(String str) {
            this.g = str != null ? s.b(s.a(str, HttpUrl.QUERY_ENCODE_SET, true, false, true, true)) : null;
            return this;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f8137a);
            sb.append("://");
            if (!this.f8138b.isEmpty() || !this.f8139c.isEmpty()) {
                sb.append(this.f8138b);
                if (!this.f8139c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f8139c);
                }
                sb.append('@');
            }
            if (this.f8140d.indexOf(58) != -1) {
                sb.append('[');
                sb.append(this.f8140d);
                sb.append(']');
            } else {
                sb.append(this.f8140d);
            }
            int a2 = a();
            if (a2 != s.a(this.f8137a)) {
                sb.append(':');
                sb.append(a2);
            }
            s.a(sb, this.f);
            if (this.g != null) {
                sb.append('?');
                s.b(sb, this.g);
            }
            if (this.h != null) {
                sb.append('#');
                sb.append(this.h);
            }
            return sb.toString();
        }
    }

    s(a aVar) {
        this.f8134a = aVar.f8137a;
        this.e = a(aVar.f8138b, false);
        this.f = a(aVar.f8139c, false);
        this.f8135b = aVar.f8140d;
        this.f8136c = aVar.a();
        this.g = a(aVar.f, false);
        String str = null;
        this.h = aVar.g != null ? a(aVar.g, true) : null;
        this.i = aVar.h != null ? a(aVar.h, false) : str;
        this.j = aVar.toString();
    }

    public static int a(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals(Constants.HTTPS) ? 443 : -1;
    }

    public static s a(URL url) {
        return e(url.toString());
    }

    static String a(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        int i3 = i;
        while (i3 < i2) {
            int codePointAt = str.codePointAt(i3);
            if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || ((codePointAt == 37 && (!z || (z2 && !a(str, i3, i2)))) || (codePointAt == 43 && z3)))) {
                com.bytedance.sdk.a.a.c cVar = new com.bytedance.sdk.a.a.c();
                cVar.a(str, i, i3);
                a(cVar, str, i3, i2, str2, z, z2, z3, z4, charset);
                return cVar.o();
            }
            i3 += Character.charCount(codePointAt);
        }
        return str.substring(i, i2);
    }

    static String a(String str, int i, int i2, boolean z) {
        for (int i3 = i; i3 < i2; i3++) {
            char charAt = str.charAt(i3);
            if (charAt == '%' || (charAt == '+' && z)) {
                com.bytedance.sdk.a.a.c cVar = new com.bytedance.sdk.a.a.c();
                cVar.a(str, i, i3);
                a(cVar, str, i3, i2, z);
                return cVar.o();
            }
        }
        return str.substring(i, i2);
    }

    static String a(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        return a(str, 0, str.length(), str2, z, z2, z3, z4, null);
    }

    static String a(String str, boolean z) {
        return a(str, 0, str.length(), z);
    }

    private List<String> a(List<String> list, boolean z) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            String str = list.get(i);
            arrayList.add(str != null ? a(str, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    static void a(com.bytedance.sdk.a.a.c cVar, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        com.bytedance.sdk.a.a.c cVar2 = null;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (z) {
                cVar2 = cVar2;
                if (codePointAt != 9) {
                    cVar2 = cVar2;
                    if (codePointAt != 10) {
                        cVar2 = cVar2;
                        if (codePointAt != 12) {
                            cVar2 = cVar2;
                            if (codePointAt == 13) {
                            }
                        }
                    }
                }
                i += Character.charCount(codePointAt);
            }
            if (codePointAt == 43 && z3) {
                cVar.b(z ? "+" : "%2B");
                cVar2 = cVar2;
            } else if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || (codePointAt == 37 && (!z || (z2 && !a(str, i, i2)))))) {
                com.bytedance.sdk.a.a.c cVar3 = cVar2;
                if (cVar2 == null) {
                    cVar3 = new com.bytedance.sdk.a.a.c();
                }
                if (charset == null || charset.equals(c.e)) {
                    cVar3.a(codePointAt);
                } else {
                    cVar3.a(str, i, Character.charCount(codePointAt) + i, charset);
                }
                while (true) {
                    cVar2 = cVar3;
                    if (!cVar3.e()) {
                        int h = cVar3.h() & 255;
                        cVar.i(37);
                        char[] cArr = f8133d;
                        cVar.i((int) cArr[(h >> 4) & 15]);
                        cVar.i((int) cArr[h & 15]);
                    }
                }
            } else {
                cVar.a(codePointAt);
                cVar2 = cVar2;
            }
            i += Character.charCount(codePointAt);
        }
    }

    static void a(com.bytedance.sdk.a.a.c cVar, String str, int i, int i2, boolean z) {
        int i3;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt != 37 || (i3 = i + 2) >= i2) {
                if (codePointAt == 43 && z) {
                    cVar.i(32);
                    i += Character.charCount(codePointAt);
                }
                cVar.a(codePointAt);
                i += Character.charCount(codePointAt);
            } else {
                int a2 = c.a(str.charAt(i + 1));
                int a3 = c.a(str.charAt(i3));
                if (!(a2 == -1 || a3 == -1)) {
                    cVar.i((a2 << 4) + a3);
                    i = i3;
                    i += Character.charCount(codePointAt);
                }
                cVar.a(codePointAt);
                i += Character.charCount(codePointAt);
            }
        }
    }

    static void a(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append('/');
            sb.append(list.get(i));
        }
    }

    static boolean a(String str, int i, int i2) {
        int i3 = i + 2;
        return i3 < i2 && str.charAt(i) == '%' && c.a(str.charAt(i + 1)) != -1 && c.a(str.charAt(i3)) != -1;
    }

    static List<String> b(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i <= str.length()) {
            int indexOf = str.indexOf(38, i);
            int i2 = indexOf;
            if (indexOf == -1) {
                i2 = str.length();
            }
            int indexOf2 = str.indexOf(61, i);
            if (indexOf2 == -1 || indexOf2 > i2) {
                arrayList.add(str.substring(i, i2));
                arrayList.add(null);
            } else {
                arrayList.add(str.substring(i, indexOf2));
                arrayList.add(str.substring(indexOf2 + 1, i2));
            }
            i = i2 + 1;
        }
        return arrayList;
    }

    static void b(StringBuilder sb, List<String> list) {
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

    public static s e(String str) {
        a aVar = new a();
        if (aVar.a(null, str) == a.EnumC0155a.SUCCESS) {
            return aVar.c();
        }
        return null;
    }

    public final URI a() {
        String aVar = n().b().toString();
        try {
            return new URI(aVar);
        } catch (URISyntaxException e) {
            try {
                return URI.create(aVar.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception e2) {
                throw new RuntimeException(e);
            }
        }
    }

    public final String b() {
        return this.f8134a;
    }

    public final s c(String str) {
        a d2 = d(str);
        if (d2 != null) {
            return d2.c();
        }
        return null;
    }

    public final boolean c() {
        return this.f8134a.equals(Constants.HTTPS);
    }

    public final a d(String str) {
        a aVar = new a();
        if (aVar.a(this, str) == a.EnumC0155a.SUCCESS) {
            return aVar;
        }
        return null;
    }

    public final String d() {
        if (this.e.isEmpty()) {
            return "";
        }
        int length = this.f8134a.length() + 3;
        String str = this.j;
        return this.j.substring(length, c.a(str, length, str.length(), ":@"));
    }

    public final String e() {
        if (this.f.isEmpty()) {
            return "";
        }
        int indexOf = this.j.indexOf(58, this.f8134a.length() + 3);
        return this.j.substring(indexOf + 1, this.j.indexOf(64));
    }

    public final boolean equals(Object obj) {
        return (obj instanceof s) && ((s) obj).j.equals(this.j);
    }

    public final String f() {
        return this.f8135b;
    }

    public final int g() {
        return this.f8136c;
    }

    public final String h() {
        int indexOf = this.j.indexOf(47, this.f8134a.length() + 3);
        String str = this.j;
        return this.j.substring(indexOf, c.a(str, indexOf, str.length(), "?#"));
    }

    public final int hashCode() {
        return this.j.hashCode();
    }

    public final List<String> i() {
        int indexOf = this.j.indexOf(47, this.f8134a.length() + 3);
        String str = this.j;
        int a2 = c.a(str, indexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < a2) {
            int i = indexOf + 1;
            indexOf = c.a(this.j, i, a2, '/');
            arrayList.add(this.j.substring(i, indexOf));
        }
        return arrayList;
    }

    public final String j() {
        if (this.h == null) {
            return null;
        }
        int indexOf = this.j.indexOf(63) + 1;
        String str = this.j;
        return this.j.substring(indexOf, c.a(str, indexOf, str.length(), '#'));
    }

    public final String k() {
        if (this.h == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        b(sb, this.h);
        return sb.toString();
    }

    public final String l() {
        if (this.i == null) {
            return null;
        }
        return this.j.substring(this.j.indexOf(35) + 1);
    }

    public final String m() {
        return d("/...").b("").c("").c().toString();
    }

    public final a n() {
        a aVar = new a();
        aVar.f8137a = this.f8134a;
        aVar.f8138b = d();
        aVar.f8139c = e();
        aVar.f8140d = this.f8135b;
        aVar.e = this.f8136c != a(this.f8134a) ? this.f8136c : -1;
        aVar.f.clear();
        aVar.f.addAll(i());
        aVar.e(j());
        aVar.h = l();
        return aVar;
    }

    public final String toString() {
        return this.j;
    }
}
