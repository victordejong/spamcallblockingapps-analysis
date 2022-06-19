package com.p488vk.api.sdk.p494c;

import com.facebook.AccessToken;
import com.p488vk.api.sdk.p496e.AbstractC17669c;
import com.p488vk.api.sdk.p496e.C17672e;
import com.p488vk.api.sdk.p496e.p497a.AbstractC17665c;
import java.util.Collection;
import java.util.Map;
import kotlin.C18399h;
import kotlin.C20126t;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.p532h.AbstractC18412j;
import kotlin.p532h.C18418l;
import kotlin.p532h.EnumC18423n;
import kotlin.reflect.KProperty;
import okhttp3.Interceptor;
import okhttp3.logging.HttpLoggingInterceptor;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� *2\u00020\u0001:\u0001*B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\nJ\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0016J\u0010\u0010(\u001a\u00020\t2\u0006\u0010)\u001a\u00020\tH\u0002R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R'\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0015\u0010\u0016R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u0018\u001a\u0004\b\u001b\u0010\u001cR\u001b\u0010\u001e\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u0018\u001a\u0004\b\u001f\u0010\u001cR'\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010\u0018\u001a\u0004\b\"\u0010\u0016¨\u0006+"}, m4298d2 = {"Lcom/vk/api/sdk/okhttp/LoggingInterceptor;", "Lokhttp3/Interceptor;", "filterCredentials", "", "logger", "Lcom/vk/api/sdk/utils/log/Logger;", "(ZLcom/vk/api/sdk/utils/log/Logger;)V", "keysToFilter", "", "", "(ZLjava/util/Collection;Lcom/vk/api/sdk/utils/log/Logger;)V", "delegate", "Lokhttp3/logging/HttpLoggingInterceptor;", "getDelegate", "()Lokhttp3/logging/HttpLoggingInterceptor;", "delegate$delegate", "Lcom/vk/api/sdk/utils/ThreadLocalDelegate;", "sensitiveKeyRequestTransformer", "Lkotlin/Function1;", "Lkotlin/text/MatchResult;", "", "getSensitiveKeyRequestTransformer", "()Lkotlin/jvm/functions/Function1;", "sensitiveKeyRequestTransformer$delegate", "Lkotlin/Lazy;", "sensitiveKeysRequestRegex", "Lkotlin/text/Regex;", "getSensitiveKeysRequestRegex", "()Lkotlin/text/Regex;", "sensitiveKeysRequestRegex$delegate", "sensitiveKeysResponseRegex", "getSensitiveKeysResponseRegex", "sensitiveKeysResponseRegex$delegate", "sensitiveKeysResponseTransformer", "getSensitiveKeysResponseTransformer", "sensitiveKeysResponseTransformer$delegate", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "removeSensitiveKeys", "msg", "Companion", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.c.b */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/b.class */
public final class C17627b implements Interceptor {

    /* renamed from: a */
    static final /* synthetic */ KProperty[] f62383a = {C18496ac.m3883a(new C18489aa(C17627b.class, "delegate", "getDelegate()Lokhttp3/logging/HttpLoggingInterceptor;", 0))};

    /* renamed from: b */
    public static final C17628a f62384b = new C17628a(null);

    /* renamed from: k */
    private static final Map<AbstractC17665c.EnumC17666a, HttpLoggingInterceptor.Level> f62385k = C18247ai.m4251a(C20126t.m1103a(AbstractC17665c.EnumC17666a.NONE, HttpLoggingInterceptor.Level.NONE), C20126t.m1103a(AbstractC17665c.EnumC17666a.ERROR, HttpLoggingInterceptor.Level.NONE), C20126t.m1103a(AbstractC17665c.EnumC17666a.WARNING, HttpLoggingInterceptor.Level.BASIC), C20126t.m1103a(AbstractC17665c.EnumC17666a.DEBUG, HttpLoggingInterceptor.Level.HEADERS), C20126t.m1103a(AbstractC17665c.EnumC17666a.VERBOSE, HttpLoggingInterceptor.Level.BODY), C20126t.m1103a(AbstractC17665c.EnumC17666a.NONE, HttpLoggingInterceptor.Level.NONE));

    /* renamed from: c */
    private final Lazy f62386c;

    /* renamed from: d */
    private final Lazy f62387d;

    /* renamed from: e */
    private final Lazy f62388e;

    /* renamed from: f */
    private final Lazy f62389f;

    /* renamed from: g */
    private final AbstractC17669c f62390g;

    /* renamed from: h */
    private final boolean f62391h;

    /* renamed from: i */
    private final Collection<String> f62392i;

    /* renamed from: j */
    private final AbstractC17665c f62393j;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0007"}, m4298d2 = {"Lcom/vk/api/sdk/okhttp/LoggingInterceptor$Companion;", "", "()V", "levelsMap", "", "Lcom/vk/api/sdk/utils/log/Logger$LogLevel;", "Lokhttp3/logging/HttpLoggingInterceptor$Level;", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.c.b$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/b$a.class */
    public static final class C17628a {
        private C17628a() {
        }

        public /* synthetic */ C17628a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Lokhttp3/logging/HttpLoggingInterceptor;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.c.b$b */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/b$b.class */
    public static final class C17629b extends AbstractC18526r implements Function0<HttpLoggingInterceptor> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C17629b() {
            super(0);
            C17627b.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ HttpLoggingInterceptor invoke() {
            return new HttpLoggingInterceptor(new HttpLoggingInterceptor.Logger() { // from class: com.vk.api.sdk.c.b.b.1
                @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
                public final void log(String message) {
                    C18524p.m3840d(message, "message");
                    String str = message;
                    if (C17627b.this.f62391h) {
                        str = C17627b.m4864a(C17627b.this, message);
                    }
                    C17627b.this.f62393j.mo4847a(C17627b.this.f62393j.mo4848a().mo1102a(), str, null);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\u0010��\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "Lkotlin/Function1;", "Lkotlin/text/MatchResult;", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.c.b$c */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/b$c.class */
    public static final class C17631c extends AbstractC18526r implements Function0<Function1<? super AbstractC18412j, ? extends String>> {

        /* renamed from: a */
        public static final C17631c f62396a = new C17631c();

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "match", "Lkotlin/text/MatchResult;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
        /* renamed from: com.vk.api.sdk.c.b$c$1 */
        /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/b$c$1.class */
        static final class C176321 extends AbstractC18526r implements Function1<AbstractC18412j, String> {

            /* renamed from: a */
            public static final C176321 f62397a = new C176321();

            C176321() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ String invoke(AbstractC18412j abstractC18412j) {
                AbstractC18412j match = abstractC18412j;
                C18524p.m3840d(match, "match");
                return match.mo3990b().get(1) + "=<HIDE>";
            }
        }

        C17631c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* bridge */ /* synthetic */ Function1<? super AbstractC18412j, ? extends String> invoke() {
            return C176321.f62397a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Lkotlin/text/Regex;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.c.b$d */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/b$d.class */
    public static final class C17633d extends AbstractC18526r implements Function0<C18418l> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C17633d() {
            super(0);
            C17627b.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ C18418l invoke() {
            String str = "(" + C18282n.m4148a(C17627b.this.f62392i, "|", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62) + ")=[a-z0-9]+";
            C18524p.m3843b(str, "StringBuilder().apply {\n…]+\")\n        }.toString()");
            return new C18418l(str, EnumC18423n.IGNORE_CASE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Lkotlin/text/Regex;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.c.b$e */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/b$e.class */
    public static final class C17634e extends AbstractC18526r implements Function0<C18418l> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C17634e() {
            super(0);
            C17627b.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ C18418l invoke() {
            String str = "\"(" + C18282n.m4148a(C17627b.this.f62392i, "|", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62) + ")\":\"[a-z0-9]+\"";
            C18524p.m3843b(str, "StringBuilder().apply {\n…\\\"\")\n        }.toString()");
            return new C18418l(str, EnumC18423n.IGNORE_CASE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\u0010��\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "Lkotlin/Function1;", "Lkotlin/text/MatchResult;", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.c.b$f */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/b$f.class */
    public static final class C17635f extends AbstractC18526r implements Function0<Function1<? super AbstractC18412j, ? extends String>> {

        /* renamed from: a */
        public static final C17635f f62400a = new C17635f();

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "match", "Lkotlin/text/MatchResult;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
        /* renamed from: com.vk.api.sdk.c.b$f$1 */
        /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/b$f$1.class */
        static final class C176361 extends AbstractC18526r implements Function1<AbstractC18412j, String> {

            /* renamed from: a */
            public static final C176361 f62401a = new C176361();

            C176361() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ String invoke(AbstractC18412j abstractC18412j) {
                AbstractC18412j match = abstractC18412j;
                C18524p.m3840d(match, "match");
                return "\"" + match.mo3990b().get(1) + "\":<HIDE>";
            }
        }

        C17635f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* bridge */ /* synthetic */ Function1<? super AbstractC18412j, ? extends String> invoke() {
            return C176361.f62401a;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C17627b(boolean z, AbstractC17665c logger) {
        this(z, C18282n.m4167b((Object[]) new String[]{AccessToken.ACCESS_TOKEN_KEY, "key", "client_secret"}), logger);
        C18524p.m3840d(logger, "logger");
    }

    public C17627b(boolean z, Collection<String> keysToFilter, AbstractC17665c logger) {
        C18524p.m3840d(keysToFilter, "keysToFilter");
        C18524p.m3840d(logger, "logger");
        this.f62391h = z;
        this.f62392i = keysToFilter;
        this.f62393j = logger;
        this.f62386c = C18399h.m3897a(new C17633d());
        this.f62387d = C18399h.m3897a(C17631c.f62396a);
        this.f62388e = C18399h.m3897a(new C17634e());
        this.f62389f = C18399h.m3897a(C17635f.f62400a);
        this.f62390g = C17672e.m4841a(new C17629b());
    }

    /* renamed from: a */
    public static final /* synthetic */ String m4864a(C17627b c17627b, String str) {
        return ((C18418l) c17627b.f62388e.mo1102a()).m3984a(((C18418l) c17627b.f62386c.mo1102a()).m3984a(str, (Function1) c17627b.f62387d.mo1102a()), (Function1) c17627b.f62389f.mo1102a());
    }

    /* renamed from: a */
    private final HttpLoggingInterceptor m4866a() {
        return (HttpLoggingInterceptor) this.f62390g.mo4842a(f62383a[0]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x003a, code lost:
        if (r0 == null) goto L10;
     */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
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
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r7
            okhttp3.Request r0 = r0.request()
            r8 = r0
            r0 = r8
            okhttp3.RequestBody r0 = r0.body()
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L20
            r0 = r9
            long r0 = r0.contentLength()
            r10 = r0
            goto L23
        L20:
            r0 = 0
            r10 = r0
        L23:
            r0 = r8
            java.lang.Class<com.vk.api.sdk.c.a> r1 = com.p488vk.api.sdk.p494c.C17626a.class
            java.lang.Object r0 = r0.tag(r1)
            com.vk.api.sdk.c.a r0 = (com.p488vk.api.sdk.p494c.C17626a) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L3d
            r0 = r8
            com.vk.api.sdk.e.a.c$a r0 = r0.f62382a
            r9 = r0
            r0 = r9
            r8 = r0
            r0 = r9
            if (r0 != 0) goto L4f
        L3d:
            r0 = r6
            com.vk.api.sdk.e.a.c r0 = r0.f62393j
            kotlin.Lazy r0 = r0.mo4848a()
            java.lang.Object r0 = r0.mo1102a()
            com.vk.api.sdk.e.a.c$a r0 = (com.p488vk.api.sdk.p496e.p497a.AbstractC17665c.EnumC17666a) r0
            r8 = r0
        L4f:
            r0 = r6
            okhttp3.logging.HttpLoggingInterceptor r0 = r0.m4866a()
            r9 = r0
            r0 = r10
            r1 = 64
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L6d
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L67
            goto L6d
        L67:
            r0 = 0
            r12 = r0
            goto L70
        L6d:
            r0 = 1
            r12 = r0
        L70:
            r0 = r12
            r1 = 1
            if (r0 != r1) goto L9c
            java.util.Map<com.vk.api.sdk.e.a.c$a, okhttp3.logging.HttpLoggingInterceptor$Level> r0 = com.p488vk.api.sdk.p494c.C17627b.f62385k
            r1 = 2
            com.vk.api.sdk.e.a.c$a[] r1 = new com.p488vk.api.sdk.p496e.p497a.AbstractC17665c.EnumC17666a[r1]
            r2 = r1
            r3 = 0
            r4 = r8
            r2[r3] = r4
            r2 = r1
            r3 = 1
            com.vk.api.sdk.e.a.c$a r4 = com.p488vk.api.sdk.p496e.p497a.AbstractC17665c.EnumC17666a.WARNING
            r2[r3] = r4
            java.util.List r1 = kotlin.p518a.C18282n.m4167b(r1)
            java.util.Collection r1 = (java.util.Collection) r1
            java.lang.Object r1 = java.util.Collections.min(r1)
            java.lang.Object r0 = r0.get(r1)
            okhttp3.logging.HttpLoggingInterceptor$Level r0 = (okhttp3.logging.HttpLoggingInterceptor.Level) r0
            r8 = r0
            goto La9
        L9c:
            java.util.Map<com.vk.api.sdk.e.a.c$a, okhttp3.logging.HttpLoggingInterceptor$Level> r0 = com.p488vk.api.sdk.p494c.C17627b.f62385k
            r1 = r8
            java.lang.Object r0 = r0.get(r1)
            okhttp3.logging.HttpLoggingInterceptor$Level r0 = (okhttp3.logging.HttpLoggingInterceptor.Level) r0
            r8 = r0
        La9:
            r0 = r8
            kotlin.jvm.internal.C18524p.m3851a(r0)
            r0 = r9
            r1 = r8
            r0.level(r1)
            r0 = r6
            okhttp3.logging.HttpLoggingInterceptor r0 = r0.m4866a()
            r1 = r7
            okhttp3.Response r0 = r0.intercept(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p488vk.api.sdk.p494c.C17627b.intercept(okhttp3.Interceptor$Chain):okhttp3.Response");
    }
}
