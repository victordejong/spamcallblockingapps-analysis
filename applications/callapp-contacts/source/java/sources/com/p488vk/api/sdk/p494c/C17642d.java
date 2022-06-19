package com.p488vk.api.sdk.p494c;

import com.p488vk.api.sdk.C17650e;
import com.p488vk.api.sdk.internal.C17696d;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010%\u001a\u00020\u0006H\u0016R\u0011\u0010\u0005\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\bR\u0017\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u00148F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u00188F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u001c8F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020 8F¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u0013\u0010#\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b$\u0010\b¨\u0006&"}, m4298d2 = {"Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;", "", "apiConfig", "Lcom/vk/api/sdk/VKApiConfig;", "(Lcom/vk/api/sdk/VKApiConfig;)V", "accessToken", "", "getAccessToken", "()Ljava/lang/String;", "appId", "", "getAppId", "()I", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "customEndpoint", "getCustomEndpoint", "hostProvider", "Lkotlin/Function0;", "getHostProvider", "()Lkotlin/jvm/functions/Function0;", "logFilterCredentials", "", "getLogFilterCredentials", "()Z", "logger", "Lcom/vk/api/sdk/utils/log/Logger;", "getLogger", "()Lcom/vk/api/sdk/utils/log/Logger;", "okHttpProvider", "Lcom/vk/api/sdk/VKOkHttpProvider;", "getOkHttpProvider", "()Lcom/vk/api/sdk/VKOkHttpProvider;", "secret", "getSecret", "toString", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.c.d */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/d.class */
public final class C17642d {

    /* renamed from: a */
    public final C17650e f62415a;

    public C17642d(C17650e apiConfig) {
        C18524p.m3840d(apiConfig, "apiConfig");
        this.f62415a = apiConfig;
        C17696d c17696d = C17696d.f62523a;
        C17696d.m4816a(apiConfig.f62436a);
        C17696d c17696d2 = C17696d.f62523a;
        C17696d.m4815a(m4857a());
    }

    /* renamed from: a */
    public final String m4857a() {
        return this.f62415a.f62443h.mo1102a();
    }

    /* renamed from: b */
    public final String m4856b() {
        return this.f62415a.f62444i.mo1102a();
    }

    public final String toString() {
        return "OkHttpExecutorConfig(host='" + this.f62415a.f62446k.invoke() + "', accessToken='" + m4857a() + "', secret='" + m4856b() + "', logFilterCredentials=" + this.f62415a.f62445j + ')';
    }
}
