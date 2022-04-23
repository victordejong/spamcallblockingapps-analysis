package zendesk.support;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ProviderModule_ProvideUploadProviderFactory.class */
public final class ProviderModule_ProvideUploadProviderFactory implements AbstractC10866b<UploadProvider> {
    public final ProviderModule module;
    public final Provider<ZendeskUploadService> uploadServiceProvider;

    public ProviderModule_ProvideUploadProviderFactory(ProviderModule providerModule, Provider<ZendeskUploadService> provider) {
        this.module = providerModule;
        this.uploadServiceProvider = provider;
    }

    public static ProviderModule_ProvideUploadProviderFactory create(ProviderModule providerModule, Provider<ZendeskUploadService> provider) {
        return new ProviderModule_ProvideUploadProviderFactory(providerModule, provider);
    }

    public static UploadProvider provideUploadProvider(ProviderModule providerModule, Object obj) {
        UploadProvider provideUploadProvider = providerModule.provideUploadProvider((ZendeskUploadService) obj);
        C10867c.m10383a(provideUploadProvider, "Cannot return null from a non-@Nullable @Provides method");
        return provideUploadProvider;
    }

    @Override // javax.inject.Provider
    public UploadProvider get() {
        return provideUploadProvider(this.module, this.uploadServiceProvider.get());
    }
}
