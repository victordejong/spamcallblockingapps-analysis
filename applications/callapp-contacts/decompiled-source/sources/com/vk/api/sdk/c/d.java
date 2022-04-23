package com.vk.api.sdk.c;

import com.vk.api.sdk.e;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010%\u001a\u00020\u0006H\u0016R\u0011\u0010\u0005\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\bR\u0017\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u00148F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u00188F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u001c8F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020 8F¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u0013\u0010#\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b$\u0010\b¨\u0006&"}, d2 = {"Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;", "", "apiConfig", "Lcom/vk/api/sdk/VKApiConfig;", "(Lcom/vk/api/sdk/VKApiConfig;)V", "accessToken", "", "getAccessToken", "()Ljava/lang/String;", "appId", "", "getAppId", "()I", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "customEndpoint", "getCustomEndpoint", "hostProvider", "Lkotlin/Function0;", "getHostProvider", "()Lkotlin/jvm/functions/Function0;", "logFilterCredentials", "", "getLogFilterCredentials", "()Z", "logger", "Lcom/vk/api/sdk/utils/log/Logger;", "getLogger", "()Lcom/vk/api/sdk/utils/log/Logger;", "okHttpProvider", "Lcom/vk/api/sdk/VKOkHttpProvider;", "getOkHttpProvider", "()Lcom/vk/api/sdk/VKOkHttpProvider;", "secret", "getSecret", "toString", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final e f36019a;

    public d(e apiConfig) {
        p.d(apiConfig, "apiConfig");
        this.f36019a = apiConfig;
        com.vk.api.sdk.internal.d dVar = com.vk.api.sdk.internal.d.f36095a;
        com.vk.api.sdk.internal.d.a(apiConfig.f36036a);
        com.vk.api.sdk.internal.d dVar2 = com.vk.api.sdk.internal.d.f36095a;
        com.vk.api.sdk.internal.d.a(a());
    }

    public final String a() {
        return this.f36019a.h.a();
    }

    public final String b() {
        return this.f36019a.i.a();
    }

    public final String toString() {
        return "OkHttpExecutorConfig(host='" + this.f36019a.k.invoke() + "', accessToken='" + a() + "', secret='" + b() + "', logFilterCredentials=" + this.f36019a.j + ')';
    }
}
