package com.airbnb.deeplinkdispatch;

import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.network.constant.Protocols;
import java.net.IDN;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import v3.f;
/* loaded from: classes-dex2jar.jar:com/airbnb/deeplinkdispatch/DeepLinkUri.class */
public final class DeepLinkUri {
    public static final String CONVERT_TO_URI_ENCODE_SET = "^`{}|\\";
    public static final String FORM_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#&!$(),~";
    public static final String FRAGMENT_ENCODE_SET = "";
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    public static final String PASSWORD_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";
    public static final String PATH_SEGMENT_ENCODE_SET = " \"<>^`{}|/\\?#";
    public static final String QUERY_COMPONENT_ENCODE_SET = " \"'<>#&=";
    public static final String QUERY_ENCODE_SET = " \"'<>#";
    public static final String USERNAME_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";
    private final String fragment;
    private final String host;
    private final String password;
    private final List<String> pathSegments;
    private final int port;
    private final List<String> queryNamesAndValues;
    private final String scheme;
    private final String url;
    private final String username;

    /* renamed from: com.airbnb.deeplinkdispatch.DeepLinkUri$1 */
    /* loaded from: classes-dex2jar.jar:com/airbnb/deeplinkdispatch/DeepLinkUri$1.class */
    public static /* synthetic */ class C04341 {

        /* renamed from: $SwitchMap$com$airbnb$deeplinkdispatch$DeepLinkUri$Builder$ParseResult */
        public static final /* synthetic */ int[] f1615x4aa470fa;

        static {
            Builder.ParseResult.values();
            int[] iArr = new int[5];
            f1615x4aa470fa = iArr;
            try {
                Builder.ParseResult parseResult = Builder.ParseResult.SUCCESS;
                iArr[0] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                int[] iArr2 = f1615x4aa470fa;
                Builder.ParseResult parseResult2 = Builder.ParseResult.INVALID_HOST;
                iArr2[4] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                int[] iArr3 = f1615x4aa470fa;
                Builder.ParseResult parseResult3 = Builder.ParseResult.UNSUPPORTED_SCHEME;
                iArr3[2] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                int[] iArr4 = f1615x4aa470fa;
                Builder.ParseResult parseResult4 = Builder.ParseResult.MISSING_SCHEME;
                iArr4[1] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                int[] iArr5 = f1615x4aa470fa;
                Builder.ParseResult parseResult5 = Builder.ParseResult.INVALID_PORT;
                iArr5[3] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/airbnb/deeplinkdispatch/DeepLinkUri$Builder.class */
    public static final class Builder {
        public String encodedFragment;
        public final List<String> encodedPathSegments;
        public List<String> encodedQueryNamesAndValues;
        public String host;
        public String scheme;
        public String encodedUsername = "";
        public String encodedPassword = "";
        public int port = -1;

        /* loaded from: classes-dex2jar.jar:com/airbnb/deeplinkdispatch/DeepLinkUri$Builder$ParseResult.class */
        public enum ParseResult {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public Builder() {
            ArrayList arrayList = new ArrayList();
            this.encodedPathSegments = arrayList;
            arrayList.add("");
        }

        private static String canonicalizeHost(String str, int i, int i2) {
            String percentDecode = DeepLinkUri.percentDecode(str, i, i2);
            if (!percentDecode.startsWith("[") || !percentDecode.endsWith("]")) {
                return domainToAscii(percentDecode);
            }
            InetAddress decodeIpv6 = decodeIpv6(percentDecode, 1, percentDecode.length() - 1);
            if (decodeIpv6 == null) {
                return null;
            }
            byte[] address = decodeIpv6.getAddress();
            if (address.length != 16) {
                throw new AssertionError();
            }
            return inet6AddressToAscii(address);
        }

        private static boolean containsInvalidHostnameAsciiCodes(String str) {
            for (int i = 0; i < str.length(); i++) {
                char charAt = str.charAt(i);
                if (charAt <= 31 || charAt >= 127 || " #%/:?@[\\]".indexOf(charAt) != -1) {
                    return true;
                }
            }
            return false;
        }

        private static boolean decodeIpv4Suffix(String str, int i, int i2, byte[] bArr, int i3) {
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

        /* JADX WARN: Code restructure failed: missing block: B:45:0x012e, code lost:
            if (r14 == 16) goto L55;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x0134, code lost:
            if (r15 != (-1)) goto L49;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x0137, code lost:
            return null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0139, code lost:
            r0 = r14 - r15;
            java.lang.System.arraycopy(r0, r15, r0, 16 - r0, r0);
            java.util.Arrays.fill(r0, r15, (16 - r14) + r15, (byte) 0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x0160, code lost:
            return java.net.InetAddress.getByAddress(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x0169, code lost:
            throw new java.lang.AssertionError();
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static java.net.InetAddress decodeIpv6(java.lang.String r7, int r8, int r9) {
            /*
                Method dump skipped, instructions count: 362
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.airbnb.deeplinkdispatch.DeepLinkUri.Builder.decodeIpv6(java.lang.String, int, int):java.net.InetAddress");
        }

        private static String domainToAscii(String str) {
            try {
                String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
                if (lowerCase.isEmpty()) {
                    return null;
                }
                if (!containsInvalidHostnameAsciiCodes(lowerCase)) {
                    return lowerCase;
                }
                return null;
            } catch (IllegalArgumentException e) {
                return null;
            }
        }

        private static String inet6AddressToAscii(byte[] bArr) {
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
            f fVar = new f();
            int i8 = 0;
            while (i8 < bArr.length) {
                if (i8 == i2) {
                    fVar.B0(58);
                    int i9 = i8 + i;
                    i8 = i9;
                    if (i9 == 16) {
                        fVar.B0(58);
                        i8 = i9;
                    }
                } else {
                    if (i8 > 0) {
                        fVar.B0(58);
                    }
                    fVar.F0(((bArr[i8] & 255) << 8) | (bArr[i8 + 1] & 255));
                    i8 += 2;
                }
            }
            return fVar.Q();
        }

        private boolean isDot(String str) {
            return str.equals(StringConstant.DOT) || str.equalsIgnoreCase("%2e");
        }

        private boolean isDotDot(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        private static int parsePort(String str, int i, int i2) {
            try {
                int parseInt = Integer.parseInt(DeepLinkUri.canonicalize(str, i, i2, "", false, false));
                if (parseInt > 0 && parseInt <= 65535) {
                    return parseInt;
                }
                return -1;
            } catch (NumberFormatException e) {
                return -1;
            }
        }

        private void pop() {
            List<String> list = this.encodedPathSegments;
            if (!list.remove(list.size() - 1).isEmpty() || this.encodedPathSegments.isEmpty()) {
                this.encodedPathSegments.add("");
                return;
            }
            List<String> list2 = this.encodedPathSegments;
            list2.set(list2.size() - 1, "");
        }

        private static int portColonOffset(String str, int i, int i2) {
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

        private void push(String str, int i, int i2, boolean z, boolean z2) {
            String canonicalize = DeepLinkUri.canonicalize(str, i, i2, DeepLinkUri.PATH_SEGMENT_ENCODE_SET, z2, false);
            if (isDot(canonicalize)) {
                return;
            }
            if (isDotDot(canonicalize)) {
                pop();
                return;
            }
            if (((String) C22128a.m8714F1(this.encodedPathSegments, -1)).isEmpty()) {
                List<String> list = this.encodedPathSegments;
                list.set(list.size() - 1, canonicalize);
            } else {
                this.encodedPathSegments.add(canonicalize);
            }
            if (!z) {
                return;
            }
            this.encodedPathSegments.add("");
        }

        private void removeAllCanonicalQueryParameters(String str) {
            for (int size = this.encodedQueryNamesAndValues.size() - 2; size >= 0; size -= 2) {
                if (str.equals(this.encodedQueryNamesAndValues.get(size))) {
                    this.encodedQueryNamesAndValues.remove(size + 1);
                    this.encodedQueryNamesAndValues.remove(size);
                    if (this.encodedQueryNamesAndValues.isEmpty()) {
                        this.encodedQueryNamesAndValues = null;
                        return;
                    }
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0057  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0086 -> B:11:0x0052). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void resolvePath(java.lang.String r8, int r9, int r10) {
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
                java.util.List<java.lang.String> r0 = r0.encodedPathSegments
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
                java.util.List<java.lang.String> r0 = r0.encodedPathSegments
                r0.clear()
                r0 = r7
                java.util.List<java.lang.String> r0 = r0.encodedPathSegments
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
                int r0 = com.airbnb.deeplinkdispatch.DeepLinkUri.access$200(r0, r1, r2, r3)
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
                r0.push(r1, r2, r3, r4, r5)
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
            throw new UnsupportedOperationException("Method not decompiled: com.airbnb.deeplinkdispatch.DeepLinkUri.Builder.resolvePath(java.lang.String, int, int):void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x001b, code lost:
            if (r0 > 'z') goto L9;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static int schemeDelimiterOffset(java.lang.String r3, int r4, int r5) {
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
            throw new UnsupportedOperationException("Method not decompiled: com.airbnb.deeplinkdispatch.DeepLinkUri.Builder.schemeDelimiterOffset(java.lang.String, int, int):int");
        }

        private int skipLeadingAsciiWhitespace(String str, int i, int i2) {
            while (i < i2) {
                char charAt = str.charAt(i);
                if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                    return i;
                }
                i++;
            }
            return i2;
        }

        private int skipTrailingAsciiWhitespace(String str, int i, int i2) {
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

        private static int slashCount(String str, int i, int i2) {
            char charAt;
            int i3 = 0;
            while (i < i2 && ((charAt = str.charAt(i)) == '\\' || charAt == '/')) {
                i3++;
                i++;
            }
            return i3;
        }

        public Builder addEncodedPathSegment(String str) {
            if (str != null) {
                push(str, 0, str.length(), false, true);
                return this;
            }
            throw new IllegalArgumentException("encodedPathSegment == null");
        }

        public Builder addEncodedQueryParameter(String str, String str2) {
            if (str != null) {
                if (this.encodedQueryNamesAndValues == null) {
                    this.encodedQueryNamesAndValues = new ArrayList();
                }
                this.encodedQueryNamesAndValues.add(DeepLinkUri.canonicalize(str, DeepLinkUri.QUERY_COMPONENT_ENCODE_SET, true, true));
                this.encodedQueryNamesAndValues.add(str2 != null ? DeepLinkUri.canonicalize(str2, DeepLinkUri.QUERY_COMPONENT_ENCODE_SET, true, true) : null);
                return this;
            }
            throw new IllegalArgumentException("encodedName == null");
        }

        public Builder addPathSegment(String str) {
            if (str != null) {
                push(str, 0, str.length(), false, false);
                return this;
            }
            throw new IllegalArgumentException("pathSegment == null");
        }

        public Builder addQueryParameter(String str, String str2) {
            if (str != null) {
                if (this.encodedQueryNamesAndValues == null) {
                    this.encodedQueryNamesAndValues = new ArrayList();
                }
                this.encodedQueryNamesAndValues.add(DeepLinkUri.canonicalize(str, DeepLinkUri.QUERY_COMPONENT_ENCODE_SET, false, true));
                this.encodedQueryNamesAndValues.add(str2 != null ? DeepLinkUri.canonicalize(str2, DeepLinkUri.QUERY_COMPONENT_ENCODE_SET, false, true) : null);
                return this;
            }
            throw new IllegalArgumentException("name == null");
        }

        public DeepLinkUri build() {
            if (this.scheme != null) {
                if (this.host == null) {
                    throw new IllegalStateException("host == null");
                }
                return new DeepLinkUri(this, null);
            }
            throw new IllegalStateException("scheme == null");
        }

        public int effectivePort() {
            int i = this.port;
            if (i == -1) {
                i = DeepLinkUri.defaultPort(this.scheme);
            }
            return i;
        }

        public Builder encodedFragment(String str) {
            if (str != null) {
                this.encodedFragment = DeepLinkUri.canonicalize(str, "", true, false);
                return this;
            }
            throw new IllegalArgumentException("encodedFragment == null");
        }

        public Builder encodedPassword(String str) {
            if (str != null) {
                this.encodedPassword = DeepLinkUri.canonicalize(str, " \"':;<=>@[]^`{}|/\\?#", true, false);
                return this;
            }
            throw new IllegalArgumentException("encodedPassword == null");
        }

        public Builder encodedPath(String str) {
            if (str != null) {
                if (!str.startsWith(StringConstant.SLASH)) {
                    throw new IllegalArgumentException(C22128a.m8543z2("unexpected encodedPath: ", str));
                }
                resolvePath(str, 0, str.length());
                return this;
            }
            throw new IllegalArgumentException("encodedPath == null");
        }

        public Builder encodedQuery(String str) {
            this.encodedQueryNamesAndValues = str != null ? DeepLinkUri.queryStringToNamesAndValues(DeepLinkUri.canonicalize(str, DeepLinkUri.QUERY_ENCODE_SET, true, true)) : null;
            return this;
        }

        public Builder encodedUsername(String str) {
            if (str != null) {
                this.encodedUsername = DeepLinkUri.canonicalize(str, " \"':;<=>@[]^`{}|/\\?#", true, false);
                return this;
            }
            throw new IllegalArgumentException("encodedUsername == null");
        }

        public Builder fragment(String str) {
            if (str != null) {
                this.encodedFragment = DeepLinkUri.canonicalize(str, "", false, false);
                return this;
            }
            throw new IllegalArgumentException("fragment == null");
        }

        public Builder host(String str) {
            if (str != null) {
                String canonicalizeHost = canonicalizeHost(str, 0, str.length());
                if (canonicalizeHost == null) {
                    throw new IllegalArgumentException(C22128a.m8543z2("unexpected host: ", str));
                }
                this.host = canonicalizeHost;
                return this;
            }
            throw new IllegalArgumentException("host == null");
        }

        /* JADX WARN: Code restructure failed: missing block: B:23:0x00f5, code lost:
            if (r10.charAt(r11) == '#') goto L24;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.airbnb.deeplinkdispatch.DeepLinkUri.Builder.ParseResult parse(com.airbnb.deeplinkdispatch.DeepLinkUri r9, java.lang.String r10) {
            /*
                Method dump skipped, instructions count: 727
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.airbnb.deeplinkdispatch.DeepLinkUri.Builder.parse(com.airbnb.deeplinkdispatch.DeepLinkUri, java.lang.String):com.airbnb.deeplinkdispatch.DeepLinkUri$Builder$ParseResult");
        }

        public Builder password(String str) {
            if (str != null) {
                this.encodedPassword = DeepLinkUri.canonicalize(str, " \"':;<=>@[]^`{}|/\\?#", false, false);
                return this;
            }
            throw new IllegalArgumentException("password == null");
        }

        public Builder port(int i) {
            if (i <= 0 || i > 65535) {
                throw new IllegalArgumentException(C22128a.m8611i2("unexpected port: ", i));
            }
            this.port = i;
            return this;
        }

        public Builder query(String str) {
            this.encodedQueryNamesAndValues = str != null ? DeepLinkUri.queryStringToNamesAndValues(DeepLinkUri.canonicalize(str, DeepLinkUri.QUERY_ENCODE_SET, false, true)) : null;
            return this;
        }

        public Builder removeAllEncodedQueryParameters(String str) {
            if (str != null) {
                if (this.encodedQueryNamesAndValues == null) {
                    return this;
                }
                removeAllCanonicalQueryParameters(DeepLinkUri.canonicalize(str, DeepLinkUri.QUERY_COMPONENT_ENCODE_SET, true, true));
                return this;
            }
            throw new IllegalArgumentException("encodedName == null");
        }

        public Builder removeAllQueryParameters(String str) {
            if (str != null) {
                if (this.encodedQueryNamesAndValues == null) {
                    return this;
                }
                removeAllCanonicalQueryParameters(DeepLinkUri.canonicalize(str, DeepLinkUri.QUERY_COMPONENT_ENCODE_SET, false, true));
                return this;
            }
            throw new IllegalArgumentException("name == null");
        }

        public Builder removePathSegment(int i) {
            this.encodedPathSegments.remove(i);
            if (this.encodedPathSegments.isEmpty()) {
                this.encodedPathSegments.add("");
            }
            return this;
        }

        public Builder scheme(String str) {
            if (str != null) {
                this.scheme = str;
                return this;
            }
            throw new IllegalArgumentException("scheme == null");
        }

        public Builder setEncodedPathSegment(int i, String str) {
            if (str != null) {
                String canonicalize = DeepLinkUri.canonicalize(str, 0, str.length(), DeepLinkUri.PATH_SEGMENT_ENCODE_SET, true, false);
                this.encodedPathSegments.set(i, canonicalize);
                if (!isDot(canonicalize) && !isDotDot(canonicalize)) {
                    return this;
                }
                throw new IllegalArgumentException(C22128a.m8543z2("unexpected path segment: ", str));
            }
            throw new IllegalArgumentException("encodedPathSegment == null");
        }

        public Builder setEncodedQueryParameter(String str, String str2) {
            removeAllEncodedQueryParameters(str);
            addEncodedQueryParameter(str, str2);
            return this;
        }

        public Builder setPathSegment(int i, String str) {
            if (str != null) {
                String canonicalize = DeepLinkUri.canonicalize(str, 0, str.length(), DeepLinkUri.PATH_SEGMENT_ENCODE_SET, false, false);
                if (isDot(canonicalize) || isDotDot(canonicalize)) {
                    throw new IllegalArgumentException(C22128a.m8543z2("unexpected path segment: ", str));
                }
                this.encodedPathSegments.set(i, canonicalize);
                return this;
            }
            throw new IllegalArgumentException("pathSegment == null");
        }

        public Builder setQueryParameter(String str, String str2) {
            removeAllQueryParameters(str);
            addQueryParameter(str, str2);
            return this;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.scheme);
            sb.append("://");
            if (!this.encodedUsername.isEmpty() || !this.encodedPassword.isEmpty()) {
                sb.append(this.encodedUsername);
                if (!this.encodedPassword.isEmpty()) {
                    sb.append(':');
                    sb.append(this.encodedPassword);
                }
                sb.append('@');
            }
            if (this.host.indexOf(58) != -1) {
                sb.append('[');
                sb.append(this.host);
                sb.append(']');
            } else {
                sb.append(this.host);
            }
            int effectivePort = effectivePort();
            if (effectivePort != DeepLinkUri.defaultPort(this.scheme)) {
                sb.append(':');
                sb.append(effectivePort);
            }
            DeepLinkUri.pathSegmentsToString(sb, this.encodedPathSegments);
            if (this.encodedQueryNamesAndValues != null) {
                sb.append('?');
                DeepLinkUri.namesAndValuesToQueryString(sb, this.encodedQueryNamesAndValues);
            }
            if (this.encodedFragment != null) {
                sb.append('#');
                sb.append(this.encodedFragment);
            }
            return sb.toString();
        }

        public Builder username(String str) {
            if (str != null) {
                this.encodedUsername = DeepLinkUri.canonicalize(str, " \"':;<=>@[]^`{}|/\\?#", false, false);
                return this;
            }
            throw new IllegalArgumentException("username == null");
        }
    }

    private DeepLinkUri(Builder builder) {
        this.scheme = builder.scheme;
        this.username = percentDecode(builder.encodedUsername);
        this.password = percentDecode(builder.encodedPassword);
        this.host = builder.host;
        this.port = builder.effectivePort();
        this.pathSegments = percentDecode(builder.encodedPathSegments);
        List<String> list = builder.encodedQueryNamesAndValues;
        this.queryNamesAndValues = list != null ? percentDecode(list) : null;
        String str = builder.encodedFragment;
        this.fragment = str != null ? percentDecode(str) : null;
        this.url = builder.toString();
    }

    public /* synthetic */ DeepLinkUri(Builder builder, C04341 c04341) {
        this(builder);
    }

    public static String canonicalize(String str, int i, int i2, String str2, boolean z, boolean z2) {
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
        f fVar = new f();
        fVar.L0(str, i, i3);
        canonicalize(fVar, str, i3, i2, str2, z, z2);
        return fVar.Q();
    }

    public static String canonicalize(String str, String str2, boolean z, boolean z2) {
        return canonicalize(str, 0, str.length(), str2, z, z2);
    }

    public static void canonicalize(f fVar, String str, int i, int i2, String str2, boolean z, boolean z2) {
        f fVar2;
        f fVar3 = null;
        while (true) {
            f fVar4 = fVar3;
            if (i < i2) {
                int codePointAt = str.codePointAt(i);
                if (z) {
                    fVar2 = fVar4;
                    if (codePointAt != 9) {
                        fVar2 = fVar4;
                        if (codePointAt != 10) {
                            fVar2 = fVar4;
                            if (codePointAt != 12) {
                                if (codePointAt == 13) {
                                    fVar2 = fVar4;
                                }
                            }
                        }
                    }
                    i += Character.charCount(codePointAt);
                    fVar3 = fVar2;
                }
                if (z2 && codePointAt == 43) {
                    fVar.K0(z ? "%20" : "%2B");
                    fVar2 = fVar4;
                } else if (codePointAt < 32 || codePointAt >= 127 || str2.indexOf(codePointAt) != -1 || (codePointAt == 37 && !z)) {
                    f fVar5 = fVar4;
                    if (fVar4 == null) {
                        fVar5 = new f();
                    }
                    fVar5.Q0(codePointAt);
                    while (true) {
                        fVar2 = fVar5;
                        if (!fVar5.N1()) {
                            int readByte = fVar5.readByte() & 255;
                            fVar.B0(37);
                            char[] cArr = HEX_DIGITS;
                            fVar.B0(cArr[(readByte >> 4) & 15]);
                            fVar.B0(cArr[readByte & 15]);
                        }
                    }
                } else {
                    fVar.Q0(codePointAt);
                    fVar2 = fVar4;
                }
                i += Character.charCount(codePointAt);
                fVar3 = fVar2;
            } else {
                return;
            }
        }
    }

    public static int decodeHexDigit(char c) {
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

    public static int defaultPort(String str) {
        if (str.equals(Protocols.HTTP)) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    public static int delimiterOffset(String str, int i, int i2, String str2) {
        while (i < i2) {
            if (str2.indexOf(str.charAt(i)) != -1) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static DeepLinkUri get(URI uri) {
        return parse(uri.toString());
    }

    public static DeepLinkUri get(URL url) {
        return parse(url.toString());
    }

    public static DeepLinkUri getChecked(String str) throws MalformedURLException, UnknownHostException {
        Builder builder = new Builder();
        Builder.ParseResult parse = builder.parse(null, str);
        int ordinal = parse.ordinal();
        if (ordinal != 0) {
            if (ordinal == 4) {
                throw new UnknownHostException(C22128a.m8543z2("Invalid host: ", str));
            }
            throw new MalformedURLException("Invalid URL: " + parse + " for " + str);
        }
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

    public static DeepLinkUri parse(String str) {
        Builder builder = new Builder();
        DeepLinkUri deepLinkUri = null;
        if (builder.parse(null, str) == Builder.ParseResult.SUCCESS) {
            deepLinkUri = builder.build();
        }
        return deepLinkUri;
    }

    public static void pathSegmentsToString(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append('/');
            sb.append(list.get(i));
        }
    }

    public static String percentDecode(String str) {
        return percentDecode(str, 0, str.length());
    }

    public static String percentDecode(String str, int i, int i2) {
        for (int i3 = i; i3 < i2; i3++) {
            if (str.charAt(i3) == '%') {
                f fVar = new f();
                fVar.L0(str, i, i3);
                percentDecode(fVar, str, i3, i2);
                return fVar.Q();
            }
        }
        return str.substring(i, i2);
    }

    private List<String> percentDecode(List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String next = it.next();
            arrayList.add(next != null ? percentDecode(next) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static void percentDecode(f fVar, String str, int i, int i2) {
        int i3;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt == 37 && (i3 = i + 2) < i2) {
                int decodeHexDigit = decodeHexDigit(str.charAt(i + 1));
                int decodeHexDigit2 = decodeHexDigit(str.charAt(i3));
                if (decodeHexDigit != -1 && decodeHexDigit2 != -1) {
                    fVar.B0((decodeHexDigit << 4) + decodeHexDigit2);
                    i = i3;
                    i += Character.charCount(codePointAt);
                }
            }
            fVar.Q0(codePointAt);
            i += Character.charCount(codePointAt);
        }
    }

    public static List<String> queryStringToNamesAndValues(String str) {
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

    public String encodedFragment() {
        if (this.fragment == null) {
            return null;
        }
        return this.url.substring(this.url.indexOf(35) + 1);
    }

    public String encodedHost() {
        return canonicalize(this.host, CONVERT_TO_URI_ENCODE_SET, true, true);
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
        return this.url.substring(indexOf, delimiterOffset(str, indexOf, str.length(), "?#"));
    }

    public List<String> encodedPathSegments() {
        int indexOf = this.url.indexOf(47, this.scheme.length() + 3);
        String str = this.url;
        int delimiterOffset = delimiterOffset(str, indexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < delimiterOffset) {
            int i = indexOf + 1;
            indexOf = delimiterOffset(this.url, i, delimiterOffset, StringConstant.SLASH);
            arrayList.add(this.url.substring(i, indexOf));
        }
        return arrayList;
    }

    public String encodedQuery() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        int indexOf = this.url.indexOf(63) + 1;
        String str = this.url;
        return this.url.substring(indexOf, delimiterOffset(str, indexOf + 1, str.length(), StringConstant.HASH));
    }

    public String encodedUsername() {
        if (this.username.isEmpty()) {
            return "";
        }
        int length = this.scheme.length() + 3;
        String str = this.url;
        return this.url.substring(length, delimiterOffset(str, length, str.length(), ":@"));
    }

    public boolean equals(Object obj) {
        return (obj instanceof DeepLinkUri) && ((DeepLinkUri) obj).url.equals(this.url);
    }

    public String fragment() {
        return this.fragment;
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
        builder.port = this.port;
        builder.encodedPathSegments.clear();
        builder.encodedPathSegments.addAll(encodedPathSegments());
        builder.encodedQuery(encodedQuery());
        builder.encodedFragment = encodedFragment();
        return builder;
    }

    public String password() {
        return this.password;
    }

    public List<String> pathSegments() {
        return this.pathSegments;
    }

    public int pathSize() {
        return this.pathSegments.size();
    }

    public int port() {
        return this.port;
    }

    public String query() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        namesAndValuesToQueryString(sb, this.queryNamesAndValues);
        return sb.toString();
    }

    public String queryParameter(String str) {
        List<String> list = this.queryNamesAndValues;
        if (list == null) {
            return null;
        }
        int size = list.size();
        for (int i = 0; i < size; i += 2) {
            if (str.equals(this.queryNamesAndValues.get(i))) {
                return this.queryNamesAndValues.get(i + 1);
            }
        }
        return null;
    }

    public String queryParameterName(int i) {
        return this.queryNamesAndValues.get(i * 2);
    }

    public Set<String> queryParameterNames() {
        if (this.queryNamesAndValues == null) {
            return Collections.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int size = this.queryNamesAndValues.size();
        for (int i = 0; i < size; i += 2) {
            linkedHashSet.add(this.queryNamesAndValues.get(i));
        }
        return Collections.unmodifiableSet(linkedHashSet);
    }

    public String queryParameterValue(int i) {
        return this.queryNamesAndValues.get((i * 2) + 1);
    }

    public List<String> queryParameterValues(String str) {
        if (this.queryNamesAndValues == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int size = this.queryNamesAndValues.size();
        for (int i = 0; i < size; i += 2) {
            if (str.equals(this.queryNamesAndValues.get(i))) {
                arrayList.add(this.queryNamesAndValues.get(i + 1));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public int querySize() {
        List<String> list = this.queryNamesAndValues;
        return list != null ? list.size() / 2 : 0;
    }

    public DeepLinkUri resolve(String str) {
        Builder builder = new Builder();
        return builder.parse(this, str) == Builder.ParseResult.SUCCESS ? builder.build() : null;
    }

    public String scheme() {
        return this.scheme;
    }

    public String toString() {
        return this.url;
    }

    public URI uri() {
        try {
            return new URI(canonicalize(this.url, CONVERT_TO_URI_ENCODE_SET, true, false));
        } catch (URISyntaxException e) {
            StringBuilder m8728C = C22128a.m8728C("not valid as a java.net.URI: ");
            m8728C.append(this.url);
            throw new IllegalStateException(m8728C.toString());
        }
    }

    public URL url() {
        try {
            return new URL(this.url);
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }

    public String username() {
        return this.username;
    }
}
