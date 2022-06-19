package okhttp3;

import com.facebook.ads.AdError;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018�� &2\u00020\u0001:\u0002%&BO\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0002\u0010\u000eJ\r\u0010\u0007\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\u0012J\u0013\u0010\u0013\u001a\u00020\n2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\r\u0010\u0005\u001a\u00020\u0006H\u0007¢\u0006\u0002\b\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0017J\r\u0010\r\u001a\u00020\nH\u0007¢\u0006\u0002\b\u0018J\r\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0002\b\u0019J\u000e\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001cJ\r\u0010\u0002\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\u001dJ\r\u0010\b\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\u001eJ\r\u0010\f\u001a\u00020\nH\u0007¢\u0006\u0002\b\u001fJ\r\u0010\t\u001a\u00020\nH\u0007¢\u0006\u0002\b J\b\u0010!\u001a\u00020\u0003H\u0016J\u0015\u0010!\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\nH��¢\u0006\u0002\b#J\r\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0002\b$R\u0013\u0010\u0007\u001a\u00020\u00038\u0007¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\u000fR\u0013\u0010\u0005\u001a\u00020\u00068\u0007¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0010R\u0013\u0010\r\u001a\u00020\n8\u0007¢\u0006\b\n��\u001a\u0004\b\r\u0010\u0011R\u0013\u0010\u000b\u001a\u00020\n8\u0007¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\u0011R\u0013\u0010\u0002\u001a\u00020\u00038\u0007¢\u0006\b\n��\u001a\u0004\b\u0002\u0010\u000fR\u0013\u0010\b\u001a\u00020\u00038\u0007¢\u0006\b\n��\u001a\u0004\b\b\u0010\u000fR\u0013\u0010\f\u001a\u00020\n8\u0007¢\u0006\b\n��\u001a\u0004\b\f\u0010\u0011R\u0013\u0010\t\u001a\u00020\n8\u0007¢\u0006\b\n��\u001a\u0004\b\t\u0010\u0011R\u0013\u0010\u0004\u001a\u00020\u00038\u0007¢\u0006\b\n��\u001a\u0004\b\u0004\u0010\u000f¨\u0006'"}, m400d2 = {"Lokhttp3/Cookie;", "", "name", "", "value", "expiresAt", "", "domain", "path", POBConstants.KEY_SECURE, "", "httpOnly", "persistent", "hostOnly", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V", "()Ljava/lang/String;", "()J", "()Z", "-deprecated_domain", "equals", "other", "-deprecated_expiresAt", "hashCode", "", "-deprecated_hostOnly", "-deprecated_httpOnly", "matches", "url", "Lokhttp3/HttpUrl;", "-deprecated_name", "-deprecated_path", "-deprecated_persistent", "-deprecated_secure", "toString", "forObsoleteRfc2965", "toString$okhttp", "-deprecated_value", "Builder", "Companion", "okhttp"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:okhttp3/Cookie.class */
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

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0003\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020\u0004J\u0018\u0010\u0003\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u000e\u0010\u0005\u001a\u00020��2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0011\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020��J\u000e\u0010\n\u001a\u00020��2\u0006\u0010\n\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020��2\u0006\u0010\u000b\u001a\u00020\u0004J\u0006\u0010\r\u001a\u00020��J\u000e\u0010\u000e\u001a\u00020��2\u0006\u0010\u000e\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0012"}, m400d2 = {"Lokhttp3/Cookie$Builder;", "", "()V", "domain", "", "expiresAt", "", "hostOnly", "", "httpOnly", "name", "path", "persistent", POBConstants.KEY_SECURE, "value", "build", "Lokhttp3/Cookie;", "hostOnlyDomain", "okhttp"}, m399k = 1, m398mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:okhttp3/Cookie$Builder.class */
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
            throw new IllegalArgumentException("unexpected domain: " + str);
        }

        public final Cookie build() {
            String str = this.name;
            if (str != null) {
                String str2 = this.value;
                if (str2 == null) {
                    throw new NullPointerException("builder.value == null");
                }
                long j = this.expiresAt;
                String str3 = this.domain;
                if (str3 == null) {
                    throw new NullPointerException("builder.domain == null");
                }
                return new Cookie(str, str2, j, str3, this.path, this.secure, this.httpOnly, this.persistent, this.hostOnly, null);
            }
            throw new NullPointerException("builder.name == null");
        }

        public final Builder domain(String domain) {
            Intrinsics.checkNotNullParameter(domain, "domain");
            return domain(domain, false);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder expiresAt(long j) {
            Builder builder = this;
            char c = j;
            if (j <= 0) {
                c = 0;
            }
            char c2 = c;
            if (c > DatesKt.MAX_DATE) {
                c2 = 56319;
            }
            builder.expiresAt = c2;
            builder.persistent = true;
            return builder;
        }

        public final Builder hostOnlyDomain(String domain) {
            Intrinsics.checkNotNullParameter(domain, "domain");
            return domain(domain, true);
        }

        public final Builder httpOnly() {
            Builder builder = this;
            builder.httpOnly = true;
            return builder;
        }

        public final Builder name(String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            Builder builder = this;
            if (Intrinsics.areEqual(StringsKt.trim((CharSequence) name).toString(), name)) {
                builder.name = name;
                return builder;
            }
            throw new IllegalArgumentException("name is not trimmed".toString());
        }

        public final Builder path(String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            Builder builder = this;
            if (StringsKt.startsWith$default(path, "/", false, 2, (Object) null)) {
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
            Intrinsics.checkNotNullParameter(value, "value");
            Builder builder = this;
            if (Intrinsics.areEqual(StringsKt.trim((CharSequence) value).toString(), value)) {
                builder.value = value;
                return builder;
            }
            throw new IllegalArgumentException("value is not trimmed".toString());
        }
    }

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n��\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\fH\u0002J'\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\fH��¢\u0006\u0002\b\u001bJ\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\fH\u0007J\u001e\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00150\u001d2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001fH\u0007J\u0010\u0010 \u001a\u00020\f2\u0006\u0010!\u001a\u00020\fH\u0002J \u0010\"\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\nH\u0002J\u0010\u0010#\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\fH\u0002J\u0018\u0010$\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\fH\u0002R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u0006\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u0007\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\b\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006&"}, m400d2 = {"Lokhttp3/Cookie$Companion;", "", "()V", "DAY_OF_MONTH_PATTERN", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "MONTH_PATTERN", "TIME_PATTERN", "YEAR_PATTERN", "dateCharacterOffset", "", "input", "", POBConstants.KEY_POSITION, "limit", "invert", "", "domainMatch", "urlHost", "domain", "parse", "Lokhttp3/Cookie;", "currentTimeMillis", "", "url", "Lokhttp3/HttpUrl;", "setCookie", "parse$okhttp", "parseAll", "", "headers", "Lokhttp3/Headers;", "parseDomain", "s", "parseExpires", "parseMaxAge", "pathMatch", "path", "okhttp"}, m399k = 1, m398mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:okhttp3/Cookie$Companion.class */
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

        public final boolean domainMatch(String str, String str2) {
            boolean z = true;
            if (Intrinsics.areEqual(str, str2)) {
                return true;
            }
            if (!StringsKt.endsWith$default(str, str2, false, 2, (Object) null) || str.charAt((str.length() - str2.length()) - 1) != '.' || Util.canParseAsIpAddress(str)) {
                z = false;
            }
            return z;
        }

        private final String parseDomain(String str) {
            if (!StringsKt.endsWith$default(str, ".", false, 2, (Object) null)) {
                String canonicalHost = HostnamesKt.toCanonicalHost(StringsKt.removePrefix(str, (CharSequence) "."));
                if (canonicalHost == null) {
                    throw new IllegalArgumentException();
                }
                return canonicalHost;
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }

        private final long parseExpires(String str, int i, int i2) {
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            int i8;
            int i9;
            int i10;
            int i11;
            Companion companion = this;
            int dateCharacterOffset = companion.dateCharacterOffset(str, i, i2, false);
            Matcher matcher = Cookie.TIME_PATTERN.matcher(str);
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int i15 = -1;
            int i16 = -1;
            int i17 = -1;
            while (true) {
                i3 = i17;
                if (dateCharacterOffset >= i2) {
                    break;
                }
                int dateCharacterOffset2 = companion.dateCharacterOffset(str, dateCharacterOffset + 1, i2, true);
                matcher.region(dateCharacterOffset, dateCharacterOffset2);
                if (i13 == -1 && matcher.usePattern(Cookie.TIME_PATTERN).matches()) {
                    String group = matcher.group(1);
                    Intrinsics.checkNotNullExpressionValue(group, "matcher.group(1)");
                    i11 = Integer.parseInt(group);
                    String group2 = matcher.group(2);
                    Intrinsics.checkNotNullExpressionValue(group2, "matcher.group(2)");
                    i10 = Integer.parseInt(group2);
                    String group3 = matcher.group(3);
                    Intrinsics.checkNotNullExpressionValue(group3, "matcher.group(3)");
                    i9 = Integer.parseInt(group3);
                    i8 = i12;
                    i7 = i14;
                    i6 = i15;
                } else if (i14 == -1 && matcher.usePattern(Cookie.DAY_OF_MONTH_PATTERN).matches()) {
                    String group4 = matcher.group(1);
                    Intrinsics.checkNotNullExpressionValue(group4, "matcher.group(1)");
                    i7 = Integer.parseInt(group4);
                    i8 = i12;
                    i11 = i13;
                    i6 = i15;
                    i10 = i16;
                    i9 = i3;
                } else if (i15 != -1 || !matcher.usePattern(Cookie.MONTH_PATTERN).matches()) {
                    i8 = i12;
                    i11 = i13;
                    i7 = i14;
                    i6 = i15;
                    i10 = i16;
                    i9 = i3;
                    if (i12 == -1) {
                        i8 = i12;
                        i11 = i13;
                        i7 = i14;
                        i6 = i15;
                        i10 = i16;
                        i9 = i3;
                        if (matcher.usePattern(Cookie.YEAR_PATTERN).matches()) {
                            String group5 = matcher.group(1);
                            Intrinsics.checkNotNullExpressionValue(group5, "matcher.group(1)");
                            i8 = Integer.parseInt(group5);
                            i9 = i3;
                            i10 = i16;
                            i6 = i15;
                            i7 = i14;
                            i11 = i13;
                        }
                    }
                } else {
                    String group6 = matcher.group(1);
                    Intrinsics.checkNotNullExpressionValue(group6, "matcher.group(1)");
                    Locale locale = Locale.US;
                    Intrinsics.checkNotNullExpressionValue(locale, "Locale.US");
                    Objects.requireNonNull(group6, "null cannot be cast to non-null type java.lang.String");
                    String lowerCase = group6.toLowerCase(locale);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                    String pattern = Cookie.MONTH_PATTERN.pattern();
                    Intrinsics.checkNotNullExpressionValue(pattern, "MONTH_PATTERN.pattern()");
                    i6 = StringsKt.indexOf$default((CharSequence) pattern, lowerCase, 0, false, 6, (Object) null) / 4;
                    i8 = i12;
                    i11 = i13;
                    i7 = i14;
                    i10 = i16;
                    i9 = i3;
                }
                dateCharacterOffset = companion.dateCharacterOffset(str, dateCharacterOffset2 + 1, i2, false);
                i12 = i8;
                i13 = i11;
                i14 = i7;
                i15 = i6;
                i16 = i10;
                i17 = i9;
            }
            if (70 > i12) {
                i4 = i12;
            } else {
                i4 = i12;
                if (99 >= i12) {
                    i4 = i12 + 1900;
                }
            }
            if (i4 < 0) {
                i5 = i4;
            } else {
                i5 = i4;
                if (69 >= i4) {
                    i5 = i4 + AdError.SERVER_ERROR_CODE;
                }
            }
            if (i5 >= 1601) {
                if (!(i15 != -1)) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                if (!(1 <= i14 && 31 >= i14)) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                if (!(i13 >= 0 && 23 >= i13)) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                if (!(i16 >= 0 && 59 >= i16)) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                if (!(i3 >= 0 && 59 >= i3)) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                GregorianCalendar gregorianCalendar = new GregorianCalendar(Util.UTC);
                gregorianCalendar.setLenient(false);
                gregorianCalendar.set(1, i5);
                gregorianCalendar.set(2, i15 - 1);
                gregorianCalendar.set(5, i14);
                gregorianCalendar.set(11, i13);
                gregorianCalendar.set(12, i16);
                gregorianCalendar.set(13, i3);
                gregorianCalendar.set(14, 0);
                return gregorianCalendar.getTimeInMillis();
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }

        /* JADX WARN: Type inference failed for: r0v12, types: [long] */
        private final long parseMaxAge(String str) {
            char c = 0;
            try {
                ?? parseLong = Long.parseLong(str);
                if (parseLong > 0) {
                    c = parseLong;
                }
                return c;
            } catch (NumberFormatException e) {
                if (!new Regex("-?\\d+").matches(str)) {
                    throw e;
                }
                if (!StringsKt.startsWith$default(str, "-", false, 2, (Object) null)) {
                    c = 65535;
                }
                return c;
            }
        }

        public final boolean pathMatch(HttpUrl httpUrl, String str) {
            String encodedPath = httpUrl.encodedPath();
            if (Intrinsics.areEqual(encodedPath, str)) {
                return true;
            }
            if (!StringsKt.startsWith$default(encodedPath, str, false, 2, (Object) null)) {
                return false;
            }
            return StringsKt.endsWith$default(str, "/", false, 2, (Object) null) || encodedPath.charAt(str.length()) == '/';
        }

        @JvmStatic
        public final Cookie parse(HttpUrl url, String setCookie) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(setCookie, "setCookie");
            return parse$okhttp(System.currentTimeMillis(), url, setCookie);
        }

        /* JADX WARN: Code restructure failed: missing block: B:57:0x0290, code lost:
            if (r0 > okhttp3.internal.http.DatesKt.MAX_DATE) goto L58;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v107, types: [long] */
        /* JADX WARN: Type inference failed for: r0v117 */
        /* JADX WARN: Type inference failed for: r0v175, types: [long] */
        /* JADX WARN: Type inference failed for: r0v33 */
        /* JADX WARN: Type inference failed for: r0v34 */
        /* JADX WARN: Type inference failed for: r0v78, types: [long] */
        /* JADX WARN: Type inference failed for: r0v87, types: [long] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final okhttp3.Cookie parse$okhttp(long r15, okhttp3.HttpUrl r17, java.lang.String r18) {
            /*
                Method dump skipped, instructions count: 885
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Cookie.Companion.parse$okhttp(long, okhttp3.HttpUrl, java.lang.String):okhttp3.Cookie");
        }

        @JvmStatic
        public final List<Cookie> parseAll(HttpUrl url, Headers headers) {
            List<Cookie> list;
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(headers, "headers");
            List<String> values = headers.values("Set-Cookie");
            List list2 = null;
            int size = values.size();
            int i = 0;
            while (i < size) {
                Cookie parse = parse(url, values.get(i));
                ArrayList arrayList = list2;
                if (parse != null) {
                    arrayList = list2;
                    if (list2 == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(parse);
                }
                i++;
                list2 = arrayList;
            }
            if (list2 != null) {
                list = Collections.unmodifiableList(list2);
                Intrinsics.checkNotNullExpressionValue(list, "Collections.unmodifiableList(cookies)");
            } else {
                list = CollectionsKt.emptyList();
            }
            return list;
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

    @JvmStatic
    public static final Cookie parse(HttpUrl httpUrl, String str) {
        return Companion.parse(httpUrl, str);
    }

    @JvmStatic
    public static final List<Cookie> parseAll(HttpUrl httpUrl, Headers headers) {
        return Companion.parseAll(httpUrl, headers);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "domain", imports = {}))
    /* renamed from: -deprecated_domain */
    public final String m5638deprecated_domain() {
        return this.domain;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "expiresAt", imports = {}))
    /* renamed from: -deprecated_expiresAt */
    public final long m5639deprecated_expiresAt() {
        return this.expiresAt;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "hostOnly", imports = {}))
    /* renamed from: -deprecated_hostOnly */
    public final boolean m5640deprecated_hostOnly() {
        return this.hostOnly;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "httpOnly", imports = {}))
    /* renamed from: -deprecated_httpOnly */
    public final boolean m5641deprecated_httpOnly() {
        return this.httpOnly;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "name", imports = {}))
    /* renamed from: -deprecated_name */
    public final String m5642deprecated_name() {
        return this.name;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "path", imports = {}))
    /* renamed from: -deprecated_path */
    public final String m5643deprecated_path() {
        return this.path;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "persistent", imports = {}))
    /* renamed from: -deprecated_persistent */
    public final boolean m5644deprecated_persistent() {
        return this.persistent;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = POBConstants.KEY_SECURE, imports = {}))
    /* renamed from: -deprecated_secure */
    public final boolean m5645deprecated_secure() {
        return this.secure;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "value", imports = {}))
    /* renamed from: -deprecated_value */
    public final String m5646deprecated_value() {
        return this.value;
    }

    public final String domain() {
        return this.domain;
    }

    public boolean equals(Object obj) {
        boolean z;
        if (obj instanceof Cookie) {
            Cookie cookie = (Cookie) obj;
            if (Intrinsics.areEqual(cookie.name, this.name) && Intrinsics.areEqual(cookie.value, this.value) && cookie.expiresAt == this.expiresAt && Intrinsics.areEqual(cookie.domain, this.domain) && Intrinsics.areEqual(cookie.path, this.path) && cookie.secure == this.secure && cookie.httpOnly == this.httpOnly && cookie.persistent == this.persistent && cookie.hostOnly == this.hostOnly) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    public final long expiresAt() {
        return this.expiresAt;
    }

    public int hashCode() {
        return ((((((((((((((((527 + this.name.hashCode()) * 31) + this.value.hashCode()) * 31) + C$r8$backportedMethods$utility$Long$1$hashCode.hashCode(this.expiresAt)) * 31) + this.domain.hashCode()) * 31) + this.path.hashCode()) * 31) + C$r8$backportedMethods$utility$Boolean$1$hashCode.hashCode(this.secure)) * 31) + C$r8$backportedMethods$utility$Boolean$1$hashCode.hashCode(this.httpOnly)) * 31) + C$r8$backportedMethods$utility$Boolean$1$hashCode.hashCode(this.persistent)) * 31) + C$r8$backportedMethods$utility$Boolean$1$hashCode.hashCode(this.hostOnly);
    }

    public final boolean hostOnly() {
        return this.hostOnly;
    }

    public final boolean httpOnly() {
        return this.httpOnly;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0050, code lost:
        if (r5.isHttps() != false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean matches(okhttp3.HttpUrl r5) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "url"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            r0 = r4
            boolean r0 = r0.hostOnly
            if (r0 == 0) goto L1c
            r0 = r5
            java.lang.String r0 = r0.host()
            r1 = r4
            java.lang.String r1 = r1.domain
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r1)
            r6 = r0
            goto L2b
        L1c:
            okhttp3.Cookie$Companion r0 = okhttp3.Cookie.Companion
            r1 = r5
            java.lang.String r1 = r1.host()
            r2 = r4
            java.lang.String r2 = r2.domain
            boolean r0 = okhttp3.Cookie.Companion.access$domainMatch(r0, r1, r2)
            r6 = r0
        L2b:
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L33
            r0 = 0
            return r0
        L33:
            okhttp3.Cookie$Companion r0 = okhttp3.Cookie.Companion
            r1 = r5
            r2 = r4
            java.lang.String r2 = r2.path
            boolean r0 = okhttp3.Cookie.Companion.access$pathMatch(r0, r1, r2)
            if (r0 != 0) goto L43
            r0 = 0
            return r0
        L43:
            r0 = r4
            boolean r0 = r0.secure
            if (r0 == 0) goto L53
            r0 = r7
            r6 = r0
            r0 = r5
            boolean r0 = r0.isHttps()
            if (r0 == 0) goto L55
        L53:
            r0 = 1
            r6 = r0
        L55:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.Cookie.matches(okhttp3.HttpUrl):boolean");
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

    public String toString() {
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
        Intrinsics.checkNotNullExpressionValue(sb2, "toString()");
        return sb2;
    }

    public final String value() {
        return this.value;
    }
}
