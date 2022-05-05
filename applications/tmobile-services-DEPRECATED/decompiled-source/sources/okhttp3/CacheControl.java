package okhttp3;

import com.google.android.gms.common.api.Api;
import java.util.concurrent.TimeUnit;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0010\u000e\n\u0002\b\r\u0018�� $:\u0002%$Bs\b\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0001\u0012\u0006\u0010\u0012\u001a\u00020\u0001\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\u0018\u001a\u00020\u0005\u0012\u0006\u0010\u001f\u001a\u00020\u0001\u0012\u0006\u0010 \u001a\u00020\u0001\u0012\u0006\u0010\u000e\u001a\u00020\u0001\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\u0016\u001a\u00020\u0001\u0012\u0006\u0010\u0014\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b\"\u0010#J\u000f\u0010\u0004\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\b\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\n\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\t\u0010\u0007J\u000f\u0010\f\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u000b\u0010\u0007J\u000f\u0010\u000e\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u0010\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u000f\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0011\u0010\u0003J\u000f\u0010\u0014\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0013\u0010\u0003J\u000f\u0010\u0016\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0015\u0010\u0003J\u000f\u0010\u0018\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0017\u0010\u0007J\u000f\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0019\u0010\u0004\u001a\u00020\u00018\u0007@\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u001e\u001a\u0004\b\u0004\u0010\u0003R\u0019\u0010\u001f\u001a\u00020\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u001f\u0010\u001e\u001a\u0004\b\u001f\u0010\u0003R\u0019\u0010 \u001a\u00020\u00018\u0006@\u0006¢\u0006\f\n\u0004\b \u0010\u001e\u001a\u0004\b \u0010\u0003R\u0019\u0010\b\u001a\u00020\u00058\u0007@\u0006¢\u0006\f\n\u0004\b\b\u0010!\u001a\u0004\b\b\u0010\u0007R\u0019\u0010\n\u001a\u00020\u00058\u0007@\u0006¢\u0006\f\n\u0004\b\n\u0010!\u001a\u0004\b\n\u0010\u0007R\u0019\u0010\f\u001a\u00020\u00058\u0007@\u0006¢\u0006\f\n\u0004\b\f\u0010!\u001a\u0004\b\f\u0010\u0007R\u0019\u0010\u000e\u001a\u00020\u00018\u0007@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u001e\u001a\u0004\b\u000e\u0010\u0003R\u0019\u0010\u0010\u001a\u00020\u00018\u0007@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u001e\u001a\u0004\b\u0010\u0010\u0003R\u0019\u0010\u0012\u001a\u00020\u00018\u0007@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u001e\u001a\u0004\b\u0012\u0010\u0003R\u0019\u0010\u0014\u001a\u00020\u00018\u0007@\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u001e\u001a\u0004\b\u0014\u0010\u0003R\u0019\u0010\u0016\u001a\u00020\u00018\u0007@\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u001e\u001a\u0004\b\u0016\u0010\u0003R\u0019\u0010\u0018\u001a\u00020\u00058\u0007@\u0006¢\u0006\f\n\u0004\b\u0018\u0010!\u001a\u0004\b\u0018\u0010\u0007¨\u0006&"}, d2 = {"Lokhttp3/CacheControl;", "", "-deprecated_immutable", "()Z", "immutable", "", "-deprecated_maxAgeSeconds", "()I", "maxAgeSeconds", "-deprecated_maxStaleSeconds", "maxStaleSeconds", "-deprecated_minFreshSeconds", "minFreshSeconds", "-deprecated_mustRevalidate", "mustRevalidate", "-deprecated_noCache", "noCache", "-deprecated_noStore", "noStore", "-deprecated_noTransform", "noTransform", "-deprecated_onlyIfCached", "onlyIfCached", "-deprecated_sMaxAgeSeconds", "sMaxAgeSeconds", "", "toString", "()Ljava/lang/String;", "headerValue", "Ljava/lang/String;", "Z", "isPrivate", "isPublic", "I", "<init>", "(ZZIIZZZIIZZZLjava/lang/String;)V", "Companion", "Builder", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/CacheControl.class */
public final class CacheControl {
    private String headerValue;
    private final boolean immutable;
    private final boolean isPrivate;
    private final boolean isPublic;
    private final int maxAgeSeconds;
    private final int maxStaleSeconds;
    private final int minFreshSeconds;
    private final boolean mustRevalidate;
    private final boolean noCache;
    private final boolean noStore;
    private final boolean noTransform;
    private final boolean onlyIfCached;
    private final int sMaxAgeSeconds;
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final CacheControl FORCE_NETWORK = new Builder().noCache().build();
    @JvmField
    @NotNull
    public static final CacheControl FORCE_CACHE = new Builder().onlyIfCached().maxStale(Api.BaseClientBuilder.API_PRIORITY_OTHER, TimeUnit.SECONDS).build();

    @Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\u0018��B\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\r\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0004\u001a\u00020��¢\u0006\u0004\b\u0004\u0010\u0005J\u001d\u0010\u0007\u001a\u00020��2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0007\u0010\nJ\u001d\u0010\u000b\u001a\u00020��2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\nJ\u001d\u0010\f\u001a\u00020��2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\f\u0010\nJ\r\u0010\r\u001a\u00020��¢\u0006\u0004\b\r\u0010\u0005J\r\u0010\u000e\u001a\u00020��¢\u0006\u0004\b\u000e\u0010\u0005J\r\u0010\u000f\u001a\u00020��¢\u0006\u0004\b\u000f\u0010\u0005J\r\u0010\u0010\u001a\u00020��¢\u0006\u0004\b\u0010\u0010\u0005J\u0013\u0010\u0012\u001a\u00020\u0006*\u00020\u0011H\u0002¢\u0006\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0004\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0004\u0010\u0015R\u0016\u0010\u0016\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0018\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u0017R\u0016\u0010\r\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u0015R\u0016\u0010\u000e\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u0015R\u0016\u0010\u000f\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0015R\u0016\u0010\u0010\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0015¨\u0006\u001c"}, d2 = {"Lokhttp3/CacheControl$Builder;", "Lokhttp3/CacheControl;", "build", "()Lokhttp3/CacheControl;", "immutable", "()Lokhttp3/CacheControl$Builder;", "", "maxAge", "Ljava/util/concurrent/TimeUnit;", "timeUnit", "(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;", "maxStale", "minFresh", "noCache", "noStore", "noTransform", "onlyIfCached", "", "clampToInt", "(J)I", "", "Z", "maxAgeSeconds", "I", "maxStaleSeconds", "minFreshSeconds", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/CacheControl$Builder.class */
    public static final class Builder {
        private boolean immutable;
        private int maxAgeSeconds = -1;
        private int maxStaleSeconds = -1;
        private int minFreshSeconds = -1;
        private boolean noCache;
        private boolean noStore;
        private boolean noTransform;
        private boolean onlyIfCached;

        private final int clampToInt(long j) {
            int i = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            if (j <= ((long) Api.BaseClientBuilder.API_PRIORITY_OTHER)) {
                i = (int) j;
            }
            return i;
        }

        @NotNull
        public final CacheControl build() {
            return new CacheControl(this.noCache, this.noStore, this.maxAgeSeconds, -1, false, false, false, this.maxStaleSeconds, this.minFreshSeconds, this.onlyIfCached, this.noTransform, this.immutable, null, null);
        }

        @NotNull
        public final Builder immutable() {
            this.immutable = true;
            return this;
        }

        @NotNull
        public final Builder maxAge(int i, @NotNull TimeUnit timeUnit) {
            Intrinsics.m1830e(timeUnit, "timeUnit");
            if (i >= 0) {
                this.maxAgeSeconds = clampToInt(timeUnit.toSeconds(i));
                return this;
            }
            throw new IllegalArgumentException(("maxAge < 0: " + i).toString());
        }

        @NotNull
        public final Builder maxStale(int i, @NotNull TimeUnit timeUnit) {
            Intrinsics.m1830e(timeUnit, "timeUnit");
            if (i >= 0) {
                this.maxStaleSeconds = clampToInt(timeUnit.toSeconds(i));
                return this;
            }
            throw new IllegalArgumentException(("maxStale < 0: " + i).toString());
        }

        @NotNull
        public final Builder minFresh(int i, @NotNull TimeUnit timeUnit) {
            Intrinsics.m1830e(timeUnit, "timeUnit");
            if (i >= 0) {
                this.minFreshSeconds = clampToInt(timeUnit.toSeconds(i));
                return this;
            }
            throw new IllegalArgumentException(("minFresh < 0: " + i).toString());
        }

        @NotNull
        public final Builder noCache() {
            this.noCache = true;
            return this;
        }

        @NotNull
        public final Builder noStore() {
            this.noStore = true;
            return this;
        }

        @NotNull
        public final Builder noTransform() {
            this.noTransform = true;
            return this;
        }

        @NotNull
        public final Builder onlyIfCached() {
            this.onlyIfCached = true;
            return this;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0005J%\u0010\n\u001a\u00020\b*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0016\u0010\f\u001a\u00020\u00038\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u000e\u001a\u00020\u00038\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\r¨\u0006\u0011"}, d2 = {"Lokhttp3/CacheControl$Companion;", "Lokhttp3/Headers;", "headers", "Lokhttp3/CacheControl;", "parse", "(Lokhttp3/Headers;)Lokhttp3/CacheControl;", "", "characters", "", "startIndex", "indexOfElement", "(Ljava/lang/String;Ljava/lang/String;I)I", "FORCE_CACHE", "Lokhttp3/CacheControl;", "FORCE_NETWORK", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/CacheControl$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final int indexOfElement(String str, String str2, int i) {
            boolean G;
            int length = str.length();
            while (i < length) {
                G = StringsKt__StringsKt.m1467G(str2, str.charAt(i), false, 2, null);
                if (G) {
                    return i;
                }
                i++;
            }
            return str.length();
        }

        static /* synthetic */ int indexOfElement$default(Companion companion, String str, String str2, int i, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                i = 0;
            }
            return companion.indexOfElement(str, str2, i);
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x008d  */
        @kotlin.jvm.JvmStatic
        @org.jetbrains.annotations.NotNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final okhttp3.CacheControl parse(@org.jetbrains.annotations.NotNull okhttp3.Headers r18) {
            /*
                Method dump skipped, instructions count: 1270
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.CacheControl.Companion.parse(okhttp3.Headers):okhttp3.CacheControl");
        }
    }

    private CacheControl(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, String str) {
        this.noCache = z;
        this.noStore = z2;
        this.maxAgeSeconds = i;
        this.sMaxAgeSeconds = i2;
        this.isPrivate = z3;
        this.isPublic = z4;
        this.mustRevalidate = z5;
        this.maxStaleSeconds = i3;
        this.minFreshSeconds = i4;
        this.onlyIfCached = z6;
        this.noTransform = z7;
        this.immutable = z8;
        this.headerValue = str;
    }

    public /* synthetic */ CacheControl(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, z2, i, i2, z3, z4, z5, i3, i4, z6, z7, z8, str);
    }

    @JvmStatic
    @NotNull
    public static final CacheControl parse(@NotNull Headers headers) {
        return Companion.parse(headers);
    }

    @Deprecated
    @JvmName
    /* renamed from: -deprecated_immutable  reason: not valid java name */
    public final boolean m24598deprecated_immutable() {
        return this.immutable;
    }

    @Deprecated
    @JvmName
    /* renamed from: -deprecated_maxAgeSeconds  reason: not valid java name */
    public final int m24599deprecated_maxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    @Deprecated
    @JvmName
    /* renamed from: -deprecated_maxStaleSeconds  reason: not valid java name */
    public final int m24600deprecated_maxStaleSeconds() {
        return this.maxStaleSeconds;
    }

    @Deprecated
    @JvmName
    /* renamed from: -deprecated_minFreshSeconds  reason: not valid java name */
    public final int m24601deprecated_minFreshSeconds() {
        return this.minFreshSeconds;
    }

    @Deprecated
    @JvmName
    /* renamed from: -deprecated_mustRevalidate  reason: not valid java name */
    public final boolean m24602deprecated_mustRevalidate() {
        return this.mustRevalidate;
    }

    @Deprecated
    @JvmName
    /* renamed from: -deprecated_noCache  reason: not valid java name */
    public final boolean m24603deprecated_noCache() {
        return this.noCache;
    }

    @Deprecated
    @JvmName
    /* renamed from: -deprecated_noStore  reason: not valid java name */
    public final boolean m24604deprecated_noStore() {
        return this.noStore;
    }

    @Deprecated
    @JvmName
    /* renamed from: -deprecated_noTransform  reason: not valid java name */
    public final boolean m24605deprecated_noTransform() {
        return this.noTransform;
    }

    @Deprecated
    @JvmName
    /* renamed from: -deprecated_onlyIfCached  reason: not valid java name */
    public final boolean m24606deprecated_onlyIfCached() {
        return this.onlyIfCached;
    }

    @Deprecated
    @JvmName
    /* renamed from: -deprecated_sMaxAgeSeconds  reason: not valid java name */
    public final int m24607deprecated_sMaxAgeSeconds() {
        return this.sMaxAgeSeconds;
    }

    @JvmName
    public final boolean immutable() {
        return this.immutable;
    }

    public final boolean isPrivate() {
        return this.isPrivate;
    }

    public final boolean isPublic() {
        return this.isPublic;
    }

    @JvmName
    public final int maxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    @JvmName
    public final int maxStaleSeconds() {
        return this.maxStaleSeconds;
    }

    @JvmName
    public final int minFreshSeconds() {
        return this.minFreshSeconds;
    }

    @JvmName
    public final boolean mustRevalidate() {
        return this.mustRevalidate;
    }

    @JvmName
    public final boolean noCache() {
        return this.noCache;
    }

    @JvmName
    public final boolean noStore() {
        return this.noStore;
    }

    @JvmName
    public final boolean noTransform() {
        return this.noTransform;
    }

    @JvmName
    public final boolean onlyIfCached() {
        return this.onlyIfCached;
    }

    @JvmName
    public final int sMaxAgeSeconds() {
        return this.sMaxAgeSeconds;
    }

    @NotNull
    public String toString() {
        String str = this.headerValue;
        String str2 = str;
        if (str == null) {
            StringBuilder sb = new StringBuilder();
            if (this.noCache) {
                sb.append("no-cache, ");
            }
            if (this.noStore) {
                sb.append("no-store, ");
            }
            if (this.maxAgeSeconds != -1) {
                sb.append("max-age=");
                sb.append(this.maxAgeSeconds);
                sb.append(", ");
            }
            if (this.sMaxAgeSeconds != -1) {
                sb.append("s-maxage=");
                sb.append(this.sMaxAgeSeconds);
                sb.append(", ");
            }
            if (this.isPrivate) {
                sb.append("private, ");
            }
            if (this.isPublic) {
                sb.append("public, ");
            }
            if (this.mustRevalidate) {
                sb.append("must-revalidate, ");
            }
            if (this.maxStaleSeconds != -1) {
                sb.append("max-stale=");
                sb.append(this.maxStaleSeconds);
                sb.append(", ");
            }
            if (this.minFreshSeconds != -1) {
                sb.append("min-fresh=");
                sb.append(this.minFreshSeconds);
                sb.append(", ");
            }
            if (this.onlyIfCached) {
                sb.append("only-if-cached, ");
            }
            if (this.noTransform) {
                sb.append("no-transform, ");
            }
            if (this.immutable) {
                sb.append("immutable, ");
            }
            if (sb.length() == 0) {
                return "";
            }
            sb.delete(sb.length() - 2, sb.length());
            str2 = sb.toString();
            Intrinsics.m1831d(str2, "StringBuilder().apply(builderAction).toString()");
            this.headerValue = str2;
        }
        return str2;
    }
}
