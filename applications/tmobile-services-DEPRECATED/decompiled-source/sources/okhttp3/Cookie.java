package okhttp3;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0019\u0018�� -:\u0002.-BQ\b\u0002\u0012\u0006\u0010\u001b\u001a\u00020\u0001\u0012\u0006\u0010'\u001a\u00020\u0001\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0006\u0010\u001d\u001a\u00020\u0001\u0012\u0006\u0010!\u001a\u00020\u0007\u0012\u0006\u0010\u0015\u001a\u00020\u0007\u0012\u0006\u0010\u001f\u001a\u00020\u0007\u0012\u0006\u0010\u0013\u001a\u00020\u0007¢\u0006\u0004\b+\u0010,J\u000f\u0010\u0004\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0096\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\r\u001a\u00020\nH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0017¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0013\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0015\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\u0014\u0010\u0012J\u0015\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u001a\u0010\u0003J\u000f\u0010\u001d\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u001c\u0010\u0003J\u000f\u0010\u001f\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\u001e\u0010\u0012J\u000f\u0010!\u001a\u00020\u0007H\u0007¢\u0006\u0004\b \u0010\u0012J\u000f\u0010\"\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\"\u0010\u0003J\u0017\u0010\"\u001a\u00020\u00012\u0006\u0010#\u001a\u00020\u0007H��¢\u0006\u0004\b$\u0010%J\u000f\u0010'\u001a\u00020\u0001H\u0007¢\u0006\u0004\b&\u0010\u0003R\u0019\u0010\u0004\u001a\u00020\u00018\u0007@\u0006¢\u0006\f\n\u0004\b\u0004\u0010(\u001a\u0004\b\u0004\u0010\u0003R\u0019\u0010\r\u001a\u00020\n8\u0007@\u0006¢\u0006\f\n\u0004\b\r\u0010)\u001a\u0004\b\r\u0010\fR\u0019\u0010\u0013\u001a\u00020\u00078\u0007@\u0006¢\u0006\f\n\u0004\b\u0013\u0010*\u001a\u0004\b\u0013\u0010\u0012R\u0019\u0010\u0015\u001a\u00020\u00078\u0007@\u0006¢\u0006\f\n\u0004\b\u0015\u0010*\u001a\u0004\b\u0015\u0010\u0012R\u0019\u0010\u001b\u001a\u00020\u00018\u0007@\u0006¢\u0006\f\n\u0004\b\u001b\u0010(\u001a\u0004\b\u001b\u0010\u0003R\u0019\u0010\u001d\u001a\u00020\u00018\u0007@\u0006¢\u0006\f\n\u0004\b\u001d\u0010(\u001a\u0004\b\u001d\u0010\u0003R\u0019\u0010\u001f\u001a\u00020\u00078\u0007@\u0006¢\u0006\f\n\u0004\b\u001f\u0010*\u001a\u0004\b\u001f\u0010\u0012R\u0019\u0010!\u001a\u00020\u00078\u0007@\u0006¢\u0006\f\n\u0004\b!\u0010*\u001a\u0004\b!\u0010\u0012R\u0019\u0010'\u001a\u00020\u00018\u0007@\u0006¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b'\u0010\u0003¨\u0006/"}, d2 = {"Lokhttp3/Cookie;", "", "-deprecated_domain", "()Ljava/lang/String;", "domain", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "-deprecated_expiresAt", "()J", "expiresAt", "", "hashCode", "()I", "-deprecated_hostOnly", "()Z", "hostOnly", "-deprecated_httpOnly", "httpOnly", "Lokhttp3/HttpUrl;", "url", "matches", "(Lokhttp3/HttpUrl;)Z", "-deprecated_name", "name", "-deprecated_path", "path", "-deprecated_persistent", "persistent", "-deprecated_secure", "secure", "toString", "forObsoleteRfc2965", "toString$okhttp", "(Z)Ljava/lang/String;", "-deprecated_value", FirebaseAnalytics.Param.VALUE, "Ljava/lang/String;", "J", "Z", "<init>", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V", "Companion", "Builder", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/Cookie.class */
public final class Cookie {
    @NotNull
    private final String domain;
    private final long expiresAt;
    private final boolean hostOnly;
    private final boolean httpOnly;
    @NotNull
    private final String name;
    @NotNull
    private final String path;
    private final boolean persistent;
    private final boolean secure;
    @NotNull
    private final String value;
    public static final Companion Companion = new Companion(null);
    private static final Pattern YEAR_PATTERN = Pattern.compile("(\\d{2,4})[^\\d]*");
    private static final Pattern MONTH_PATTERN = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    private static final Pattern DAY_OF_MONTH_PATTERN = Pattern.compile("(\\d{1,2})[^\\d]*");
    private static final Pattern TIME_PATTERN = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0010\u0018��B\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0005\u001a\u00020��2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\u0005\u001a\u00020��2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0005\u0010\tJ\u0015\u0010\u000b\u001a\u00020��2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\r\u001a\u00020��2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\r\u0010\u0006J\r\u0010\u000e\u001a\u00020��¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0010\u001a\u00020��2\u0006\u0010\u0010\u001a\u00020\u0004¢\u0006\u0004\b\u0010\u0010\u0006J\u0015\u0010\u0011\u001a\u00020��2\u0006\u0010\u0011\u001a\u00020\u0004¢\u0006\u0004\b\u0011\u0010\u0006J\r\u0010\u0012\u001a\u00020��¢\u0006\u0004\b\u0012\u0010\u000fJ\u0015\u0010\u0013\u001a\u00020��2\u0006\u0010\u0013\u001a\u00020\u0004¢\u0006\u0004\b\u0013\u0010\u0006R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0014R\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\u0015R\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\u0016R\u0016\u0010\u000e\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u0016R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0014R\u0016\u0010\u0011\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0014R\u0016\u0010\u0017\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0016R\u0016\u0010\u0012\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0016R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, d2 = {"Lokhttp3/Cookie$Builder;", "Lokhttp3/Cookie;", "build", "()Lokhttp3/Cookie;", "", "domain", "(Ljava/lang/String;)Lokhttp3/Cookie$Builder;", "", "hostOnly", "(Ljava/lang/String;Z)Lokhttp3/Cookie$Builder;", "", "expiresAt", "(J)Lokhttp3/Cookie$Builder;", "hostOnlyDomain", "httpOnly", "()Lokhttp3/Cookie$Builder;", "name", "path", "secure", FirebaseAnalytics.Param.VALUE, "Ljava/lang/String;", "J", "Z", "persistent", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/Cookie$Builder.class */
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
            String canonicalHost = HostnamesKt.toCanonicalHost(str);
            if (canonicalHost != null) {
                this.domain = canonicalHost;
                this.hostOnly = z;
                return this;
            }
            throw new IllegalArgumentException("unexpected domain: " + str);
        }

        @NotNull
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

        @NotNull
        public final Builder domain(@NotNull String domain) {
            Intrinsics.m1830e(domain, "domain");
            return domain(domain, false);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v0, types: [long] */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2, types: [long] */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Type inference failed for: r8v0 */
        /* JADX WARN: Type inference failed for: r8v1, types: [long] */
        /* JADX WARN: Type inference failed for: r8v2 */
        /* JADX WARN: Unknown variable types count: 2 */
        @org.jetbrains.annotations.NotNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final okhttp3.Cookie.Builder expiresAt(long r6) {
            /*
                r5 = this;
                r0 = r6
                r8 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 > 0) goto L_0x000c
                r0 = -9223372036854775808
                r8 = r0
            L_0x000c:
                r0 = r8
                r6 = r0
                r0 = r8
                r1 = 253402300799999(0xe677d21fdbff, double:1.251973714024093E-309)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x001a
                r0 = 253402300799999(0xe677d21fdbff, double:1.251973714024093E-309)
                r6 = r0
            L_0x001a:
                r0 = r5
                r1 = r6
                r0.expiresAt = r1
                r0 = r5
                r1 = 1
                r0.persistent = r1
                r0 = r5
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Cookie.Builder.expiresAt(long):okhttp3.Cookie$Builder");
        }

        @NotNull
        public final Builder hostOnlyDomain(@NotNull String domain) {
            Intrinsics.m1830e(domain, "domain");
            return domain(domain, true);
        }

        @NotNull
        public final Builder httpOnly() {
            this.httpOnly = true;
            return this;
        }

        @NotNull
        public final Builder name(@NotNull String name) {
            CharSequence F0;
            Intrinsics.m1830e(name, "name");
            F0 = StringsKt__StringsKt.m1468F0(name);
            if (Intrinsics.m1834a(F0.toString(), name)) {
                this.name = name;
                return this;
            }
            throw new IllegalArgumentException("name is not trimmed".toString());
        }

        @NotNull
        public final Builder path(@NotNull String path) {
            boolean C;
            Intrinsics.m1830e(path, "path");
            C = StringsKt__StringsJVMKt.m1491C(path, "/", false, 2, null);
            if (C) {
                this.path = path;
                return this;
            }
            throw new IllegalArgumentException("path must start with '/'".toString());
        }

        @NotNull
        public final Builder secure() {
            this.secure = true;
            return this;
        }

        @NotNull
        public final Builder value(@NotNull String value) {
            CharSequence F0;
            Intrinsics.m1830e(value, "value");
            F0 = StringsKt__StringsKt.m1468F0(value);
            if (Intrinsics.m1834a(F0.toString(), value)) {
                this.value = value;
                return this;
            }
            throw new IllegalArgumentException("value is not trimmed".toString());
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b.\u0010/J/\u0010\b\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\f\u0010\rJ)\u0010\u0016\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0001H��¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u0016\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0016\u0010\u0017J%\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00130\u001a2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u0018H\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ'\u0010 \u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0002¢\u0006\u0004\b \u0010!J\u0017\u0010\"\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\"\u0010#J\u001f\u0010%\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u0001H\u0002¢\u0006\u0004\b%\u0010&R\u001e\u0010)\u001a\n (*\u0004\u0018\u00010'0'8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u001e\u0010+\u001a\n (*\u0004\u0018\u00010'0'8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010*R\u001e\u0010,\u001a\n (*\u0004\u0018\u00010'0'8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010*R\u001e\u0010-\u001a\n (*\u0004\u0018\u00010'0'8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010*¨\u00060"}, d2 = {"Lokhttp3/Cookie$Companion;", "", "input", "", "pos", "limit", "", "invert", "dateCharacterOffset", "(Ljava/lang/String;IIZ)I", "urlHost", "domain", "domainMatch", "(Ljava/lang/String;Ljava/lang/String;)Z", "", "currentTimeMillis", "Lokhttp3/HttpUrl;", "url", "setCookie", "Lokhttp3/Cookie;", "parse$okhttp", "(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;", "parse", "(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;", "Lokhttp3/Headers;", "headers", "", "parseAll", "(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;", "s", "parseDomain", "(Ljava/lang/String;)Ljava/lang/String;", "parseExpires", "(Ljava/lang/String;II)J", "parseMaxAge", "(Ljava/lang/String;)J", "path", "pathMatch", "(Lokhttp3/HttpUrl;Ljava/lang/String;)Z", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "DAY_OF_MONTH_PATTERN", "Ljava/util/regex/Pattern;", "MONTH_PATTERN", "TIME_PATTERN", "YEAR_PATTERN", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/Cookie$Companion.class */
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
            boolean o;
            boolean z = true;
            if (Intrinsics.m1834a(str, str2)) {
                return true;
            }
            o = StringsKt__StringsJVMKt.m1488o(str, str2, false, 2, null);
            if (!o || str.charAt((str.length() - str2.length()) - 1) != '.' || Util.canParseAsIpAddress(str)) {
                z = false;
            }
            return z;
        }

        private final String parseDomain(String str) {
            boolean o;
            String j0;
            o = StringsKt__StringsJVMKt.m1488o(str, ".", false, 2, null);
            if (!o) {
                j0 = StringsKt__StringsKt.m1438j0(str, ".");
                String canonicalHost = HostnamesKt.toCanonicalHost(j0);
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
            int U;
            int dateCharacterOffset = dateCharacterOffset(str, i, i2, false);
            Matcher matcher = Cookie.TIME_PATTERN.matcher(str);
            int i5 = -1;
            int i6 = -1;
            int i7 = -1;
            int i8 = -1;
            int i9 = -1;
            int i10 = -1;
            while (dateCharacterOffset < i2) {
                int dateCharacterOffset2 = dateCharacterOffset(str, dateCharacterOffset + 1, i2, true);
                matcher.region(dateCharacterOffset, dateCharacterOffset2);
                if (i6 == -1 && matcher.usePattern(Cookie.TIME_PATTERN).matches()) {
                    String group = matcher.group(1);
                    Intrinsics.m1831d(group, "matcher.group(1)");
                    i6 = Integer.parseInt(group);
                    String group2 = matcher.group(2);
                    Intrinsics.m1831d(group2, "matcher.group(2)");
                    i9 = Integer.parseInt(group2);
                    String group3 = matcher.group(3);
                    Intrinsics.m1831d(group3, "matcher.group(3)");
                    i10 = Integer.parseInt(group3);
                    i5 = i5;
                    i7 = i7;
                    i8 = i8;
                } else if (i7 == -1 && matcher.usePattern(Cookie.DAY_OF_MONTH_PATTERN).matches()) {
                    String group4 = matcher.group(1);
                    Intrinsics.m1831d(group4, "matcher.group(1)");
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
                            Intrinsics.m1831d(group5, "matcher.group(1)");
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
                    Intrinsics.m1831d(group6, "matcher.group(1)");
                    Locale locale = Locale.US;
                    Intrinsics.m1831d(locale, "Locale.US");
                    if (group6 != null) {
                        String lowerCase = group6.toLowerCase(locale);
                        Intrinsics.m1831d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                        String pattern = Cookie.MONTH_PATTERN.pattern();
                        Intrinsics.m1831d(pattern, "MONTH_PATTERN.pattern()");
                        U = StringsKt__StringsKt.m1453U(pattern, lowerCase, 0, false, 6, null);
                        i8 = U / 4;
                        i5 = i5;
                        i6 = i6;
                        i7 = i7;
                        i9 = i9;
                        i10 = i10;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                    }
                }
                dateCharacterOffset = dateCharacterOffset(str, dateCharacterOffset2 + 1, i2, false);
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

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v9, types: [long] */
        /* JADX WARN: Type inference failed for: r8v4 */
        /* JADX WARN: Type inference failed for: r8v5 */
        /* JADX WARN: Unknown variable types count: 1 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final long parseMaxAge(java.lang.String r7) {
            /*
                r6 = this;
                r0 = -9223372036854775808
                r8 = r0
                r0 = r7
                long r0 = java.lang.Long.parseLong(r0)     // Catch: NumberFormatException -> 0x0019
                r10 = r0
                r0 = r10
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 > 0) goto L_0x0014
                goto L_0x0017
            L_0x0014:
                r0 = r10
                r8 = r0
            L_0x0017:
                r0 = r8
                return r0
            L_0x0019:
                r12 = move-exception
                kotlin.text.Regex r0 = new kotlin.text.Regex
                r1 = r0
                java.lang.String r2 = "-?\\d+"
                r1.<init>(r2)
                r1 = r7
                boolean r0 = r0.m1553b(r1)
                if (r0 == 0) goto L_0x0040
                r0 = r7
                java.lang.String r1 = "-"
                r2 = 0
                r3 = 2
                r4 = 0
                boolean r0 = kotlin.text.StringsKt.m1540C(r0, r1, r2, r3, r4)
                if (r0 == 0) goto L_0x003a
                goto L_0x003e
            L_0x003a:
                r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                r8 = r0
            L_0x003e:
                r0 = r8
                return r0
            L_0x0040:
                r0 = r12
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Cookie.Companion.parseMaxAge(java.lang.String):long");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean pathMatch(HttpUrl httpUrl, String str) {
            boolean C;
            boolean o;
            String encodedPath = httpUrl.encodedPath();
            if (Intrinsics.m1834a(encodedPath, str)) {
                return true;
            }
            C = StringsKt__StringsJVMKt.m1491C(encodedPath, str, false, 2, null);
            if (!C) {
                return false;
            }
            o = StringsKt__StringsJVMKt.m1488o(str, "/", false, 2, null);
            return o || encodedPath.charAt(str.length()) == '/';
        }

        @JvmStatic
        @Nullable
        public final Cookie parse(@NotNull HttpUrl url, @NotNull String setCookie) {
            Intrinsics.m1830e(url, "url");
            Intrinsics.m1830e(setCookie, "setCookie");
            return parse$okhttp(System.currentTimeMillis(), url, setCookie);
        }

        /* JADX WARN: Code restructure failed: missing block: B:57:0x0281, code lost:
            if (r0 > okhttp3.internal.http.DatesKt.MAX_DATE) goto L_0x0287;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x02e6, code lost:
            if (r0 == false) goto L_0x02ef;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v112 */
        /* JADX WARN: Type inference failed for: r0v137 */
        /* JADX WARN: Type inference failed for: r0v31 */
        /* JADX WARN: Type inference failed for: r0v74, types: [long] */
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
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final okhttp3.Cookie parse$okhttp(long r15, @org.jetbrains.annotations.NotNull okhttp3.HttpUrl r17, @org.jetbrains.annotations.NotNull java.lang.String r18) {
            /*
                Method dump skipped, instructions count: 877
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Cookie.Companion.parse$okhttp(long, okhttp3.HttpUrl, java.lang.String):okhttp3.Cookie");
        }

        @JvmStatic
        @NotNull
        public final List<Cookie> parseAll(@NotNull HttpUrl url, @NotNull Headers headers) {
            List<Cookie> list;
            Intrinsics.m1830e(url, "url");
            Intrinsics.m1830e(headers, "headers");
            List<String> values = headers.values("Set-Cookie");
            int size = values.size();
            ArrayList arrayList = null;
            for (int i = 0; i < size; i++) {
                Cookie parse = parse(url, values.get(i));
                arrayList = arrayList;
                if (parse != null) {
                    arrayList = arrayList;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(parse);
                }
            }
            if (arrayList != null) {
                list = Collections.unmodifiableList(arrayList);
                Intrinsics.m1831d(list, "Collections.unmodifiableList(cookies)");
            } else {
                list = CollectionsKt__CollectionsKt.m2175f();
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
    @Nullable
    public static final Cookie parse(@NotNull HttpUrl httpUrl, @NotNull String str) {
        return Companion.parse(httpUrl, str);
    }

    @JvmStatic
    @NotNull
    public static final List<Cookie> parseAll(@NotNull HttpUrl httpUrl, @NotNull Headers headers) {
        return Companion.parseAll(httpUrl, headers);
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_domain  reason: not valid java name */
    public final String m24620deprecated_domain() {
        return this.domain;
    }

    @Deprecated
    @JvmName
    /* renamed from: -deprecated_expiresAt  reason: not valid java name */
    public final long m24621deprecated_expiresAt() {
        return this.expiresAt;
    }

    @Deprecated
    @JvmName
    /* renamed from: -deprecated_hostOnly  reason: not valid java name */
    public final boolean m24622deprecated_hostOnly() {
        return this.hostOnly;
    }

    @Deprecated
    @JvmName
    /* renamed from: -deprecated_httpOnly  reason: not valid java name */
    public final boolean m24623deprecated_httpOnly() {
        return this.httpOnly;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_name  reason: not valid java name */
    public final String m24624deprecated_name() {
        return this.name;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_path  reason: not valid java name */
    public final String m24625deprecated_path() {
        return this.path;
    }

    @Deprecated
    @JvmName
    /* renamed from: -deprecated_persistent  reason: not valid java name */
    public final boolean m24626deprecated_persistent() {
        return this.persistent;
    }

    @Deprecated
    @JvmName
    /* renamed from: -deprecated_secure  reason: not valid java name */
    public final boolean m24627deprecated_secure() {
        return this.secure;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_value  reason: not valid java name */
    public final String m24628deprecated_value() {
        return this.value;
    }

    @JvmName
    @NotNull
    public final String domain() {
        return this.domain;
    }

    public boolean equals(@Nullable Object obj) {
        boolean z;
        if (obj instanceof Cookie) {
            Cookie cookie = (Cookie) obj;
            if (Intrinsics.m1834a(cookie.name, this.name) && Intrinsics.m1834a(cookie.value, this.value) && cookie.expiresAt == this.expiresAt && Intrinsics.m1834a(cookie.domain, this.domain) && Intrinsics.m1834a(cookie.path, this.path) && cookie.secure == this.secure && cookie.httpOnly == this.httpOnly && cookie.persistent == this.persistent && cookie.hostOnly == this.hostOnly) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @JvmName
    public final long expiresAt() {
        return this.expiresAt;
    }

    @IgnoreJRERequirement
    public int hashCode() {
        return ((((((((((((((((527 + this.name.hashCode()) * 31) + this.value.hashCode()) * 31) + C0610b.m16376a(this.expiresAt)) * 31) + this.domain.hashCode()) * 31) + this.path.hashCode()) * 31) + C0000a.m22333a(this.secure)) * 31) + C0000a.m22333a(this.httpOnly)) * 31) + C0000a.m22333a(this.persistent)) * 31) + C0000a.m22333a(this.hostOnly);
    }

    @JvmName
    public final boolean hostOnly() {
        return this.hostOnly;
    }

    @JvmName
    public final boolean httpOnly() {
        return this.httpOnly;
    }

    public final boolean matches(@NotNull HttpUrl url) {
        Intrinsics.m1830e(url, "url");
        boolean z = false;
        if (!(this.hostOnly ? Intrinsics.m1834a(url.host(), this.domain) : Companion.domainMatch(url.host(), this.domain)) || !Companion.pathMatch(url, this.path)) {
            return false;
        }
        if (!this.secure || url.isHttps()) {
            z = true;
        }
        return z;
    }

    @JvmName
    @NotNull
    public final String name() {
        return this.name;
    }

    @JvmName
    @NotNull
    public final String path() {
        return this.path;
    }

    @JvmName
    public final boolean persistent() {
        return this.persistent;
    }

    @JvmName
    public final boolean secure() {
        return this.secure;
    }

    @NotNull
    public String toString() {
        return toString$okhttp(false);
    }

    @NotNull
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
        Intrinsics.m1831d(sb2, "toString()");
        return sb2;
    }

    @JvmName
    @NotNull
    public final String value() {
        return this.value;
    }
}
