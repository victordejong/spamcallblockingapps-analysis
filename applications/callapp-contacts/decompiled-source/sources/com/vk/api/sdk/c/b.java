package com.vk.api.sdk.c;

import com.facebook.AccessToken;
import com.vk.api.sdk.e.a.c;
import java.util.Collection;
import java.util.Map;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.a.ai;
import kotlin.a.n;
import kotlin.h;
import kotlin.h.j;
import kotlin.h.l;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KProperty;
import kotlin.t;
import okhttp3.Interceptor;
import okhttp3.logging.HttpLoggingInterceptor;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� *2\u00020\u0001:\u0001*B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\nJ\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0016J\u0010\u0010(\u001a\u00020\t2\u0006\u0010)\u001a\u00020\tH\u0002R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R'\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0015\u0010\u0016R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u0018\u001a\u0004\b\u001b\u0010\u001cR\u001b\u0010\u001e\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u0018\u001a\u0004\b\u001f\u0010\u001cR'\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010\u0018\u001a\u0004\b\"\u0010\u0016¨\u0006+"}, d2 = {"Lcom/vk/api/sdk/okhttp/LoggingInterceptor;", "Lokhttp3/Interceptor;", "filterCredentials", "", "logger", "Lcom/vk/api/sdk/utils/log/Logger;", "(ZLcom/vk/api/sdk/utils/log/Logger;)V", "keysToFilter", "", "", "(ZLjava/util/Collection;Lcom/vk/api/sdk/utils/log/Logger;)V", "delegate", "Lokhttp3/logging/HttpLoggingInterceptor;", "getDelegate", "()Lokhttp3/logging/HttpLoggingInterceptor;", "delegate$delegate", "Lcom/vk/api/sdk/utils/ThreadLocalDelegate;", "sensitiveKeyRequestTransformer", "Lkotlin/Function1;", "Lkotlin/text/MatchResult;", "", "getSensitiveKeyRequestTransformer", "()Lkotlin/jvm/functions/Function1;", "sensitiveKeyRequestTransformer$delegate", "Lkotlin/Lazy;", "sensitiveKeysRequestRegex", "Lkotlin/text/Regex;", "getSensitiveKeysRequestRegex", "()Lkotlin/text/Regex;", "sensitiveKeysRequestRegex$delegate", "sensitiveKeysResponseRegex", "getSensitiveKeysResponseRegex", "sensitiveKeysResponseRegex$delegate", "sensitiveKeysResponseTransformer", "getSensitiveKeysResponseTransformer", "sensitiveKeysResponseTransformer$delegate", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "removeSensitiveKeys", "msg", "Companion", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/b.class */
public final class b implements Interceptor {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ KProperty[] f35999a = {ac.a(new aa(b.class, "delegate", "getDelegate()Lokhttp3/logging/HttpLoggingInterceptor;", 0))};

    /* renamed from: b  reason: collision with root package name */
    public static final a f36000b = new a(null);
    private static final Map<c.a, HttpLoggingInterceptor.Level> k = ai.a(t.a(c.a.NONE, HttpLoggingInterceptor.Level.NONE), t.a(c.a.ERROR, HttpLoggingInterceptor.Level.NONE), t.a(c.a.WARNING, HttpLoggingInterceptor.Level.BASIC), t.a(c.a.DEBUG, HttpLoggingInterceptor.Level.HEADERS), t.a(c.a.VERBOSE, HttpLoggingInterceptor.Level.BODY), t.a(c.a.NONE, HttpLoggingInterceptor.Level.NONE));

    /* renamed from: c  reason: collision with root package name */
    private final Lazy f36001c;

    /* renamed from: d  reason: collision with root package name */
    private final Lazy f36002d;
    private final Lazy e;
    private final Lazy f;
    private final com.vk.api.sdk.e.c g;
    private final boolean h;
    private final Collection<String> i;
    private final com.vk.api.sdk.e.a.c j;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0007"}, d2 = {"Lcom/vk/api/sdk/okhttp/LoggingInterceptor$Companion;", "", "()V", "levelsMap", "", "Lcom/vk/api/sdk/utils/log/Logger$LogLevel;", "Lokhttp3/logging/HttpLoggingInterceptor$Level;", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/b$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lokhttp3/logging/HttpLoggingInterceptor;", "invoke"}, k = 3, mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.c.b$b  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/b$b.class */
    static final class C0575b extends r implements Function0<HttpLoggingInterceptor> {
        C0575b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ HttpLoggingInterceptor invoke() {
            return new HttpLoggingInterceptor(new HttpLoggingInterceptor.Logger() { // from class: com.vk.api.sdk.c.b.b.1
                @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
                public final void log(String message) {
                    p.d(message, "message");
                    String str = message;
                    if (b.this.h) {
                        str = b.a(b.this, message);
                    }
                    b.this.j.a(b.this.j.a().a(), str, null);
                }
            });
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\u0010��\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Lkotlin/Function1;", "Lkotlin/text/MatchResult;", "", "invoke"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/b$c.class */
    static final class c extends r implements Function0<Function1<? super j, ? extends String>> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f36005a = new c();

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "match", "Lkotlin/text/MatchResult;", "invoke"}, k = 3, mv = {1, 4, 2})
        /* renamed from: com.vk.api.sdk.c.b$c$1  reason: invalid class name */
        /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/b$c$1.class */
        static final class AnonymousClass1 extends r implements Function1<j, String> {

            /* renamed from: a  reason: collision with root package name */
            public static final AnonymousClass1 f36006a = new AnonymousClass1();

            AnonymousClass1() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ String invoke(j jVar) {
                j match = jVar;
                p.d(match, "match");
                return match.b().get(1) + "=<HIDE>";
            }
        }

        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* bridge */ /* synthetic */ Function1<? super j, ? extends String> invoke() {
            return AnonymousClass1.f36006a;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lkotlin/text/Regex;", "invoke"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/b$d.class */
    static final class d extends r implements Function0<l> {
        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ l invoke() {
            String str = "(" + n.a(b.this.i, "|", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62) + ")=[a-z0-9]+";
            p.b(str, "StringBuilder().apply {\n…]+\")\n        }.toString()");
            return new l(str, kotlin.h.n.IGNORE_CASE);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lkotlin/text/Regex;", "invoke"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/b$e.class */
    static final class e extends r implements Function0<l> {
        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ l invoke() {
            String str = "\"(" + n.a(b.this.i, "|", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62) + ")\":\"[a-z0-9]+\"";
            p.b(str, "StringBuilder().apply {\n…\\\"\")\n        }.toString()");
            return new l(str, kotlin.h.n.IGNORE_CASE);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\u0010��\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Lkotlin/Function1;", "Lkotlin/text/MatchResult;", "", "invoke"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/b$f.class */
    static final class f extends r implements Function0<Function1<? super j, ? extends String>> {

        /* renamed from: a  reason: collision with root package name */
        public static final f f36009a = new f();

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "match", "Lkotlin/text/MatchResult;", "invoke"}, k = 3, mv = {1, 4, 2})
        /* renamed from: com.vk.api.sdk.c.b$f$1  reason: invalid class name */
        /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/b$f$1.class */
        static final class AnonymousClass1 extends r implements Function1<j, String> {

            /* renamed from: a  reason: collision with root package name */
            public static final AnonymousClass1 f36010a = new AnonymousClass1();

            AnonymousClass1() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ String invoke(j jVar) {
                j match = jVar;
                p.d(match, "match");
                return "\"" + match.b().get(1) + "\":<HIDE>";
            }
        }

        f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* bridge */ /* synthetic */ Function1<? super j, ? extends String> invoke() {
            return AnonymousClass1.f36010a;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(boolean z, com.vk.api.sdk.e.a.c logger) {
        this(z, n.b((Object[]) new String[]{AccessToken.ACCESS_TOKEN_KEY, "key", "client_secret"}), logger);
        p.d(logger, "logger");
    }

    public b(boolean z, Collection<String> keysToFilter, com.vk.api.sdk.e.a.c logger) {
        p.d(keysToFilter, "keysToFilter");
        p.d(logger, "logger");
        this.h = z;
        this.i = keysToFilter;
        this.j = logger;
        this.f36001c = h.a(new d());
        this.f36002d = h.a(c.f36005a);
        this.e = h.a(new e());
        this.f = h.a(f.f36009a);
        this.g = com.vk.api.sdk.e.e.a(new C0575b());
    }

    public static final /* synthetic */ String a(b bVar, String str) {
        return ((l) bVar.e.a()).a(((l) bVar.f36001c.a()).a(str, (Function1) bVar.f36002d.a()), (Function1) bVar.f.a());
    }

    private final HttpLoggingInterceptor a() {
        return (HttpLoggingInterceptor) this.g.a(f35999a[0]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x003a, code lost:
        if (r0 == null) goto L_0x003d;
     */
    @Override // okhttp3.Interceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okhttp3.Response intercept(okhttp3.Interceptor.Chain r7) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r1 = "chain"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r7
            okhttp3.Request r0 = r0.request()
            r8 = r0
            r0 = r8
            okhttp3.RequestBody r0 = r0.body()
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0020
            r0 = r9
            long r0 = r0.contentLength()
            r10 = r0
            goto L_0x0023
        L_0x0020:
            r0 = 0
            r10 = r0
        L_0x0023:
            r0 = r8
            java.lang.Class<com.vk.api.sdk.c.a> r1 = com.vk.api.sdk.c.a.class
            java.lang.Object r0 = r0.tag(r1)
            com.vk.api.sdk.c.a r0 = (com.vk.api.sdk.c.a) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x003d
            r0 = r8
            com.vk.api.sdk.e.a.c$a r0 = r0.f35998a
            r9 = r0
            r0 = r9
            r8 = r0
            r0 = r9
            if (r0 != 0) goto L_0x004f
        L_0x003d:
            r0 = r6
            com.vk.api.sdk.e.a.c r0 = r0.j
            kotlin.Lazy r0 = r0.a()
            java.lang.Object r0 = r0.a()
            com.vk.api.sdk.e.a.c$a r0 = (com.vk.api.sdk.e.a.c.a) r0
            r8 = r0
        L_0x004f:
            r0 = r6
            okhttp3.logging.HttpLoggingInterceptor r0 = r0.a()
            r9 = r0
            r0 = r10
            r1 = 64
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x006d
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0067
            goto L_0x006d
        L_0x0067:
            r0 = 0
            r12 = r0
            goto L_0x0070
        L_0x006d:
            r0 = 1
            r12 = r0
        L_0x0070:
            r0 = r12
            r1 = 1
            if (r0 != r1) goto L_0x009c
            java.util.Map<com.vk.api.sdk.e.a.c$a, okhttp3.logging.HttpLoggingInterceptor$Level> r0 = com.vk.api.sdk.c.b.k
            r1 = 2
            com.vk.api.sdk.e.a.c$a[] r1 = new com.vk.api.sdk.e.a.c.a[r1]
            r2 = r1
            r3 = 0
            r4 = r8
            r2[r3] = r4
            r2 = r1
            r3 = 1
            com.vk.api.sdk.e.a.c$a r4 = com.vk.api.sdk.e.a.c.a.WARNING
            r2[r3] = r4
            java.util.List r1 = kotlin.a.n.b(r1)
            java.util.Collection r1 = (java.util.Collection) r1
            java.lang.Object r1 = java.util.Collections.min(r1)
            java.lang.Object r0 = r0.get(r1)
            okhttp3.logging.HttpLoggingInterceptor$Level r0 = (okhttp3.logging.HttpLoggingInterceptor.Level) r0
            r8 = r0
            goto L_0x00a9
        L_0x009c:
            java.util.Map<com.vk.api.sdk.e.a.c$a, okhttp3.logging.HttpLoggingInterceptor$Level> r0 = com.vk.api.sdk.c.b.k
            r1 = r8
            java.lang.Object r0 = r0.get(r1)
            okhttp3.logging.HttpLoggingInterceptor$Level r0 = (okhttp3.logging.HttpLoggingInterceptor.Level) r0
            r8 = r0
        L_0x00a9:
            r0 = r8
            kotlin.jvm.internal.p.a(r0)
            r0 = r9
            r1 = r8
            r0.level(r1)
            r0 = r6
            okhttp3.logging.HttpLoggingInterceptor r0 = r0.a()
            r1 = r7
            okhttp3.Response r0 = r0.intercept(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vk.api.sdk.c.b.intercept(okhttp3.Interceptor$Chain):okhttp3.Response");
    }
}
