package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ProviderModule_ProvideProviderStoreFactory.class */
public final class ProviderModule_ProvideProviderStoreFactory implements Factory<ProviderStore> {
    private final Provider<HelpCenterProvider> helpCenterProvider;
    private final ProviderModule module;
    private final Provider<RequestProvider> requestProvider;
    private final Provider<UploadProvider> uploadProvider;

    public ProviderModule_ProvideProviderStoreFactory(ProviderModule providerModule, Provider<HelpCenterProvider> provider, Provider<RequestProvider> provider2, Provider<UploadProvider> provider3) {
        this.module = providerModule;
        this.helpCenterProvider = provider;
        this.requestProvider = provider2;
        this.uploadProvider = provider3;
    }

    public static Factory<ProviderStore> create(ProviderModule providerModule, Provider<HelpCenterProvider> provider, Provider<RequestProvider> provider2, Provider<UploadProvider> provider3) {
        return new ProviderModule_ProvideProviderStoreFactory(providerModule, provider, provider2, provider3);
    }

    public static ProviderStore proxyProvideProviderStore(ProviderModule providerModule, HelpCenterProvider helpCenterProvider, RequestProvider requestProvider, UploadProvider uploadProvider) {
        return providerModule.provideProviderStore(helpCenterProvider, requestProvider, uploadProvider);
    }

    @Override // javax.inject.Provider
    public ProviderStore get() {
        return (ProviderStore) Preconditions.checkNotNull(this.module.provideProviderStore(this.helpCenterProvider.get(), this.requestProvider.get(), this.uploadProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
