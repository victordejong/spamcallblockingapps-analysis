package okhttp3;

import com.yanzhenjie.nohttp.Headers;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal.Util;
import okhttp3.internal.http.HttpDate;
/* loaded from: classes2-dex2jar.jar:okhttp3/Cookie.class */
public final class Cookie {
    private final String domain;
    private final long expiresAt;
    private final boolean hostOnly;
    private final boolean httpOnly;
    private final String name;
    private final String path;
    private final boolean persistent;
    private final boolean secure;
    private final String value;
    private static final Pattern YEAR_PATTERN = Pattern.compile("(\\d{2,4})[^\\d]*");
    private static final Pattern MONTH_PATTERN = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    private static final Pattern DAY_OF_MONTH_PATTERN = Pattern.compile("(\\d{1,2})[^\\d]*");
    private static final Pattern TIME_PATTERN = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* loaded from: classes2-dex2jar.jar:okhttp3/Cookie$Builder.class */
    public static final class Builder {
        String domain;
        boolean hostOnly;
        boolean httpOnly;
        String name;
        boolean persistent;
        boolean secure;
        String value;
        long expiresAt = HttpDate.MAX_DATE;
        String path = "/";

        private Builder domain(String str, boolean z) {
            Objects.requireNonNull(str, "domain == null");
            String canonicalizeHost = Util.canonicalizeHost(str);
            if (canonicalizeHost != null) {
                this.domain = canonicalizeHost;
                this.hostOnly = z;
                return this;
            }
            throw new IllegalArgumentException("unexpected domain: " + str);
        }

        public Cookie build() {
            return new Cookie(this);
        }

        public Builder domain(String str) {
            return domain(str, false);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder expiresAt(long j) {
            char c = j;
            if (j <= 0) {
                c = 0;
            }
            char c2 = c;
            if (c > HttpDate.MAX_DATE) {
                c2 = 56319;
            }
            this.expiresAt = c2;
            this.persistent = true;
            return this;
        }

        public Builder hostOnlyDomain(String str) {
            return domain(str, true);
        }

        public Builder httpOnly() {
            this.httpOnly = true;
            return this;
        }

        public Builder name(String str) {
            Objects.requireNonNull(str, "name == null");
            if (str.trim().equals(str)) {
                this.name = str;
                return this;
            }
            throw new IllegalArgumentException("name is not trimmed");
        }

        public Builder path(String str) {
            if (str.startsWith("/")) {
                this.path = str;
                return this;
            }
            throw new IllegalArgumentException("path must start with '/'");
        }

        public Builder secure() {
            this.secure = true;
            return this;
        }

        public Builder value(String str) {
            Objects.requireNonNull(str, "value == null");
            if (str.trim().equals(str)) {
                this.value = str;
                return this;
            }
            throw new IllegalArgumentException("value is not trimmed");
        }
    }

    private Cookie(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.name = str;
        this.value = str2;
        this.expiresAt = j;
        this.domain = str3;
        this.path = str4;
        this.secure = z;
        this.httpOnly = z2;
        this.hostOnly = z3;
        this.persistent = z4;
    }

    Cookie(Builder builder) {
        String str = builder.name;
        Objects.requireNonNull(str, "builder.name == null");
        String str2 = builder.value;
        Objects.requireNonNull(str2, "builder.value == null");
        String str3 = builder.domain;
        Objects.requireNonNull(str3, "builder.domain == null");
        this.name = str;
        this.value = str2;
        this.expiresAt = builder.expiresAt;
        this.domain = str3;
        this.path = builder.path;
        this.secure = builder.secure;
        this.httpOnly = builder.httpOnly;
        this.persistent = builder.persistent;
        this.hostOnly = builder.hostOnly;
    }

    private static int dateCharacterOffset(String str, int i, int i2, boolean z) {
        while (i < i2) {
            char charAt = str.charAt(i);
            if (((charAt < ' ' && charAt != '\t') || charAt >= 127 || (charAt >= '0' && charAt <= '9') || ((charAt >= 'a' && charAt <= 'z') || ((charAt >= 'A' && charAt <= 'Z') || charAt == ':'))) == (!z)) {
                return i;
            }
            i++;
        }
        return i2;
    }

    private static boolean domainMatch(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        return str.endsWith(str2) && str.charAt((str.length() - str2.length()) - 1) == '.' && !Util.verifyAsIpAddress(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x023e, code lost:
        if (r0 > okhttp3.internal.http.HttpDate.MAX_DATE) goto L54;
     */
    /* JADX WARN: Type inference failed for: r0v159, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    /* JADX WARN: Type inference failed for: r0v94, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static okhttp3.Cookie parse(long r13, okhttp3.HttpUrl r15, java.lang.String r16) {
        /*
            Method dump skipped, instructions count: 761
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.Cookie.parse(long, okhttp3.HttpUrl, java.lang.String):okhttp3.Cookie");
    }

    public static Cookie parse(HttpUrl httpUrl, String str) {
        return parse(System.currentTimeMillis(), httpUrl, str);
    }

    public static List<Cookie> parseAll(HttpUrl httpUrl, Headers headers) {
        ArrayList arrayList;
        List<String> values = headers.values(Headers.HEAD_KEY_SET_COOKIE);
        int size = values.size();
        ArrayList arrayList2 = null;
        int i = 0;
        while (i < size) {
            Cookie parse = parse(httpUrl, values.get(i));
            if (parse == null) {
                arrayList = arrayList2;
            } else {
                arrayList = arrayList2;
                if (arrayList2 == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(parse);
            }
            i++;
            arrayList2 = arrayList;
        }
        return arrayList2 != null ? Collections.unmodifiableList(arrayList2) : Collections.emptyList();
    }

    private static String parseDomain(String str) {
        if (!str.endsWith(".")) {
            String str2 = str;
            if (str.startsWith(".")) {
                str2 = str.substring(1);
            }
            String canonicalizeHost = Util.canonicalizeHost(str2);
            if (canonicalizeHost == null) {
                throw new IllegalArgumentException();
            }
            return canonicalizeHost;
        }
        throw new IllegalArgumentException();
    }

    private static long parseExpires(String str, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int dateCharacterOffset = dateCharacterOffset(str, i, i2, false);
        Matcher matcher = TIME_PATTERN.matcher(str);
        int i9 = -1;
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        int i14 = -1;
        while (dateCharacterOffset < i2) {
            int dateCharacterOffset2 = dateCharacterOffset(str, dateCharacterOffset + 1, i2, true);
            matcher.region(dateCharacterOffset, dateCharacterOffset2);
            if (i10 == -1 && matcher.usePattern(TIME_PATTERN).matches()) {
                i8 = Integer.parseInt(matcher.group(1));
                i7 = Integer.parseInt(matcher.group(2));
                i6 = Integer.parseInt(matcher.group(3));
                i5 = i9;
                i4 = i11;
                i3 = i12;
            } else if (i11 != -1 || !matcher.usePattern(DAY_OF_MONTH_PATTERN).matches()) {
                if (i12 == -1) {
                    Pattern pattern = MONTH_PATTERN;
                    if (matcher.usePattern(pattern).matches()) {
                        i3 = pattern.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
                        i5 = i9;
                        i8 = i10;
                        i4 = i11;
                        i7 = i13;
                        i6 = i14;
                    }
                }
                i5 = i9;
                i8 = i10;
                i4 = i11;
                i3 = i12;
                i7 = i13;
                i6 = i14;
                if (i9 == -1) {
                    i5 = i9;
                    i8 = i10;
                    i4 = i11;
                    i3 = i12;
                    i7 = i13;
                    i6 = i14;
                    if (matcher.usePattern(YEAR_PATTERN).matches()) {
                        i5 = Integer.parseInt(matcher.group(1));
                        i6 = i14;
                        i7 = i13;
                        i3 = i12;
                        i4 = i11;
                        i8 = i10;
                    }
                }
            } else {
                i4 = Integer.parseInt(matcher.group(1));
                i5 = i9;
                i8 = i10;
                i3 = i12;
                i7 = i13;
                i6 = i14;
            }
            i9 = i5;
            i10 = i8;
            i11 = i4;
            i12 = i3;
            i13 = i7;
            i14 = i6;
            dateCharacterOffset = dateCharacterOffset(str, dateCharacterOffset2 + 1, i2, false);
        }
        int i15 = i9;
        if (i9 >= 70) {
            i15 = i9;
            if (i9 <= 99) {
                i15 = i9 + 1900;
            }
        }
        int i16 = i15;
        if (i15 >= 0) {
            i16 = i15;
            if (i15 <= 69) {
                i16 = i15 + 2000;
            }
        }
        if (i16 >= 1601) {
            if (i12 == -1) {
                throw new IllegalArgumentException();
            }
            if (i11 < 1 || i11 > 31) {
                throw new IllegalArgumentException();
            }
            if (i10 < 0 || i10 > 23) {
                throw new IllegalArgumentException();
            }
            if (i13 < 0 || i13 > 59) {
                throw new IllegalArgumentException();
            }
            if (i14 < 0 || i14 > 59) {
                throw new IllegalArgumentException();
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(Util.UTC);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, i16);
            gregorianCalendar.set(2, i12 - 1);
            gregorianCalendar.set(5, i11);
            gregorianCalendar.set(11, i10);
            gregorianCalendar.set(12, i13);
            gregorianCalendar.set(13, i14);
            gregorianCalendar.set(14, 0);
            return gregorianCalendar.getTimeInMillis();
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    private static long parseMaxAge(String str) {
        char c = 0;
        try {
            ?? parseLong = Long.parseLong(str);
            if (parseLong > 0) {
                c = parseLong;
            }
            return c;
        } catch (NumberFormatException e) {
            if (!str.matches("-?\\d+")) {
                throw e;
            }
            if (!str.startsWith("-")) {
                c = 65535;
            }
            return c;
        }
    }

    private static boolean pathMatch(HttpUrl httpUrl, String str) {
        String encodedPath = httpUrl.encodedPath();
        if (encodedPath.equals(str)) {
            return true;
        }
        if (!encodedPath.startsWith(str)) {
            return false;
        }
        return str.endsWith("/") || encodedPath.charAt(str.length()) == '/';
    }

    public String domain() {
        return this.domain;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Cookie)) {
            return false;
        }
        Cookie cookie = (Cookie) obj;
        boolean z = false;
        if (cookie.name.equals(this.name)) {
            z = false;
            if (cookie.value.equals(this.value)) {
                z = false;
                if (cookie.domain.equals(this.domain)) {
                    z = false;
                    if (cookie.path.equals(this.path)) {
                        z = false;
                        if (cookie.expiresAt == this.expiresAt) {
                            z = false;
                            if (cookie.secure == this.secure) {
                                z = false;
                                if (cookie.httpOnly == this.httpOnly) {
                                    z = false;
                                    if (cookie.persistent == this.persistent) {
                                        z = false;
                                        if (cookie.hostOnly == this.hostOnly) {
                                            z = true;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public long expiresAt() {
        return this.expiresAt;
    }

    public int hashCode() {
        int hashCode = this.name.hashCode();
        int hashCode2 = this.value.hashCode();
        int hashCode3 = this.domain.hashCode();
        int hashCode4 = this.path.hashCode();
        long j = this.expiresAt;
        return ((((((((((((((((527 + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + (!this.secure ? 1 : 0)) * 31) + (!this.httpOnly ? 1 : 0)) * 31) + (!this.persistent ? 1 : 0)) * 31) + (!this.hostOnly ? 1 : 0);
    }

    public boolean hostOnly() {
        return this.hostOnly;
    }

    public boolean httpOnly() {
        return this.httpOnly;
    }

    public boolean matches(HttpUrl httpUrl) {
        if ((this.hostOnly ? httpUrl.host().equals(this.domain) : domainMatch(httpUrl.host(), this.domain)) && pathMatch(httpUrl, this.path)) {
            return !this.secure || httpUrl.isHttps();
        }
        return false;
    }

    public String name() {
        return this.name;
    }

    public String path() {
        return this.path;
    }

    public boolean persistent() {
        return this.persistent;
    }

    public boolean secure() {
        return this.secure;
    }

    public String toString() {
        return toString(false);
    }

    String toString(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.name);
        sb.append('=');
        sb.append(this.value);
        if (this.persistent) {
            if (this.expiresAt == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(HttpDate.format(new Date(this.expiresAt)));
            }
        }
        if (!this.hostOnly) {
            sb.append("; domain=");
            if (z) {
                sb.append(".");
            }
            sb.append(this.domain);
        }
        sb.append("; path=");
        sb.append(this.path);
        if (this.secure) {
            sb.append("; secure");
        }
        if (this.httpOnly) {
            sb.append("; httponly");
        }
        return sb.toString();
    }

    public String value() {
        return this.value;
    }
}
