package com.vk.api.sdk;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import okhttp3.OkHttpClient;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018��2\u00020\u0001:\u0002\t\nB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H&J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\u000b"}, d2 = {"Lcom/vk/api/sdk/VKOkHttpProvider;", "", "()V", "getClient", "Lokhttp3/OkHttpClient;", "updateClient", "", "f", "Lcom/vk/api/sdk/VKOkHttpProvider$BuilderUpdateFunction;", "BuilderUpdateFunction", "DefaultProvider", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/m.class */
public abstract class m {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005"}, d2 = {"Lcom/vk/api/sdk/VKOkHttpProvider$BuilderUpdateFunction;", "", "update", "Lokhttp3/OkHttpClient$Builder;", "builder", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/m$a.class */
    public interface a {
        OkHttpClient.Builder a(OkHttpClient.Builder builder);
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\n"}, d2 = {"Lcom/vk/api/sdk/VKOkHttpProvider$DefaultProvider;", "Lcom/vk/api/sdk/VKOkHttpProvider;", "()V", "okHttpClient", "Lokhttp3/OkHttpClient;", "getClient", "updateClient", "", "f", "Lcom/vk/api/sdk/VKOkHttpProvider$BuilderUpdateFunction;", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/m$b.class */
    public static final class b extends m {

        /* renamed from: a  reason: collision with root package name */
        private volatile OkHttpClient f36105a;

        @Override // com.vk.api.sdk.m
        public final OkHttpClient a() {
            if (this.f36105a == null) {
                this.f36105a = new OkHttpClient.Builder().connectTimeout(20L, TimeUnit.SECONDS).readTimeout(30L, TimeUnit.SECONDS).writeTimeout(20L, TimeUnit.SECONDS).followRedirects(true).followSslRedirects(true).build();
            }
            OkHttpClient okHttpClient = this.f36105a;
            p.a(okHttpClient);
            return okHttpClient;
        }

        @Override // com.vk.api.sdk.m
        public final void a(a f) {
            p.d(f, "f");
            this.f36105a = f.a(a().newBuilder()).build();
        }
    }

    public abstract OkHttpClient a();

    public abstract void a(a aVar);
}
