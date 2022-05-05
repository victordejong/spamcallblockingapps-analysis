package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import okhttp3.OkHttpClient;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportModule_ProvidesOkHttpClientFactory.class */
public final class SupportModule_ProvidesOkHttpClientFactory implements Factory<OkHttpClient> {
    private final SupportModule module;

    public SupportModule_ProvidesOkHttpClientFactory(SupportModule supportModule) {
        this.module = supportModule;
    }

    public static Factory<OkHttpClient> create(SupportModule supportModule) {
        return new SupportModule_ProvidesOkHttpClientFactory(supportModule);
    }

    public static OkHttpClient proxyProvidesOkHttpClient(SupportModule supportModule) {
        return supportModule.providesOkHttpClient();
    }

    @Override // javax.inject.Provider
    public OkHttpClient get() {
        return (OkHttpClient) Preconditions.checkNotNull(this.module.providesOkHttpClient(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
