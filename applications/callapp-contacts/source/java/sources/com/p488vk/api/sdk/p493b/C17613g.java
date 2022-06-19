package com.p488vk.api.sdk.p493b;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.SystemClock;
import com.p488vk.api.sdk.C17685g;
import kotlin.C18399h;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� \u000f*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0002\u000f\u0010B+\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\u0002¢\u0006\u0002\u0010\nJ\u0017\u0010\u000b\u001a\u0004\u0018\u00018��2\u0006\u0010\f\u001a\u00020\rH\u0016¢\u0006\u0002\u0010\u000eR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\u0002X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0011"}, m4298d2 = {"Lcom/vk/api/sdk/chain/RateLimitReachedChainCall;", "T", "Lcom/vk/api/sdk/chain/ChainCall;", "manager", "Lcom/vk/api/sdk/VKApiManager;", "method", "", "backoff", "Lcom/vk/api/sdk/chain/RateLimitReachedChainCall$RateLimitBackoff;", "chainCall", "(Lcom/vk/api/sdk/VKApiManager;Ljava/lang/String;Lcom/vk/api/sdk/chain/RateLimitReachedChainCall$RateLimitBackoff;Lcom/vk/api/sdk/chain/ChainCall;)V", "call", "args", "Lcom/vk/api/sdk/chain/ChainArgs;", "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;", "Companion", "RateLimitBackoff", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.b.g */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/g.class */
public final class C17613g<T> extends AbstractC17609c<T> {

    /* renamed from: a */
    public static final C17614a f62365a = new C17614a(null);

    /* renamed from: b */
    private final String f62366b;

    /* renamed from: c */
    private final C17615b f62367c;

    /* renamed from: d */
    private final AbstractC17609c<T> f62368d;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0006"}, m4298d2 = {"Lcom/vk/api/sdk/chain/RateLimitReachedChainCall$Companion;", "", "()V", "DETAIL_MESSAGE", "", "PREF_NAME", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.b.g$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/g$a.class */
    public static final class C17614a {
        private C17614a() {
        }

        public /* synthetic */ C17614a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\u0018��2\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u0013R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R#\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0017"}, m4298d2 = {"Lcom/vk/api/sdk/chain/RateLimitReachedChainCall$RateLimitBackoff;", "", "context", "Landroid/content/Context;", "backoffTimeMs", "", "realTimeProvider", "Lkotlin/Function0;", "(Landroid/content/Context;JLkotlin/jvm/functions/Function0;)V", "prefStorage", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "getPrefStorage", "()Landroid/content/SharedPreferences;", "prefStorage$delegate", "Lkotlin/Lazy;", "backoff", "", "operationKey", "", "reset", "shouldWait", "", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.b.g$b */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/g$b.class */
    public static final class C17615b {

        /* renamed from: a */
        final long f62369a;

        /* renamed from: b */
        final Function0<Long> f62370b;

        /* renamed from: c */
        private final Lazy f62371c;

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0010\t\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "", "T", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
        /* renamed from: com.vk.api.sdk.b.g$b$1 */
        /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/g$b$1.class */
        public static final class C176161 extends AbstractC18526r implements Function0<Long> {

            /* renamed from: a */
            public static final C176161 f62372a = new C176161();

            C176161() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Long invoke() {
                return Long.valueOf(SystemClock.elapsedRealtime());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\u0004\b��\u0010\u0003H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "T", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
        /* renamed from: com.vk.api.sdk.b.g$b$a */
        /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/g$b$a.class */
        public static final class C17617a extends AbstractC18526r implements Function0<SharedPreferences> {

            /* renamed from: a */
            final /* synthetic */ Context f62373a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C17617a(Context context) {
                super(0);
                this.f62373a = context;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ SharedPreferences invoke() {
                return this.f62373a.getSharedPreferences("rate_limit_backoff_storage", 0);
            }
        }

        public C17615b(Context context, long j, Function0<Long> realTimeProvider) {
            C18524p.m3840d(context, "context");
            C18524p.m3840d(realTimeProvider, "realTimeProvider");
            this.f62369a = j;
            this.f62370b = realTimeProvider;
            this.f62371c = C18399h.m3897a(new C17617a(context));
        }

        public /* synthetic */ C17615b(Context context, long j, Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(context, j, (i & 4) != 0 ? C176161.f62372a : function0);
        }

        /* renamed from: a */
        final SharedPreferences m4874a() {
            return (SharedPreferences) this.f62371c.mo1102a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C17613g(C17685g manager, String method, C17615b backoff, AbstractC17609c<? extends T> chainCall) {
        super(manager);
        C18524p.m3840d(manager, "manager");
        C18524p.m3840d(method, "method");
        C18524p.m3840d(backoff, "backoff");
        C18524p.m3840d(chainCall, "chainCall");
        this.f62366b = method;
        this.f62367c = backoff;
        this.f62368d = chainCall;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00fa  */
    @Override // com.p488vk.api.sdk.p493b.AbstractC17609c
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T mo4868a(com.p488vk.api.sdk.p493b.C17608b r6) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p488vk.api.sdk.p493b.C17613g.mo4868a(com.vk.api.sdk.b.b):java.lang.Object");
    }
}
