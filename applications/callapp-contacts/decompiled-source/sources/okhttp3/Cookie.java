package okhttp3;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.a.z;
import kotlin.h.l;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018�� &2\u00020\u0001:\u0002%&BO\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0002\u0010\u000eJ\r\u0010\u0007\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\u0012J\u0013\u0010\u0013\u001a\u00020\n2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\r\u0010\u0005\u001a\u00020\u0006H\u0007¢\u0006\u0002\b\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0017J\r\u0010\r\u001a\u00020\nH\u0007¢\u0006\u0002\b\u0018J\r\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0002\b\u0019J\u000e\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001cJ\r\u0010\u0002\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\u001dJ\r\u0010\b\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\u001eJ\r\u0010\f\u001a\u00020\nH\u0007¢\u0006\u0002\b\u001fJ\r\u0010\t\u001a\u00020\nH\u0007¢\u0006\u0002\b J\b\u0010!\u001a\u00020\u0003H\u0016J\u0015\u0010!\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\nH��¢\u0006\u0002\b#J\r\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0002\b$R\u0013\u0010\u0007\u001a\u00020\u00038\u0007¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\u000fR\u0013\u0010\u0005\u001a\u00020\u00068\u0007¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0010R\u0013\u0010\r\u001a\u00020\n8\u0007¢\u0006\b\n��\u001a\u0004\b\r\u0010\u0011R\u0013\u0010\u000b\u001a\u00020\n8\u0007¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\u0011R\u0013\u0010\u0002\u001a\u00020\u00038\u0007¢\u0006\b\n��\u001a\u0004\b\u0002\u0010\u000fR\u0013\u0010\b\u001a\u00020\u00038\u0007¢\u0006\b\n��\u001a\u0004\b\b\u0010\u000fR\u0013\u0010\f\u001a\u00020\n8\u0007¢\u0006\b\n��\u001a\u0004\b\f\u0010\u0011R\u0013\u0010\t\u001a\u00020\n8\u0007¢\u0006\b\n��\u001a\u0004\b\t\u0010\u0011R\u0013\u0010\u0004\u001a\u00020\u00038\u0007¢\u0006\b\n��\u001a\u0004\b\u0004\u0010\u000f¨\u0006'"}, d2 = {"Lokhttp3/Cookie;", "", "name", "", "value", "expiresAt", "", "domain", "path", "secure", "", "httpOnly", "persistent", "hostOnly", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V", "()Ljava/lang/String;", "()J", "()Z", "-deprecated_domain", "equals", "other", "-deprecated_expiresAt", "hashCode", "", "-deprecated_hostOnly", "-deprecated_httpOnly", "matches", "url", "Lokhttp3/HttpUrl;", "-deprecated_name", "-deprecated_path", "-deprecated_persistent", "-deprecated_secure", "toString", "forObsoleteRfc2965", "toString$okhttp", "-deprecated_value", "Builder", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/Cookie.class */
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
    public static final Companion Companion = new Companion(null);
    private static final Pattern YEAR_PATTERN = Pattern.compile("(\\d{2,4})[^\\d]*");
    private static final Pattern MONTH_PATTERN = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    private static final Pattern DAY_OF_MONTH_PATTERN = Pattern.compile("(\\d{1,2})[^\\d]*");
    private static final Pattern TIME_PATTERN = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    @Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0003\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020\u0004J\u0018\u0010\u0003\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u000e\u0010\u0005\u001a\u00020��2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0011\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020��J\u000e\u0010\n\u001a\u00020��2\u0006\u0010\n\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020��2\u0006\u0010\u000b\u001a\u00020\u0004J\u0006\u0010\r\u001a\u00020��J\u000e\u0010\u000e\u001a\u00020��2\u0006\u0010\u000e\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0012"}, d2 = {"Lokhttp3/Cookie$Builder;", "", "()V", "domain", "", "expiresAt", "", "hostOnly", "", "httpOnly", "name", "path", "persistent", "secure", "value", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lokhttp3/Cookie;", "hostOnlyDomain", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/Cookie$Builder.class */
    public static final class Builder {
        private String domain;
        private boolean hostOnly;
        private boolean httpOnly;
        private String name;
        private boolean persistent;
        private boolean secure;
        private String value;
        private long expiresAt = DatesKt.MAX_DATE;
        private String path = "/";

        private final Builder domain(String str, boolean z) {
            Builder builder = this;
            String canonicalHost = HostnamesKt.toCanonicalHost(str);
            if (canonicalHost != null) {
                builder.domain = canonicalHost;
                builder.hostOnly = z;
                return builder;
            }
            throw new IllegalArgumentException("unexpected domain: ".concat(String.valueOf(str)));
        }

        public final Cookie build() {
            String str = this.name;
            if (str != null) {
                String str2 = this.value;
                if (str2 != null) {
                    long j = this.expiresAt;
                    String str3 = this.domain;
                    if (str3 != null) {
                        return new Cookie(str, str2, j, str3, this.path, this.secure, this.httpOnly, this.persistent, this.hostOnly, null);
                    }
                    throw new NullPointerException("builder.domain == null");
                }
                throw new NullPointerException("builder.value == null");
            }
            throw new NullPointerException("builder.name == null");
        }

        public final Builder domain(String domain) {
            p.d(domain, "domain");
            return domain(domain, false);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v0, types: [long] */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2, types: [long] */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Type inference failed for: r9v0 */
        /* JADX WARN: Type inference failed for: r9v1, types: [long] */
        /* JADX WARN: Type inference failed for: r9v2 */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final okhttp3.Cookie.Builder expiresAt(long r6) {
            /*
                r5 = this;
                r0 = r5
                okhttp3.Cookie$Builder r0 = (okhttp3.Cookie.Builder) r0
                r8 = r0
                r0 = r6
                r9 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 > 0) goto L_0x0013
                r0 = -9223372036854775808
                r9 = r0
            L_0x0013:
                r0 = r9
                r6 = r0
                r0 = r9
                r1 = 253402300799999(0xe677d21fdbff, double:1.251973714024093E-309)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0023
                r0 = 253402300799999(0xe677d21fdbff, double:1.251973714024093E-309)
                r6 = r0
            L_0x0023:
                r0 = r8
                r1 = r6
                r0.expiresAt = r1
                r0 = r8
                r1 = 1
                r0.persistent = r1
                r0 = r8
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Cookie.Builder.expiresAt(long):okhttp3.Cookie$Builder");
        }

        public final Builder hostOnlyDomain(String domain) {
            p.d(domain, "domain");
            return domain(domain, true);
        }

        public final Builder httpOnly() {
            Builder builder = this;
            builder.httpOnly = true;
            return builder;
        }

        public final Builder name(String name) {
            p.d(name, "name");
            Builder builder = this;
            if (p.a((Object) kotlin.h.p.b((CharSequence) name).toString(), (Object) name)) {
                builder.name = name;
                return builder;
            }
            throw new IllegalArgumentException("name is not trimmed".toString());
        }

        public final Builder path(String path) {
            p.d(path, "path");
            Builder builder = this;
            if (kotlin.h.p.a(path, "/", false)) {
                builder.path = path;
                return builder;
            }
            throw new IllegalArgumentException("path must start with '/'".toString());
        }

        public final Builder secure() {
            Builder builder = this;
            builder.secure = true;
            return builder;
        }

        public final Builder value(String value) {
            p.d(value, "value");
            Builder builder = this;
            if (p.a((Object) kotlin.h.p.b((CharSequence) value).toString(), (Object) value)) {
                builder.value = value;
                return builder;
            }
            throw new IllegalArgumentException("value is not trimmed".toString());
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n��\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\fH\u0002J'\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\fH��¢\u0006\u0002\b\u001bJ\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\fH\u0007J\u001e\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00150\u001d2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001fH\u0007J\u0010\u0010 \u001a\u00020\f2\u0006\u0010!\u001a\u00020\fH\u0002J \u0010\"\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\nH\u0002J\u0010\u0010#\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\fH\u0002J\u0018\u0010$\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\fH\u0002R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u0006\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u0007\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\b\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006&"}, d2 = {"Lokhttp3/Cookie$Companion;", "", "()V", "DAY_OF_MONTH_PATTERN", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "MONTH_PATTERN", "TIME_PATTERN", "YEAR_PATTERN", "dateCharacterOffset", "", "input", "", "pos", "limit", "invert", "", "domainMatch", "urlHost", "domain", "parse", "Lokhttp3/Cookie;", "currentTimeMillis", "", "url", "Lokhttp3/HttpUrl;", "setCookie", "parse$okhttp", "parseAll", "", "headers", "Lokhttp3/Headers;", "parseDomain", "s", "parseExpires", "parseMaxAge", "pathMatch", "path", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/Cookie$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final int dateCharacterOffset(String str, int i, int i2, boolean z) {
            while (i < i2) {
                char charAt = str.charAt(i);
                if (((charAt < ' ' && charAt != '\t') || charAt >= 127 || ('0' <= charAt && '9' >= charAt) || (('a' <= charAt && 'z' >= charAt) || (('A' <= charAt && 'Z' >= charAt) || charAt == ':'))) == (!z)) {
                    return i;
                }
                i++;
            }
            return i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean domainMatch(String str, String str2) {
            if (p.a((Object) str, (Object) str2)) {
                return true;
            }
            return kotlin.h.p.b(str, str2, false) && str.charAt((str.length() - str2.length()) - 1) == '.' && !Util.canParseAsIpAddress(str);
        }

        private final String parseDomain(String str) {
            if (!kotlin.h.p.b(str, ".", false)) {
                String canonicalHost = HostnamesKt.toCanonicalHost(kotlin.h.p.a(str, (CharSequence) "."));
                if (canonicalHost != null) {
                    return canonicalHost;
                }
                throw new IllegalArgumentException();
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }

        private final long parseExpires(String str, int i, int i2) {
            int i3;
            int i4;
            Companion companion = this;
            int dateCharacterOffset = companion.dateCharacterOffset(str, i, i2, false);
            Matcher matcher = Cookie.TIME_PATTERN.matcher(str);
            int i5 = -1;
            int i6 = -1;
            int i7 = -1;
            int i8 = -1;
            int i9 = -1;
            int i10 = -1;
            while (dateCharacterOffset < i2) {
                int dateCharacterOffset2 = companion.dateCharacterOffset(str, dateCharacterOffset + 1, i2, true);
                matcher.region(dateCharacterOffset, dateCharacterOffset2);
                if (i6 == -1 && matcher.usePattern(Cookie.TIME_PATTERN).matches()) {
                    String group = matcher.group(1);
                    p.b(group, "matcher.group(1)");
                    i6 = Integer.parseInt(group);
                    String group2 = matcher.group(2);
                    p.b(group2, "matcher.group(2)");
                    i9 = Integer.parseInt(group2);
                    String group3 = matcher.group(3);
                    p.b(group3, "matcher.group(3)");
                    i10 = Integer.parseInt(group3);
                    i5 = i5;
                    i7 = i7;
                    i8 = i8;
                } else if (i7 == -1 && matcher.usePattern(Cookie.DAY_OF_MONTH_PATTERN).matches()) {
                    String group4 = matcher.group(1);
                    p.b(group4, "matcher.group(1)");
                    i7 = Integer.parseInt(group4);
                    i5 = i5;
                    i6 = i6;
                    i8 = i8;
                    i9 = i9;
                    i10 = i10;
                } else if (i8 != -1 || !matcher.usePattern(Cookie.MONTH_PATTERN).matches()) {
                    i5 = i5;
                    i6 = i6;
                    i7 = i7;
                    i8 = i8;
                    i9 = i9;
                    i10 = i10;
                    if (i5 == -1) {
                        i5 = i5;
                        i6 = i6;
                        i7 = i7;
                        i8 = i8;
                        i9 = i9;
                        i10 = i10;
                        if (matcher.usePattern(Cookie.YEAR_PATTERN).matches()) {
                            String group5 = matcher.group(1);
                            p.b(group5, "matcher.group(1)");
                            i5 = Integer.parseInt(group5);
                            i10 = i10;
                            i9 = i9;
                            i8 = i8;
                            i7 = i7;
                            i6 = i6;
                        }
                    }
                } else {
                    String group6 = matcher.group(1);
                    p.b(group6, "matcher.group(1)");
                    Locale locale = Locale.US;
                    p.b(locale, "Locale.US");
                    Objects.requireNonNull(group6, "null cannot be cast to non-null type java.lang.String");
                    String lowerCase = group6.toLowerCase(locale);
                    p.b(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                    String pattern = Cookie.MONTH_PATTERN.pattern();
                    p.b(pattern, "MONTH_PATTERN.pattern()");
                    i8 = kotlin.h.p.a((CharSequence) pattern, lowerCase, 0, false, 6) / 4;
                    i5 = i5;
                    i6 = i6;
                    i7 = i7;
                    i9 = i9;
                    i10 = i10;
                }
                dateCharacterOffset = companion.dateCharacterOffset(str, dateCharacterOffset2 + 1, i2, false);
            }
            if (70 > i5) {
                i3 = i5;
            } else {
                i3 = i5;
                if (99 >= i5) {
                    i3 = i5 + 1900;
                }
            }
            if (i3 < 0) {
                i4 = i3;
            } else {
                i4 = i3;
                if (69 >= i3) {
                    i4 = i3 + 2000;
                }
            }
            if (i4 >= 1601) {
                if (i8 != -1) {
                    if (1 <= i7 && 31 >= i7) {
                        if (i6 >= 0 && 23 >= i6) {
                            if (i9 >= 0 && 59 >= i9) {
                                if (i10 >= 0 && 59 >= i10) {
                                    GregorianCalendar gregorianCalendar = new GregorianCalendar(Util.UTC);
                                    gregorianCalendar.setLenient(false);
                                    gregorianCalendar.set(1, i4);
                                    gregorianCalendar.set(2, i8 - 1);
                                    gregorianCalendar.set(5, i7);
                                    gregorianCalendar.set(11, i6);
                                    gregorianCalendar.set(12, i9);
                                    gregorianCalendar.set(13, i10);
                                    gregorianCalendar.set(14, 0);
                                    return gregorianCalendar.getTimeInMillis();
                                }
                                throw new IllegalArgumentException("Failed requirement.".toString());
                            }
                            throw new IllegalArgumentException("Failed requirement.".toString());
                        }
                        throw new IllegalArgumentException("Failed requirement.".toString());
                    }
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }

        private final long parseMaxAge(String str) {
            try {
                long parseLong = Long.parseLong(str);
                if (parseLong <= 0) {
                    return Long.MIN_VALUE;
                }
                return parseLong;
            } catch (NumberFormatException e) {
                if (new l("-?\\d+").a(str)) {
                    return kotlin.h.p.a(str, VerificationLanguage.REGION_PREFIX, false) ? Long.MIN_VALUE : Long.MAX_VALUE;
                }
                throw e;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean pathMatch(HttpUrl httpUrl, String str) {
            String encodedPath = httpUrl.encodedPath();
            if (p.a((Object) encodedPath, (Object) str)) {
                return true;
            }
            if (kotlin.h.p.a(encodedPath, str, false)) {
                return kotlin.h.p.b(str, "/", false) || encodedPath.charAt(str.length()) == '/';
            }
            return false;
        }

        public final Cookie parse(HttpUrl url, String setCookie) {
            p.d(url, "url");
            p.d(setCookie, "setCookie");
            return parse$okhttp(System.currentTimeMillis(), url, setCookie);
        }

        /* JADX WARN: Code restructure failed: missing block: B:57:0x0282, code lost:
            if (r0 > okhttp3.internal.http.DatesKt.MAX_DATE) goto L_0x0288;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v116 */
        /* JADX WARN: Type inference failed for: r0v173 */
        /* JADX WARN: Type inference failed for: r0v32 */
        /* JADX WARN: Type inference failed for: r0v77, types: [long] */
        /* JADX WARN: Type inference failed for: r15v1, types: [long] */
        /* JADX WARN: Type inference failed for: r15v2 */
        /* JADX WARN: Type inference failed for: r15v3 */
        /* JADX WARN: Type inference failed for: r15v4 */
        /* JADX WARN: Type inference failed for: r15v5 */
        /* JADX WARN: Type inference failed for: r26v0 */
        /* JADX WARN: Type inference failed for: r26v1, types: [long] */
        /* JADX WARN: Type inference failed for: r26v2 */
        /* JADX WARN: Type inference failed for: r26v5 */
        /* JADX WARN: Type inference failed for: r26v6 */
        /* JADX WARN: Type inference failed for: r26v7 */
        /* JADX WARN: Type inference failed for: r32v0 */
        /* JADX WARN: Type inference failed for: r32v6 */
        /* JADX WARN: Type inference failed for: r32v7 */
        /* JADX WARN: Type inference failed for: r37v1 */
        /* JADX WARN: Type inference failed for: r37v4 */
        /* JADX WARN: Type inference failed for: r37v5 */
        /* JADX WARN: Type inference failed for: r37v6 */
        /* JADX WARN: Type inference failed for: r37v7 */
        /* JADX WARN: Type inference failed for: r37v8 */
        /* JADX WARN: Type inference failed for: r37v9 */
        /* JADX WARN: Type inference failed for: r43v0 */
        /* JADX WARN: Type inference failed for: r43v2 */
        /* JADX WARN: Type inference failed for: r43v3 */
        /* JADX WARN: Type inference failed for: r43v4 */
        /* JADX WARN: Type inference failed for: r43v5 */
        /* JADX WARN: Type inference failed for: r43v6 */
        /* JADX WARN: Type inference failed for: r43v7 */
        /* JADX WARN: Unknown variable types count: 6 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final okhttp3.Cookie parse$okhttp(long r15, okhttp3.HttpUrl r17, java.lang.String r18) {
            /*
                Method dump skipped, instructions count: 869
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Cookie.Companion.parse$okhttp(long, okhttp3.HttpUrl, java.lang.String):okhttp3.Cookie");
        }

        public final List<Cookie> parseAll(HttpUrl url, Headers headers) {
            p.d(url, "url");
            p.d(headers, "headers");
            List<String> values = headers.values("Set-Cookie");
            int size = values.size();
            ArrayList arrayList = null;
            for (int i = 0; i < size; i++) {
                Cookie parse = parse(url, values.get(i));
                if (parse != null) {
                    ArrayList arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(parse);
                    arrayList = arrayList2;
                }
            }
            if (arrayList == null) {
                return z.f36608a;
            }
            List<Cookie> unmodifiableList = Collections.unmodifiableList(arrayList);
            p.b(unmodifiableList, "Collections.unmodifiableList(cookies)");
            return unmodifiableList;
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
        this.persistent = z3;
        this.hostOnly = z4;
    }

    public /* synthetic */ Cookie(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, j, str3, str4, z, z2, z3, z4);
    }

    public static final Cookie parse(HttpUrl httpUrl, String str) {
        return Companion.parse(httpUrl, str);
    }

    public static final List<Cookie> parseAll(HttpUrl httpUrl, Headers headers) {
        return Companion.parseAll(httpUrl, headers);
    }

    /* renamed from: -deprecated_domain  reason: not valid java name */
    public final String m7834deprecated_domain() {
        return this.domain;
    }

    /* renamed from: -deprecated_expiresAt  reason: not valid java name */
    public final long m7835deprecated_expiresAt() {
        return this.expiresAt;
    }

    /* renamed from: -deprecated_hostOnly  reason: not valid java name */
    public final boolean m7836deprecated_hostOnly() {
        return this.hostOnly;
    }

    /* renamed from: -deprecated_httpOnly  reason: not valid java name */
    public final boolean m7837deprecated_httpOnly() {
        return this.httpOnly;
    }

    /* renamed from: -deprecated_name  reason: not valid java name */
    public final String m7838deprecated_name() {
        return this.name;
    }

    /* renamed from: -deprecated_path  reason: not valid java name */
    public final String m7839deprecated_path() {
        return this.path;
    }

    /* renamed from: -deprecated_persistent  reason: not valid java name */
    public final boolean m7840deprecated_persistent() {
        return this.persistent;
    }

    /* renamed from: -deprecated_secure  reason: not valid java name */
    public final boolean m7841deprecated_secure() {
        return this.secure;
    }

    /* renamed from: -deprecated_value  reason: not valid java name */
    public final String m7842deprecated_value() {
        return this.value;
    }

    public final String domain() {
        return this.domain;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Cookie)) {
            return false;
        }
        Cookie cookie = (Cookie) obj;
        return p.a((Object) cookie.name, (Object) this.name) && p.a((Object) cookie.value, (Object) this.value) && cookie.expiresAt == this.expiresAt && p.a((Object) cookie.domain, (Object) this.domain) && p.a((Object) cookie.path, (Object) this.path) && cookie.secure == this.secure && cookie.httpOnly == this.httpOnly && cookie.persistent == this.persistent && cookie.hostOnly == this.hostOnly;
    }

    public final long expiresAt() {
        return this.expiresAt;
    }

    public final int hashCode() {
        return ((((((((((((((((this.name.hashCode() + 527) * 31) + this.value.hashCode()) * 31) + C$r8$backportedMethods$utility$Long$1$hashCode.hashCode(this.expiresAt)) * 31) + this.domain.hashCode()) * 31) + this.path.hashCode()) * 31) + C$r8$backportedMethods$utility$Boolean$1$hashCode.hashCode(this.secure)) * 31) + C$r8$backportedMethods$utility$Boolean$1$hashCode.hashCode(this.httpOnly)) * 31) + C$r8$backportedMethods$utility$Boolean$1$hashCode.hashCode(this.persistent)) * 31) + C$r8$backportedMethods$utility$Boolean$1$hashCode.hashCode(this.hostOnly);
    }

    public final boolean hostOnly() {
        return this.hostOnly;
    }

    public final boolean httpOnly() {
        return this.httpOnly;
    }

    public final boolean matches(HttpUrl url) {
        p.d(url, "url");
        if ((this.hostOnly ? p.a((Object) url.host(), (Object) this.domain) : Companion.domainMatch(url.host(), this.domain)) && Companion.pathMatch(url, this.path)) {
            return !this.secure || url.isHttps();
        }
        return false;
    }

    public final String name() {
        return this.name;
    }

    public final String path() {
        return this.path;
    }

    public final boolean persistent() {
        return this.persistent;
    }

    public final boolean secure() {
        return this.secure;
    }

    public final String toString() {
        return toString$okhttp(false);
    }

    public final String toString$okhttp(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.name);
        sb.append('=');
        sb.append(this.value);
        if (this.persistent) {
            if (this.expiresAt == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(DatesKt.toHttpDateString(new Date(this.expiresAt)));
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
        String sb2 = sb.toString();
        p.b(sb2, "toString()");
        return sb2;
    }

    public final String value() {
        return this.value;
    }
}
