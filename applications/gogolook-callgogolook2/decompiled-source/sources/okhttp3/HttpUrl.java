package okhttp3;

import androidx.media2.exoplayer.external.extractor.p007ts.PsExtractor;
import androidx.media2.session.MediaSessionImplBase;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import okhttp3.internal.Util;
import p645m.C15170c;
/* loaded from: classes3-dex2jar.jar:okhttp3/HttpUrl.class */
public final class HttpUrl {
    public static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    @Nullable
    public final String fragment;
    public final String host;
    public final String password;
    public final List<String> pathSegments;
    public final int port;
    @Nullable
    public final List<String> queryNamesAndValues;
    public final String scheme;
    public final String url;
    public final String username;

    /* loaded from: classes3-dex2jar.jar:okhttp3/HttpUrl$Builder.class */
    public static final class Builder {
        @Nullable
        public String encodedFragment;
        @Nullable
        public List<String> encodedQueryNamesAndValues;
        @Nullable
        public String host;
        @Nullable
        public String scheme;
        public String encodedUsername = "";
        public String encodedPassword = "";
        public int port = -1;
        public final List<String> encodedPathSegments = new ArrayList();

        public Builder() {
            this.encodedPathSegments.add("");
        }

        public static String canonicalizeHost(String str, int i, int i2) {
            return Util.canonicalizeHost(HttpUrl.percentDecode(str, i, i2, false));
        }

        public static int parsePort(String str, int i, int i2) {
            try {
                int parseInt = Integer.parseInt(HttpUrl.canonicalize(str, i, i2, "", false, false, false, true, null));
                if (parseInt <= 0 || parseInt > 65535) {
                    return -1;
                }
                return parseInt;
            } catch (NumberFormatException e) {
                return -1;
            }
        }

        public static int portColonOffset(String str, int i, int i2) {
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
            if (r0 > 'z') goto L_0x001e;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int schemeDelimiterOffset(java.lang.String r3, int r4, int r5) {
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
                if (r0 < r1) goto L_0x0093
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 90
                if (r0 <= r1) goto L_0x0030
                goto L_0x0093
            L_0x0030:
                r0 = r7
                r1 = 1
                int r0 = r0 + r1
                r4 = r0
                r0 = r4
                r1 = r5
                if (r0 >= r1) goto L_0x0093
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
                r0 = r6
                r1 = 46
                if (r0 != r1) goto L_0x008b
                r0 = r4
                r7 = r0
                goto L_0x0030
            L_0x008b:
                r0 = r6
                r1 = 58
                if (r0 != r1) goto L_0x0093
                r0 = r4
                return r0
            L_0x0093:
                r0 = -1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.schemeDelimiterOffset(java.lang.String, int, int):int");
        }

        public static int slashCount(String str, int i, int i2) {
            char charAt;
            int i3 = 0;
            while (i < i2 && ((charAt = str.charAt(i)) == '\\' || charAt == '/')) {
                i3++;
                i++;
            }
            return i3;
        }

        public Builder addEncodedQueryParameter(String str, @Nullable String str2) {
            if (str != null) {
                if (this.encodedQueryNamesAndValues == null) {
                    this.encodedQueryNamesAndValues = new ArrayList();
                }
                this.encodedQueryNamesAndValues.add(HttpUrl.canonicalize(str, " \"'<>#&=", true, false, true, true));
                this.encodedQueryNamesAndValues.add(str2 != null ? HttpUrl.canonicalize(str2, " \"'<>#&=", true, false, true, true) : null);
                return this;
            }
            throw new NullPointerException("encodedName == null");
        }

        public Builder addQueryParameter(String str, @Nullable String str2) {
            if (str != null) {
                if (this.encodedQueryNamesAndValues == null) {
                    this.encodedQueryNamesAndValues = new ArrayList();
                }
                this.encodedQueryNamesAndValues.add(HttpUrl.canonicalize(str, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, true));
                this.encodedQueryNamesAndValues.add(str2 != null ? HttpUrl.canonicalize(str2, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, true) : null);
                return this;
            }
            throw new NullPointerException("name == null");
        }

        public HttpUrl build() {
            if (this.scheme == null) {
                throw new IllegalStateException("scheme == null");
            } else if (this.host != null) {
                return new HttpUrl(this);
            } else {
                throw new IllegalStateException("host == null");
            }
        }

        public int effectivePort() {
            int i = this.port;
            if (i == -1) {
                i = HttpUrl.defaultPort(this.scheme);
            }
            return i;
        }

        public Builder encodedQuery(@Nullable String str) {
            this.encodedQueryNamesAndValues = str != null ? HttpUrl.queryStringToNamesAndValues(HttpUrl.canonicalize(str, " \"'<>#", true, false, true, true)) : null;
            return this;
        }

        public Builder host(String str) {
            if (str != null) {
                String canonicalizeHost = canonicalizeHost(str, 0, str.length());
                if (canonicalizeHost != null) {
                    this.host = canonicalizeHost;
                    return this;
                }
                throw new IllegalArgumentException("unexpected host: " + str);
            }
            throw new NullPointerException("host == null");
        }

        public final boolean isDot(String str) {
            return str.equals(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM) || str.equalsIgnoreCase("%2e");
        }

        public final boolean isDotDot(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x00fc, code lost:
            if (r13.charAt(r14) == '#') goto L_0x00ff;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public okhttp3.HttpUrl.Builder parse(@javax.annotation.Nullable okhttp3.HttpUrl r12, java.lang.String r13) {
            /*
                Method dump skipped, instructions count: 851
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.parse(okhttp3.HttpUrl, java.lang.String):okhttp3.HttpUrl$Builder");
        }

        public Builder password(String str) {
            if (str != null) {
                this.encodedPassword = HttpUrl.canonicalize(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
                return this;
            }
            throw new NullPointerException("password == null");
        }

        public final void pop() {
            List<String> list = this.encodedPathSegments;
            if (!list.remove(list.size() - 1).isEmpty() || this.encodedPathSegments.isEmpty()) {
                this.encodedPathSegments.add("");
                return;
            }
            List<String> list2 = this.encodedPathSegments;
            list2.set(list2.size() - 1, "");
        }

        public Builder port(int i) {
            if (i <= 0 || i > 65535) {
                throw new IllegalArgumentException("unexpected port: " + i);
            }
            this.port = i;
            return this;
        }

        public final void push(String str, int i, int i2, boolean z, boolean z2) {
            String canonicalize = HttpUrl.canonicalize(str, i, i2, " \"<>^`{}|/\\?#", z2, false, false, true, null);
            if (!isDot(canonicalize)) {
                if (isDotDot(canonicalize)) {
                    pop();
                    return;
                }
                List<String> list = this.encodedPathSegments;
                if (list.get(list.size() - 1).isEmpty()) {
                    List<String> list2 = this.encodedPathSegments;
                    list2.set(list2.size() - 1, canonicalize);
                } else {
                    this.encodedPathSegments.add(canonicalize);
                }
                if (z) {
                    this.encodedPathSegments.add("");
                }
            }
        }

        public Builder reencodeForUri() {
            int size = this.encodedPathSegments.size();
            for (int i = 0; i < size; i++) {
                this.encodedPathSegments.set(i, HttpUrl.canonicalize(this.encodedPathSegments.get(i), "[]", true, true, false, true));
            }
            List<String> list = this.encodedQueryNamesAndValues;
            if (list != null) {
                int size2 = list.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    String str = this.encodedQueryNamesAndValues.get(i2);
                    if (str != null) {
                        this.encodedQueryNamesAndValues.set(i2, HttpUrl.canonicalize(str, "\\^`{|}", true, true, true, true));
                    }
                }
            }
            String str2 = this.encodedFragment;
            if (str2 != null) {
                this.encodedFragment = HttpUrl.canonicalize(str2, " \"#<>\\^`{|}", true, true, false, false);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0057  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0087 -> B:11:0x0052). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void resolvePath(java.lang.String r8, int r9, int r10) {
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
                java.util.List<java.lang.String> r0 = r0.encodedPathSegments
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
                java.util.List<java.lang.String> r0 = r0.encodedPathSegments
                r0.clear()
                r0 = r7
                java.util.List<java.lang.String> r0 = r0.encodedPathSegments
                java.lang.String r1 = ""
                boolean r0 = r0.add(r1)
                goto L_0x0087
            L_0x0052:
                r0 = r9
                r1 = r10
                if (r0 >= r1) goto L_0x008d
                r0 = r8
                r1 = r9
                r2 = r10
                java.lang.String r3 = "/\\"
                int r0 = okhttp3.internal.Util.delimiterOffset(r0, r1, r2, r3)
                r11 = r0
                r0 = r11
                r1 = r10
                if (r0 >= r1) goto L_0x006e
                r0 = 1
                r13 = r0
                goto L_0x0071
            L_0x006e:
                r0 = 0
                r13 = r0
            L_0x0071:
                r0 = r7
                r1 = r8
                r2 = r9
                r3 = r11
                r4 = r13
                r5 = 1
                r0.push(r1, r2, r3, r4, r5)
                r0 = r11
                r9 = r0
                r0 = r13
                if (r0 == 0) goto L_0x0052
                r0 = r11
                r9 = r0
            L_0x0087:
                int r9 = r9 + 1
                goto L_0x0052
            L_0x008d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.resolvePath(java.lang.String, int, int):void");
        }

        public Builder scheme(String str) {
            if (str != null) {
                if (str.equalsIgnoreCase("http")) {
                    this.scheme = "http";
                } else if (str.equalsIgnoreCase("https")) {
                    this.scheme = "https";
                } else {
                    throw new IllegalArgumentException("unexpected scheme: " + str);
                }
                return this;
            }
            throw new NullPointerException("scheme == null");
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            String str = this.scheme;
            if (str != null) {
                sb.append(str);
                sb.append("://");
            } else {
                sb.append("//");
            }
            if (!this.encodedUsername.isEmpty() || !this.encodedPassword.isEmpty()) {
                sb.append(this.encodedUsername);
                if (!this.encodedPassword.isEmpty()) {
                    sb.append(':');
                    sb.append(this.encodedPassword);
                }
                sb.append('@');
            }
            String str2 = this.host;
            if (str2 != null) {
                if (str2.indexOf(58) != -1) {
                    sb.append('[');
                    sb.append(this.host);
                    sb.append(']');
                } else {
                    sb.append(this.host);
                }
            }
            if (!(this.port == -1 && this.scheme == null)) {
                int effectivePort = effectivePort();
                String str3 = this.scheme;
                if (str3 == null || effectivePort != HttpUrl.defaultPort(str3)) {
                    sb.append(':');
                    sb.append(effectivePort);
                }
            }
            HttpUrl.pathSegmentsToString(sb, this.encodedPathSegments);
            if (this.encodedQueryNamesAndValues != null) {
                sb.append('?');
                HttpUrl.namesAndValuesToQueryString(sb, this.encodedQueryNamesAndValues);
            }
            if (this.encodedFragment != null) {
                sb.append('#');
                sb.append(this.encodedFragment);
            }
            return sb.toString();
        }

        public Builder username(String str) {
            if (str != null) {
                this.encodedUsername = HttpUrl.canonicalize(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
                return this;
            }
            throw new NullPointerException("username == null");
        }
    }

    public HttpUrl(Builder builder) {
        this.scheme = builder.scheme;
        this.username = percentDecode(builder.encodedUsername, false);
        this.password = percentDecode(builder.encodedPassword, false);
        this.host = builder.host;
        this.port = builder.effectivePort();
        this.pathSegments = percentDecode(builder.encodedPathSegments, false);
        List<String> list = builder.encodedQueryNamesAndValues;
        String str = null;
        this.queryNamesAndValues = list != null ? percentDecode(list, true) : null;
        String str2 = builder.encodedFragment;
        this.fragment = str2 != null ? percentDecode(str2, false) : str;
        this.url = builder.toString();
    }

    public static String canonicalize(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        int i3 = i;
        while (i3 < i2) {
            int codePointAt = str.codePointAt(i3);
            if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || ((codePointAt == 37 && (!z || (z2 && !percentEncoded(str, i3, i2)))) || (codePointAt == 43 && z3)))) {
                C15170c cVar = new C15170c();
                cVar.m362a(str, i, i3);
                canonicalize(cVar, str, i3, i2, str2, z, z2, z3, z4, charset);
                return cVar.mo289y();
            }
            i3 += Character.charCount(codePointAt);
        }
        return str.substring(i, i2);
    }

    public static String canonicalize(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        return canonicalize(str, 0, str.length(), str2, z, z2, z3, z4, null);
    }

    public static String canonicalize(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        return canonicalize(str, 0, str.length(), str2, z, z2, z3, z4, charset);
    }

    public static void canonicalize(C15170c cVar, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        C15170c cVar2 = null;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (z) {
                cVar2 = cVar2;
                if (codePointAt != 9) {
                    cVar2 = cVar2;
                    if (codePointAt != 10) {
                        cVar2 = cVar2;
                        if (codePointAt != 12) {
                            if (codePointAt == 13) {
                                cVar2 = cVar2;
                            }
                        }
                    }
                }
                i += Character.charCount(codePointAt);
            }
            if (codePointAt == 43 && z3) {
                cVar.mo309e(z ? "+" : "%2B");
                cVar2 = cVar2;
            } else if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || (codePointAt == 37 && (!z || (z2 && !percentEncoded(str, i, i2)))))) {
                C15170c cVar3 = cVar2;
                if (cVar2 == null) {
                    cVar3 = new C15170c();
                }
                if (charset == null || charset.equals(Util.UTF_8)) {
                    cVar3.m356c(codePointAt);
                } else {
                    cVar3.m361a(str, i, Character.charCount(codePointAt) + i, charset);
                }
                while (true) {
                    cVar2 = cVar3;
                    if (!cVar3.mo292v()) {
                        int readByte = cVar3.readByte() & 255;
                        cVar.writeByte(37);
                        cVar.writeByte((int) HEX_DIGITS[(readByte >> 4) & 15]);
                        cVar.writeByte((int) HEX_DIGITS[readByte & 15]);
                    }
                }
            } else {
                cVar.m356c(codePointAt);
                cVar2 = cVar2;
            }
            i += Character.charCount(codePointAt);
        }
    }

    public static int defaultPort(String str) {
        if (str.equals("http")) {
            return 80;
        }
        if (str.equals("https")) {
            return PsExtractor.SYSTEM_HEADER_START_CODE;
        }
        return -1;
    }

    public static HttpUrl get(String str) {
        Builder builder = new Builder();
        builder.parse(null, str);
        return builder.build();
    }

    public static void namesAndValuesToQueryString(StringBuilder sb, List<String> list) {
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
    public static HttpUrl parse(String str) {
        try {
            return get(str);
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

    public static void pathSegmentsToString(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append('/');
            sb.append(list.get(i));
        }
    }

    public static String percentDecode(String str, int i, int i2, boolean z) {
        for (int i3 = i; i3 < i2; i3++) {
            char charAt = str.charAt(i3);
            if (charAt == '%' || (charAt == '+' && z)) {
                C15170c cVar = new C15170c();
                cVar.m362a(str, i, i3);
                percentDecode(cVar, str, i3, i2, z);
                return cVar.mo289y();
            }
        }
        return str.substring(i, i2);
    }

    public static String percentDecode(String str, boolean z) {
        return percentDecode(str, 0, str.length(), z);
    }

    public static void percentDecode(C15170c cVar, String str, int i, int i2, boolean z) {
        int i3;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt != 37 || (i3 = i + 2) >= i2) {
                if (codePointAt == 43 && z) {
                    cVar.writeByte(32);
                    i += Character.charCount(codePointAt);
                }
                cVar.m356c(codePointAt);
                i += Character.charCount(codePointAt);
            } else {
                int decodeHexDigit = Util.decodeHexDigit(str.charAt(i + 1));
                int decodeHexDigit2 = Util.decodeHexDigit(str.charAt(i3));
                if (!(decodeHexDigit == -1 || decodeHexDigit2 == -1)) {
                    cVar.writeByte((decodeHexDigit << 4) + decodeHexDigit2);
                    i = i3;
                    i += Character.charCount(codePointAt);
                }
                cVar.m356c(codePointAt);
                i += Character.charCount(codePointAt);
            }
        }
    }

    public static boolean percentEncoded(String str, int i, int i2) {
        int i3 = i + 2;
        boolean z = true;
        if (i3 >= i2 || str.charAt(i) != '%' || Util.decodeHexDigit(str.charAt(i + 1)) == -1 || Util.decodeHexDigit(str.charAt(i3)) == -1) {
            z = false;
        }
        return z;
    }

    public static List<String> queryStringToNamesAndValues(String str) {
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

    @Nullable
    public String encodedFragment() {
        if (this.fragment == null) {
            return null;
        }
        return this.url.substring(this.url.indexOf(35) + 1);
    }

    public String encodedPassword() {
        if (this.password.isEmpty()) {
            return "";
        }
        int indexOf = this.url.indexOf(58, this.scheme.length() + 3);
        return this.url.substring(indexOf + 1, this.url.indexOf(64));
    }

    public String encodedPath() {
        int indexOf = this.url.indexOf(47, this.scheme.length() + 3);
        String str = this.url;
        return this.url.substring(indexOf, Util.delimiterOffset(str, indexOf, str.length(), "?#"));
    }

    public List<String> encodedPathSegments() {
        int indexOf = this.url.indexOf(47, this.scheme.length() + 3);
        String str = this.url;
        int delimiterOffset = Util.delimiterOffset(str, indexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < delimiterOffset) {
            int i = indexOf + 1;
            indexOf = Util.delimiterOffset(this.url, i, delimiterOffset, '/');
            arrayList.add(this.url.substring(i, indexOf));
        }
        return arrayList;
    }

    @Nullable
    public String encodedQuery() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        int indexOf = this.url.indexOf(63) + 1;
        String str = this.url;
        return this.url.substring(indexOf, Util.delimiterOffset(str, indexOf, str.length(), '#'));
    }

    public String encodedUsername() {
        if (this.username.isEmpty()) {
            return "";
        }
        int length = this.scheme.length() + 3;
        String str = this.url;
        return this.url.substring(length, Util.delimiterOffset(str, length, str.length(), ":@"));
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof HttpUrl) && ((HttpUrl) obj).url.equals(this.url);
    }

    public int hashCode() {
        return this.url.hashCode();
    }

    public String host() {
        return this.host;
    }

    public boolean isHttps() {
        return this.scheme.equals("https");
    }

    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.scheme = this.scheme;
        builder.encodedUsername = encodedUsername();
        builder.encodedPassword = encodedPassword();
        builder.host = this.host;
        builder.port = this.port != defaultPort(this.scheme) ? this.port : -1;
        builder.encodedPathSegments.clear();
        builder.encodedPathSegments.addAll(encodedPathSegments());
        builder.encodedQuery(encodedQuery());
        builder.encodedFragment = encodedFragment();
        return builder;
    }

    @Nullable
    public Builder newBuilder(String str) {
        try {
            Builder builder = new Builder();
            builder.parse(this, str);
            return builder;
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

    public List<String> pathSegments() {
        return this.pathSegments;
    }

    public final List<String> percentDecode(List<String> list, boolean z) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            String str = list.get(i);
            arrayList.add(str != null ? percentDecode(str, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    public int port() {
        return this.port;
    }

    @Nullable
    public String query() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        namesAndValuesToQueryString(sb, this.queryNamesAndValues);
        return sb.toString();
    }

    public String redact() {
        Builder newBuilder = newBuilder("/...");
        newBuilder.username("");
        newBuilder.password("");
        return newBuilder.build().toString();
    }

    @Nullable
    public HttpUrl resolve(String str) {
        Builder newBuilder = newBuilder(str);
        return newBuilder != null ? newBuilder.build() : null;
    }

    public String scheme() {
        return this.scheme;
    }

    public String toString() {
        return this.url;
    }

    public URI uri() {
        Builder newBuilder = newBuilder();
        newBuilder.reencodeForUri();
        String builder = newBuilder.toString();
        try {
            return new URI(builder);
        } catch (URISyntaxException e) {
            try {
                return URI.create(builder.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception e2) {
                throw new RuntimeException(e);
            }
        }
    }

    public URL url() {
        try {
            return new URL(this.url);
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }
}
