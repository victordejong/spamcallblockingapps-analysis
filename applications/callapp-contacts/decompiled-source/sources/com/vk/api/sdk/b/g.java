package com.vk.api.sdk.b;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.SystemClock;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� \u000f*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0002\u000f\u0010B+\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\u0002¢\u0006\u0002\u0010\nJ\u0017\u0010\u000b\u001a\u0004\u0018\u00018��2\u0006\u0010\f\u001a\u00020\rH\u0016¢\u0006\u0002\u0010\u000eR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\u0002X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0011"}, d2 = {"Lcom/vk/api/sdk/chain/RateLimitReachedChainCall;", "T", "Lcom/vk/api/sdk/chain/ChainCall;", "manager", "Lcom/vk/api/sdk/VKApiManager;", "method", "", "backoff", "Lcom/vk/api/sdk/chain/RateLimitReachedChainCall$RateLimitBackoff;", "chainCall", "(Lcom/vk/api/sdk/VKApiManager;Ljava/lang/String;Lcom/vk/api/sdk/chain/RateLimitReachedChainCall$RateLimitBackoff;Lcom/vk/api/sdk/chain/ChainCall;)V", "call", "args", "Lcom/vk/api/sdk/chain/ChainArgs;", "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;", "Companion", "RateLimitBackoff", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/g.class */
public final class g<T> extends c<T> {

    /* renamed from: a  reason: collision with root package name */
    public static final a f35981a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private final String f35982b;

    /* renamed from: c  reason: collision with root package name */
    private final b f35983c;

    /* renamed from: d  reason: collision with root package name */
    private final c<T> f35984d;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0006"}, d2 = {"Lcom/vk/api/sdk/chain/RateLimitReachedChainCall$Companion;", "", "()V", "DETAIL_MESSAGE", "", "PREF_NAME", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/g$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\u0018��2\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u0013R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R#\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0017"}, d2 = {"Lcom/vk/api/sdk/chain/RateLimitReachedChainCall$RateLimitBackoff;", "", "context", "Landroid/content/Context;", "backoffTimeMs", "", "realTimeProvider", "Lkotlin/Function0;", "(Landroid/content/Context;JLkotlin/jvm/functions/Function0;)V", "prefStorage", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "getPrefStorage", "()Landroid/content/SharedPreferences;", "prefStorage$delegate", "Lkotlin/Lazy;", "backoff", "", "operationKey", "", "reset", "shouldWait", "", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/g$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final long f35985a;

        /* renamed from: b  reason: collision with root package name */
        final Function0<Long> f35986b;

        /* renamed from: c  reason: collision with root package name */
        private final Lazy f35987c;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\t\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "T", "invoke"}, k = 3, mv = {1, 4, 2})
        /* renamed from: com.vk.api.sdk.b.g$b$1  reason: invalid class name */
        /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/g$b$1.class */
        static final class AnonymousClass1 extends r implements Function0<Long> {

            /* renamed from: a  reason: collision with root package name */
            public static final AnonymousClass1 f35988a = new AnonymousClass1();

            AnonymousClass1() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Long invoke() {
                return Long.valueOf(SystemClock.elapsedRealtime());
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\u0004\b��\u0010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "T", "invoke"}, k = 3, mv = {1, 4, 2})
        /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/g$b$a.class */
        static final class a extends r implements Function0<SharedPreferences> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Context f35989a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Context context) {
                super(0);
                this.f35989a = context;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ SharedPreferences invoke() {
                return this.f35989a.getSharedPreferences("rate_limit_backoff_storage", 0);
            }
        }

        public b(Context context, long j, Function0<Long> realTimeProvider) {
            p.d(context, "context");
            p.d(realTimeProvider, "realTimeProvider");
            this.f35985a = j;
            this.f35986b = realTimeProvider;
            this.f35987c = h.a(new a(context));
        }

        public /* synthetic */ b(Context context, long j, AnonymousClass1 r10, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(context, j, (i & 4) != 0 ? AnonymousClass1.f35988a : r10);
        }

        final SharedPreferences a() {
            return (SharedPreferences) this.f35987c.a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public g(com.vk.api.sdk.g manager, String method, b backoff, c<? extends T> chainCall) {
        super(manager);
        p.d(manager, "manager");
        p.d(method, "method");
        p.d(backoff, "backoff");
        p.d(chainCall, "chainCall");
        this.f35982b = method;
        this.f35983c = backoff;
        this.f35984d = chainCall;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00fa  */
    @Override // com.vk.api.sdk.b.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T a(com.vk.api.sdk.b.b r6) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vk.api.sdk.b.g.a(com.vk.api.sdk.b.b):java.lang.Object");
    }
}
