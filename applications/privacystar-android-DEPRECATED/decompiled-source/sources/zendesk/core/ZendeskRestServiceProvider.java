package zendesk.core;

import okhttp3.OkHttpClient;
import retrofit2.Retrofit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskRestServiceProvider.class */
public class ZendeskRestServiceProvider implements RestServiceProvider {
    private final OkHttpClient mediaHttpClient;
    private final Retrofit retrofit;
    private final OkHttpClient standardOkHttpClient;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskRestServiceProvider(Retrofit retrofit, OkHttpClient okHttpClient, OkHttpClient okHttpClient2) {
        this.retrofit = retrofit;
        this.mediaHttpClient = okHttpClient;
        this.standardOkHttpClient = okHttpClient2;
    }

    @Override // zendesk.core.RestServiceProvider
    public <E> E createRestService(Class<E> cls, String str, String str2) {
        return (E) this.retrofit.newBuilder().client(this.standardOkHttpClient.newBuilder().addInterceptor(new UserAgentAndClientHeadersInterceptor(str, str2)).build()).build().create(cls);
    }

    @Override // zendesk.core.RestServiceProvider
    public <E> E createRestService(Class<E> cls, String str, String str2, CustomNetworkConfig customNetworkConfig) {
        OkHttpClient.Builder newBuilder = this.standardOkHttpClient.newBuilder();
        customNetworkConfig.configureOkHttpClient(newBuilder);
        newBuilder.addInterceptor(new UserAgentAndClientHeadersInterceptor(str, str2));
        Retrofit.Builder newBuilder2 = this.retrofit.newBuilder();
        customNetworkConfig.configureRetrofit(newBuilder2);
        return (E) newBuilder2.client(newBuilder.build()).build().create(cls);
    }

    @Override // zendesk.core.RestServiceProvider
    public OkHttpClient getMediaOkHttpClient() {
        return this.mediaHttpClient;
    }
}
