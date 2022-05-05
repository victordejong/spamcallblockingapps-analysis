package zendesk.core;

import androidx.annotation.VisibleForTesting;
import okhttp3.OkHttpClient;
import p655o.C15300s;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskRestServiceProvider.class */
public class ZendeskRestServiceProvider implements RestServiceProvider {
    public final OkHttpClient mediaHttpClient;
    @VisibleForTesting
    public final C15300s retrofit;
    @VisibleForTesting
    public final OkHttpClient standardOkHttpClient;

    public ZendeskRestServiceProvider(C15300s sVar, OkHttpClient okHttpClient, OkHttpClient okHttpClient2, OkHttpClient okHttpClient3) {
        this.retrofit = sVar;
        this.mediaHttpClient = okHttpClient;
        this.standardOkHttpClient = okHttpClient2;
    }

    @Override // zendesk.core.RestServiceProvider
    public <E> E createRestService(Class<E> cls, String str, String str2) {
        C15300s.C15302b a = this.retrofit.m88a();
        OkHttpClient.Builder newBuilder = this.standardOkHttpClient.newBuilder();
        newBuilder.addInterceptor(new UserAgentAndClientHeadersInterceptor(str, str2));
        a.m72a(newBuilder.build());
        return (E) a.m77a().m87a(cls);
    }

    @Override // zendesk.core.RestServiceProvider
    public <E> E createRestService(Class<E> cls, String str, String str2, CustomNetworkConfig customNetworkConfig) {
        OkHttpClient.Builder newBuilder = this.standardOkHttpClient.newBuilder();
        customNetworkConfig.configureOkHttpClient(newBuilder);
        newBuilder.addInterceptor(new UserAgentAndClientHeadersInterceptor(str, str2));
        C15300s.C15302b a = this.retrofit.m88a();
        customNetworkConfig.configureRetrofit(a);
        a.m72a(newBuilder.build());
        return (E) a.m77a().m87a(cls);
    }

    @Override // zendesk.core.RestServiceProvider
    public OkHttpClient getMediaOkHttpClient() {
        return this.mediaHttpClient;
    }
}
