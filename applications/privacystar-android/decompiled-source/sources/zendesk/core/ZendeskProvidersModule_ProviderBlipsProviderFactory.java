package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProviderBlipsProviderFactory.class */
public final class ZendeskProvidersModule_ProviderBlipsProviderFactory implements Factory<BlipsProvider> {
    private final Provider<ZendeskBlipsProvider> zendeskBlipsProvider;

    public ZendeskProvidersModule_ProviderBlipsProviderFactory(Provider<ZendeskBlipsProvider> provider) {
        this.zendeskBlipsProvider = provider;
    }

    public static Factory<BlipsProvider> create(Provider<ZendeskBlipsProvider> provider) {
        return new ZendeskProvidersModule_ProviderBlipsProviderFactory(provider);
    }

    public static BlipsProvider proxyProviderBlipsProvider(Object obj) {
        return ZendeskProvidersModule.providerBlipsProvider((ZendeskBlipsProvider) obj);
    }

    @Override // javax.inject.Provider
    public BlipsProvider get() {
        return (BlipsProvider) Preconditions.checkNotNull(ZendeskProvidersModule.providerBlipsProvider(this.zendeskBlipsProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
