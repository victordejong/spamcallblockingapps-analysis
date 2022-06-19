package com.p488vk.api.sdk;

import com.p488vk.api.sdk.exceptions.VKApiException;
import com.p488vk.api.sdk.p493b.AbstractC17609c;
import com.p488vk.api.sdk.p493b.C17606a;
import com.p488vk.api.sdk.p493b.C17608b;
import com.p488vk.api.sdk.p493b.C17610d;
import com.p488vk.api.sdk.p493b.C17611e;
import com.p488vk.api.sdk.p493b.C17612f;
import com.p488vk.api.sdk.p493b.C17613g;
import com.p488vk.api.sdk.p493b.C17619i;
import com.p488vk.api.sdk.p493b.C17621j;
import com.p488vk.api.sdk.p494c.C17637c;
import com.p488vk.api.sdk.p494c.C17642d;
import com.p488vk.api.sdk.p494c.C17643e;
import java.io.IOException;
import java.util.Map;
import kotlin.C18399h;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��|\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0016\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J.\u0010\u001c\u001a\b\u0012\u0004\u0012\u0002H\u001e0\u001d\"\u0004\b��\u0010\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0010\b\u0002\u0010!\u001a\n\u0012\u0004\u0012\u0002H\u001e\u0018\u00010\"H\u0014J6\u0010#\u001a\b\u0012\u0004\u0012\u0002H\u001e0$\"\u0004\b��\u0010\u001e2\u0006\u0010\u001f\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010'2\u000e\u0010!\u001a\n\u0012\u0004\u0012\u0002H\u001e\u0018\u00010\"H\u0014J*\u0010(\u001a\b\u0012\u0004\u0012\u0002H\u001e0)\"\u0004\b��\u0010\u001e2\u0006\u0010*\u001a\u00020+2\f\u0010,\u001a\b\u0012\u0004\u0012\u0002H\u001e0\u001dH\u0002J9\u0010-\u001a\u0002H\u001e\"\u0004\b��\u0010\u001e2\u0006\u0010\u001f\u001a\u00020%2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010'2\u0010\b\u0002\u0010!\u001a\n\u0012\u0004\u0012\u0002H\u001e\u0018\u00010\"H\u0007¢\u0006\u0002\u0010.J\u000e\u0010-\u001a\u00020/2\u0006\u0010\u001f\u001a\u00020 J+\u0010-\u001a\u0002H\u001e\"\u0004\b��\u0010\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0010\b\u0002\u0010!\u001a\n\u0012\u0004\u0012\u0002H\u001e\u0018\u00010\"¢\u0006\u0002\u00100J!\u0010-\u001a\u0002H\u001e\"\u0004\b��\u0010\u001e2\f\u00101\u001a\b\u0012\u0004\u0012\u0002H\u001e02H\u0016¢\u0006\u0002\u00103J!\u00104\u001a\u0002H\u001e\"\u0004\b��\u0010\u001e2\f\u00105\u001a\b\u0012\u0004\u0012\u0002H\u001e0\u001dH\u0014¢\u0006\u0002\u00106J\u0010\u00107\u001a\u00020/2\b\u00108\u001a\u0004\u0018\u000109J\u0018\u0010:\u001a\u00020/2\u0006\u00108\u001a\u0002092\b\u0010;\u001a\u0004\u0018\u000109J*\u0010<\u001a\b\u0012\u0004\u0012\u0002H\u001e0\u001d\"\u0004\b��\u0010\u001e2\u0006\u0010\u001f\u001a\u00020%2\f\u0010,\u001a\b\u0012\u0004\u0012\u0002H\u001e0\u001dH\u0014J*\u0010<\u001a\b\u0012\u0004\u0012\u0002H\u001e0\u001d\"\u0004\b��\u0010\u001e2\u0006\u0010\u001f\u001a\u00020 2\f\u0010,\u001a\b\u0012\u0004\u0012\u0002H\u001e0\u001dH\u0014R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u00020\b8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\f\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u001b¨\u0006="}, m4298d2 = {"Lcom/vk/api/sdk/VKApiManager;", "", "config", "Lcom/vk/api/sdk/VKApiConfig;", "(Lcom/vk/api/sdk/VKApiConfig;)V", "getConfig", "()Lcom/vk/api/sdk/VKApiConfig;", "executor", "Lcom/vk/api/sdk/okhttp/OkHttpExecutor;", "getExecutor", "()Lcom/vk/api/sdk/okhttp/OkHttpExecutor;", "executor$delegate", "Lkotlin/Lazy;", "illegalCredentialsListener", "Lcom/vk/api/sdk/VKApiIllegalCredentialsListener;", "getIllegalCredentialsListener", "()Lcom/vk/api/sdk/VKApiIllegalCredentialsListener;", "setIllegalCredentialsListener", "(Lcom/vk/api/sdk/VKApiIllegalCredentialsListener;)V", "rateLimitBackoff", "Lcom/vk/api/sdk/chain/RateLimitReachedChainCall$RateLimitBackoff;", "getRateLimitBackoff", "()Lcom/vk/api/sdk/chain/RateLimitReachedChainCall$RateLimitBackoff;", "rateLimitBackoff$delegate", "validationHandler", "Lcom/vk/api/sdk/VKApiValidationHandler;", "getValidationHandler$libapi_sdk_core_release", "()Lcom/vk/api/sdk/VKApiValidationHandler;", "createMethodChainCall", "Lcom/vk/api/sdk/chain/ChainCall;", "T", "call", "Lcom/vk/api/sdk/VKMethodCall;", "parser", "Lcom/vk/api/sdk/VKApiResponseParser;", "createPostMethodChainCall", "Lcom/vk/api/sdk/chain/HttpPostChainCall;", "Lcom/vk/api/sdk/VKHttpPostCall;", EventConstants.PROGRESS, "Lcom/vk/api/sdk/VKApiProgressListener;", "createValidationHandlerChainCall", "Lcom/vk/api/sdk/chain/ValidationHandlerChainCall;", "retryCount", "", "chainCall", "execute", "(Lcom/vk/api/sdk/VKHttpPostCall;Lcom/vk/api/sdk/VKApiProgressListener;Lcom/vk/api/sdk/VKApiResponseParser;)Ljava/lang/Object;", "", "(Lcom/vk/api/sdk/VKMethodCall;Lcom/vk/api/sdk/VKApiResponseParser;)Ljava/lang/Object;", "cmd", "Lcom/vk/api/sdk/internal/ApiCommand;", "(Lcom/vk/api/sdk/internal/ApiCommand;)Ljava/lang/Object;", "executeWithExceptionAdjust", "cc", "(Lcom/vk/api/sdk/chain/ChainCall;)Ljava/lang/Object;", "ignoreAccessToken", "accessToken", "", "setCredentials", "secret", "wrapCall", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.g */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/g.class */
public final class C17685g {

    /* renamed from: a */
    public final AbstractC17689i f62505a;

    /* renamed from: b */
    public volatile AbstractC17684f f62506b;

    /* renamed from: c */
    public final C17650e f62507c;

    /* renamed from: d */
    private final Lazy f62508d = C18399h.m3897a(new C17687b());

    /* renamed from: e */
    private final Lazy f62509e = C18399h.m3897a(new C17686a());

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Lcom/vk/api/sdk/okhttp/OkHttpExecutor;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.g$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/g$a.class */
    public static final class C17686a extends AbstractC18526r implements Function0<C17637c> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C17686a() {
            super(0);
            C17685g.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ C17637c invoke() {
            return new C17637c(new C17642d(C17685g.this.f62507c));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Lcom/vk/api/sdk/chain/RateLimitReachedChainCall$RateLimitBackoff;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.g$b */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/g$b.class */
    public static final class C17687b extends AbstractC18526r implements Function0<C17613g.C17615b> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C17687b() {
            super(0);
            C17685g.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ C17613g.C17615b invoke() {
            return new C17613g.C17615b(C17685g.this.f62507c.f62436a, C17685g.this.f62507c.f62450o, null, 4, null);
        }
    }

    public C17685g(C17650e config) {
        C18524p.m3840d(config, "config");
        this.f62507c = config;
        this.f62505a = config.f62438c;
    }

    /* renamed from: a */
    public final C17637c m4829a() {
        return (C17637c) this.f62509e.mo1102a();
    }

    /* renamed from: a */
    public final <T> T m4828a(C17699l call, AbstractC17688h<T> abstractC17688h) throws InterruptedException, IOException, VKApiException {
        C18524p.m3840d(call, "call");
        C18524p.m3840d(call, "call");
        C17637c m4829a = m4829a();
        C17643e.C17644a c17644a = new C17643e.C17644a();
        C18524p.m3840d(call, "call");
        C17643e.C17644a c17644a2 = c17644a;
        String method = call.f62526a;
        C18524p.m3840d(method, "method");
        C17643e.C17644a c17644a3 = c17644a2;
        c17644a3.f62421a = method;
        String version = call.f62527b;
        C18524p.m3840d(version, "version");
        c17644a3.f62422b = version;
        Map<String, String> args = call.f62528c;
        C18524p.m3840d(args, "args");
        c17644a3.f62423c.putAll(args);
        c17644a3.f62425e = call.f62531f;
        AbstractC17609c chainCall = new C17612f(this, m4829a, c17644a2, this.f62507c.f62439d.mo1102a(), this.f62507c.f62447l, abstractC17688h);
        C18524p.m3840d(call, "call");
        C18524p.m3840d(chainCall, "chainCall");
        if (!call.f62530e) {
            chainCall = new C17621j(this, call.f62529d, chainCall);
        }
        int i = call.f62529d;
        AbstractC17609c c17613g = new C17613g(this, call.f62526a, (C17613g.C17615b) this.f62508d.mo1102a(), new C17619i(this, i, new C17611e(this, new C17606a(this, chainCall, call, this.f62507c.f62451p), 1)));
        AbstractC17609c abstractC17609c = c17613g;
        if (call.f62529d > 0) {
            abstractC17609c = new C17610d(this, call.f62529d, c17613g);
        }
        AbstractC17609c cc = abstractC17609c;
        C18524p.m3840d(cc, "cc");
        T mo4868a = abstractC17609c.mo4868a(new C17608b());
        C18524p.m3851a(mo4868a);
        return mo4868a;
    }

    /* renamed from: a */
    public final void m4827a(String accessToken, String str) {
        C18524p.m3840d(accessToken, "accessToken");
        m4829a().m4860a(accessToken, str);
    }
}
