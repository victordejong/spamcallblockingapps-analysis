package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProviderBlipsCoreProviderFactory.class */
public final class ZendeskProvidersModule_ProviderBlipsCoreProviderFactory implements Factory<BlipsCoreProvider> {
    private final Provider<ZendeskBlipsProvider> zendeskBlipsProvider;

    public ZendeskProvidersModule_ProviderBlipsCoreProviderFactory(Provider<ZendeskBlipsProvider> provider) {
        this.zendeskBlipsProvider = provider;
    }

    public static Factory<BlipsCoreProvider> create(Provider<ZendeskBlipsProvider> provider) {
        return new ZendeskProvidersModule_ProviderBlipsCoreProviderFactory(provider);
    }

    public static BlipsCoreProvider proxyProviderBlipsCoreProvider(Object obj) {
        return ZendeskProvidersModule.providerBlipsCoreProvider((ZendeskBlipsProvider) obj);
    }

    @Override // javax.inject.Provider
    public BlipsCoreProvider get() {
        return (BlipsCoreProvider) Preconditions.checkNotNull(ZendeskProvidersModule.providerBlipsCoreProvider(this.zendeskBlipsProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
