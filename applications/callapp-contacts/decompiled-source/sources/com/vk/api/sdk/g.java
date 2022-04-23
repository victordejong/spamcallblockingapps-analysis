package com.vk.api.sdk;

import com.vk.api.sdk.b.f;
import com.vk.api.sdk.b.g;
import com.vk.api.sdk.b.i;
import com.vk.api.sdk.b.j;
import com.vk.api.sdk.c.c;
import com.vk.api.sdk.c.d;
import com.vk.api.sdk.c.e;
import com.vk.api.sdk.exceptions.VKApiException;
import java.io.IOException;
import java.util.Map;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��|\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0016\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J.\u0010\u001c\u001a\b\u0012\u0004\u0012\u0002H\u001e0\u001d\"\u0004\b��\u0010\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0010\b\u0002\u0010!\u001a\n\u0012\u0004\u0012\u0002H\u001e\u0018\u00010\"H\u0014J6\u0010#\u001a\b\u0012\u0004\u0012\u0002H\u001e0$\"\u0004\b��\u0010\u001e2\u0006\u0010\u001f\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010'2\u000e\u0010!\u001a\n\u0012\u0004\u0012\u0002H\u001e\u0018\u00010\"H\u0014J*\u0010(\u001a\b\u0012\u0004\u0012\u0002H\u001e0)\"\u0004\b��\u0010\u001e2\u0006\u0010*\u001a\u00020+2\f\u0010,\u001a\b\u0012\u0004\u0012\u0002H\u001e0\u001dH\u0002J9\u0010-\u001a\u0002H\u001e\"\u0004\b��\u0010\u001e2\u0006\u0010\u001f\u001a\u00020%2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010'2\u0010\b\u0002\u0010!\u001a\n\u0012\u0004\u0012\u0002H\u001e\u0018\u00010\"H\u0007¢\u0006\u0002\u0010.J\u000e\u0010-\u001a\u00020/2\u0006\u0010\u001f\u001a\u00020 J+\u0010-\u001a\u0002H\u001e\"\u0004\b��\u0010\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0010\b\u0002\u0010!\u001a\n\u0012\u0004\u0012\u0002H\u001e\u0018\u00010\"¢\u0006\u0002\u00100J!\u0010-\u001a\u0002H\u001e\"\u0004\b��\u0010\u001e2\f\u00101\u001a\b\u0012\u0004\u0012\u0002H\u001e02H\u0016¢\u0006\u0002\u00103J!\u00104\u001a\u0002H\u001e\"\u0004\b��\u0010\u001e2\f\u00105\u001a\b\u0012\u0004\u0012\u0002H\u001e0\u001dH\u0014¢\u0006\u0002\u00106J\u0010\u00107\u001a\u00020/2\b\u00108\u001a\u0004\u0018\u000109J\u0018\u0010:\u001a\u00020/2\u0006\u00108\u001a\u0002092\b\u0010;\u001a\u0004\u0018\u000109J*\u0010<\u001a\b\u0012\u0004\u0012\u0002H\u001e0\u001d\"\u0004\b��\u0010\u001e2\u0006\u0010\u001f\u001a\u00020%2\f\u0010,\u001a\b\u0012\u0004\u0012\u0002H\u001e0\u001dH\u0014J*\u0010<\u001a\b\u0012\u0004\u0012\u0002H\u001e0\u001d\"\u0004\b��\u0010\u001e2\u0006\u0010\u001f\u001a\u00020 2\f\u0010,\u001a\b\u0012\u0004\u0012\u0002H\u001e0\u001dH\u0014R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u00020\b8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\f\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u001b¨\u0006="}, d2 = {"Lcom/vk/api/sdk/VKApiManager;", "", "config", "Lcom/vk/api/sdk/VKApiConfig;", "(Lcom/vk/api/sdk/VKApiConfig;)V", "getConfig", "()Lcom/vk/api/sdk/VKApiConfig;", "executor", "Lcom/vk/api/sdk/okhttp/OkHttpExecutor;", "getExecutor", "()Lcom/vk/api/sdk/okhttp/OkHttpExecutor;", "executor$delegate", "Lkotlin/Lazy;", "illegalCredentialsListener", "Lcom/vk/api/sdk/VKApiIllegalCredentialsListener;", "getIllegalCredentialsListener", "()Lcom/vk/api/sdk/VKApiIllegalCredentialsListener;", "setIllegalCredentialsListener", "(Lcom/vk/api/sdk/VKApiIllegalCredentialsListener;)V", "rateLimitBackoff", "Lcom/vk/api/sdk/chain/RateLimitReachedChainCall$RateLimitBackoff;", "getRateLimitBackoff", "()Lcom/vk/api/sdk/chain/RateLimitReachedChainCall$RateLimitBackoff;", "rateLimitBackoff$delegate", "validationHandler", "Lcom/vk/api/sdk/VKApiValidationHandler;", "getValidationHandler$libapi_sdk_core_release", "()Lcom/vk/api/sdk/VKApiValidationHandler;", "createMethodChainCall", "Lcom/vk/api/sdk/chain/ChainCall;", "T", "call", "Lcom/vk/api/sdk/VKMethodCall;", "parser", "Lcom/vk/api/sdk/VKApiResponseParser;", "createPostMethodChainCall", "Lcom/vk/api/sdk/chain/HttpPostChainCall;", "Lcom/vk/api/sdk/VKHttpPostCall;", EventConstants.PROGRESS, "Lcom/vk/api/sdk/VKApiProgressListener;", "createValidationHandlerChainCall", "Lcom/vk/api/sdk/chain/ValidationHandlerChainCall;", "retryCount", "", "chainCall", "execute", "(Lcom/vk/api/sdk/VKHttpPostCall;Lcom/vk/api/sdk/VKApiProgressListener;Lcom/vk/api/sdk/VKApiResponseParser;)Ljava/lang/Object;", "", "(Lcom/vk/api/sdk/VKMethodCall;Lcom/vk/api/sdk/VKApiResponseParser;)Ljava/lang/Object;", "cmd", "Lcom/vk/api/sdk/internal/ApiCommand;", "(Lcom/vk/api/sdk/internal/ApiCommand;)Ljava/lang/Object;", "executeWithExceptionAdjust", "cc", "(Lcom/vk/api/sdk/chain/ChainCall;)Ljava/lang/Object;", "ignoreAccessToken", "accessToken", "", "setCredentials", "secret", "wrapCall", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final i f36078a;

    /* renamed from: b  reason: collision with root package name */
    public volatile f f36079b;

    /* renamed from: c  reason: collision with root package name */
    public final e f36080c;

    /* renamed from: d  reason: collision with root package name */
    private final Lazy f36081d = h.a(new b());
    private final Lazy e = h.a(new a());

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/vk/api/sdk/okhttp/OkHttpExecutor;", "invoke"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/g$a.class */
    static final class a extends r implements Function0<c> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ c invoke() {
            return new c(new d(g.this.f36080c));
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/vk/api/sdk/chain/RateLimitReachedChainCall$RateLimitBackoff;", "invoke"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/g$b.class */
    static final class b extends r implements Function0<g.b> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ g.b invoke() {
            return new g.b(g.this.f36080c.f36036a, g.this.f36080c.o, null, 4, null);
        }
    }

    public g(e config) {
        p.d(config, "config");
        this.f36080c = config;
        this.f36078a = config.f36038c;
    }

    public final c a() {
        return (c) this.e.a();
    }

    public final <T> T a(l call, h<T> hVar) throws InterruptedException, IOException, VKApiException {
        p.d(call, "call");
        p.d(call, "call");
        c a2 = a();
        e.a aVar = new e.a();
        p.d(call, "call");
        e.a aVar2 = aVar;
        String method = call.f36097a;
        p.d(method, "method");
        e.a aVar3 = aVar2;
        aVar3.f36024a = method;
        String version = call.f36098b;
        p.d(version, "version");
        aVar3.f36025b = version;
        Map<String, String> args = call.f36099c;
        p.d(args, "args");
        aVar3.f36026c.putAll(args);
        aVar3.e = call.f;
        j chainCall = new f(this, a2, aVar2, this.f36080c.f36039d.a(), this.f36080c.l, hVar);
        p.d(call, "call");
        p.d(chainCall, "chainCall");
        if (!call.e) {
            chainCall = new j(this, call.f36100d, chainCall);
        }
        int i = call.f36100d;
        com.vk.api.sdk.b.g gVar = new com.vk.api.sdk.b.g(this, call.f36097a, (g.b) this.f36081d.a(), new i(this, i, new com.vk.api.sdk.b.e(this, new com.vk.api.sdk.b.a(this, chainCall, call, this.f36080c.p), 1)));
        com.vk.api.sdk.b.d cc = gVar;
        if (call.f36100d > 0) {
            cc = new com.vk.api.sdk.b.d(this, call.f36100d, gVar);
        }
        p.d(cc, "cc");
        T t = (T) cc.a(new com.vk.api.sdk.b.b());
        p.a(t);
        return t;
    }

    public final void a(String accessToken, String str) {
        p.d(accessToken, "accessToken");
        a().a(accessToken, str);
    }
}
