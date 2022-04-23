package zendesk.support;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ProviderModule_ProvideProviderStoreFactory.class */
public final class ProviderModule_ProvideProviderStoreFactory implements AbstractC10866b<ProviderStore> {
    public final Provider<HelpCenterProvider> helpCenterProvider;
    public final ProviderModule module;
    public final Provider<RequestProvider> requestProvider;
    public final Provider<UploadProvider> uploadProvider;

    public ProviderModule_ProvideProviderStoreFactory(ProviderModule providerModule, Provider<HelpCenterProvider> provider, Provider<RequestProvider> provider2, Provider<UploadProvider> provider3) {
        this.module = providerModule;
        this.helpCenterProvider = provider;
        this.requestProvider = provider2;
        this.uploadProvider = provider3;
    }

    public static ProviderModule_ProvideProviderStoreFactory create(ProviderModule providerModule, Provider<HelpCenterProvider> provider, Provider<RequestProvider> provider2, Provider<UploadProvider> provider3) {
        return new ProviderModule_ProvideProviderStoreFactory(providerModule, provider, provider2, provider3);
    }

    public static ProviderStore provideProviderStore(ProviderModule providerModule, HelpCenterProvider helpCenterProvider, RequestProvider requestProvider, UploadProvider uploadProvider) {
        ProviderStore provideProviderStore = providerModule.provideProviderStore(helpCenterProvider, requestProvider, uploadProvider);
        C10867c.m10383a(provideProviderStore, "Cannot return null from a non-@Nullable @Provides method");
        return provideProviderStore;
    }

    @Override // javax.inject.Provider
    public ProviderStore get() {
        return provideProviderStore(this.module, this.helpCenterProvider.get(), this.requestProvider.get(), this.uploadProvider.get());
    }
}
