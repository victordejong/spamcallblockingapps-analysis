package com.p488vk.api.sdk;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import okhttp3.OkHttpClient;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018��2\u00020\u0001:\u0002\t\nB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H&J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\u000b"}, m4298d2 = {"Lcom/vk/api/sdk/VKOkHttpProvider;", "", "()V", "getClient", "Lokhttp3/OkHttpClient;", "updateClient", "", "f", "Lcom/vk/api/sdk/VKOkHttpProvider$BuilderUpdateFunction;", "BuilderUpdateFunction", "DefaultProvider", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.m */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/m.class */
public abstract class AbstractC17702m {

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005"}, m4298d2 = {"Lcom/vk/api/sdk/VKOkHttpProvider$BuilderUpdateFunction;", "", "update", "Lokhttp3/OkHttpClient$Builder;", "builder", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.m$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/m$a.class */
    public interface AbstractC17703a {
        /* renamed from: a */
        OkHttpClient.Builder mo4805a(OkHttpClient.Builder builder);
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\n"}, m4298d2 = {"Lcom/vk/api/sdk/VKOkHttpProvider$DefaultProvider;", "Lcom/vk/api/sdk/VKOkHttpProvider;", "()V", "okHttpClient", "Lokhttp3/OkHttpClient;", "getClient", "updateClient", "", "f", "Lcom/vk/api/sdk/VKOkHttpProvider$BuilderUpdateFunction;", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.m$b */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/m$b.class */
    public static final class C17704b extends AbstractC17702m {

        /* renamed from: a */
        private volatile OkHttpClient f62542a;

        @Override // com.p488vk.api.sdk.AbstractC17702m
        /* renamed from: a */
        public final OkHttpClient mo4804a() {
            if (this.f62542a == null) {
                this.f62542a = new OkHttpClient.Builder().connectTimeout(20L, TimeUnit.SECONDS).readTimeout(30L, TimeUnit.SECONDS).writeTimeout(20L, TimeUnit.SECONDS).followRedirects(true).followSslRedirects(true).build();
            }
            OkHttpClient okHttpClient = this.f62542a;
            C18524p.m3851a(okHttpClient);
            return okHttpClient;
        }

        @Override // com.p488vk.api.sdk.AbstractC17702m
        /* renamed from: a */
        public final void mo4803a(AbstractC17703a f) {
            C18524p.m3840d(f, "f");
            this.f62542a = f.mo4805a(mo4804a().newBuilder()).build();
        }
    }

    /* renamed from: a */
    public abstract OkHttpClient mo4804a();

    /* renamed from: a */
    public abstract void mo4803a(AbstractC17703a abstractC17703a);
}
