package com.p488vk.api.sdk.p493b;

import com.p488vk.api.sdk.AbstractC17688h;
import com.p488vk.api.sdk.C17685g;
import com.p488vk.api.sdk.p494c.C17637c;
import com.p488vk.api.sdk.p494c.C17643e;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��N\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B=\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\r¢\u0006\u0002\u0010\u000eJ\u0017\u0010\u001a\u001a\u0004\u0018\u00018��2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016¢\u0006\u0002\u0010\u001dJ'\u0010\u001e\u001a\u0004\u0018\u00018��2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\n2\b\u0010\"\u001a\u0004\u0018\u00010#¢\u0006\u0002\u0010$J\u0017\u0010%\u001a\u0004\u0018\u00018��2\u0006\u0010&\u001a\u00020'H\u0016¢\u0006\u0002\u0010(R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0011\u0010\u000b\u001a\u00020\n¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u0017R\u0019\u0010\f\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\r¢\u0006\b\n��\u001a\u0004\b\u0018\u0010\u0019¨\u0006)"}, m4298d2 = {"Lcom/vk/api/sdk/chain/MethodChainCall;", "T", "Lcom/vk/api/sdk/chain/ChainCall;", "manager", "Lcom/vk/api/sdk/VKApiManager;", "okHttpExecutor", "Lcom/vk/api/sdk/okhttp/OkHttpExecutor;", "callBuilder", "Lcom/vk/api/sdk/okhttp/OkHttpMethodCall$Builder;", "defaultDeviceId", "", "defaultLang", "parser", "Lcom/vk/api/sdk/VKApiResponseParser;", "(Lcom/vk/api/sdk/VKApiManager;Lcom/vk/api/sdk/okhttp/OkHttpExecutor;Lcom/vk/api/sdk/okhttp/OkHttpMethodCall$Builder;Ljava/lang/String;Ljava/lang/String;Lcom/vk/api/sdk/VKApiResponseParser;)V", "getCallBuilder", "()Lcom/vk/api/sdk/okhttp/OkHttpMethodCall$Builder;", "getDefaultDeviceId", "()Ljava/lang/String;", "setDefaultDeviceId", "(Ljava/lang/String;)V", "getDefaultLang", "getOkHttpExecutor", "()Lcom/vk/api/sdk/okhttp/OkHttpExecutor;", "getParser", "()Lcom/vk/api/sdk/VKApiResponseParser;", "call", "args", "Lcom/vk/api/sdk/chain/ChainArgs;", "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;", "parseResult", "methodResponse", "Lcom/vk/api/sdk/okhttp/OkHttpExecutor$MethodResponse;", "methodName", "ignoredExecuteErrors", "", "(Lcom/vk/api/sdk/okhttp/OkHttpExecutor$MethodResponse;Ljava/lang/String;[I)Ljava/lang/Object;", "runRequest", "mc", "Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;", "(Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;)Ljava/lang/Object;", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.b.f */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/f.class */
public final class C17612f<T> extends AbstractC17609c<T> {

    /* renamed from: a */
    private final C17637c f62360a;

    /* renamed from: b */
    private final C17643e.C17644a f62361b;

    /* renamed from: c */
    private String f62362c;

    /* renamed from: d */
    private final String f62363d;

    /* renamed from: e */
    private final AbstractC17688h<T> f62364e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C17612f(C17685g manager, C17637c okHttpExecutor, C17643e.C17644a callBuilder, String defaultDeviceId, String defaultLang, AbstractC17688h<T> abstractC17688h) {
        super(manager);
        C18524p.m3840d(manager, "manager");
        C18524p.m3840d(okHttpExecutor, "okHttpExecutor");
        C18524p.m3840d(callBuilder, "callBuilder");
        C18524p.m3840d(defaultDeviceId, "defaultDeviceId");
        C18524p.m3840d(defaultLang, "defaultLang");
        this.f62360a = okHttpExecutor;
        this.f62361b = callBuilder;
        this.f62362c = defaultDeviceId;
        this.f62363d = defaultLang;
        this.f62364e = abstractC17688h;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x038f  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x03ed  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x044e  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0516  */
    /* JADX WARN: Type inference failed for: r14v12 */
    @Override // com.p488vk.api.sdk.p493b.AbstractC17609c
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T mo4868a(com.p488vk.api.sdk.p493b.C17608b r14) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 1316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p488vk.api.sdk.p493b.C17612f.mo4868a(com.vk.api.sdk.b.b):java.lang.Object");
    }
}
