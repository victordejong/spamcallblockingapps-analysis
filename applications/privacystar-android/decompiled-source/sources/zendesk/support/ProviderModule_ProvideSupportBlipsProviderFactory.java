package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.Locale;
import javax.inject.Provider;
import zendesk.core.BlipsProvider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory.class */
public final class ProviderModule_ProvideSupportBlipsProviderFactory implements Factory<SupportBlipsProvider> {
    private final Provider<BlipsProvider> blipsProvider;
    private final Provider<Locale> localeProvider;
    private final ProviderModule module;

    public ProviderModule_ProvideSupportBlipsProviderFactory(ProviderModule providerModule, Provider<BlipsProvider> provider, Provider<Locale> provider2) {
        this.module = providerModule;
        this.blipsProvider = provider;
        this.localeProvider = provider2;
    }

    public static Factory<SupportBlipsProvider> create(ProviderModule providerModule, Provider<BlipsProvider> provider, Provider<Locale> provider2) {
        return new ProviderModule_ProvideSupportBlipsProviderFactory(providerModule, provider, provider2);
    }

    public static SupportBlipsProvider proxyProvideSupportBlipsProvider(ProviderModule providerModule, BlipsProvider blipsProvider, Locale locale) {
        return providerModule.provideSupportBlipsProvider(blipsProvider, locale);
    }

    @Override // javax.inject.Provider
    public SupportBlipsProvider get() {
        return (SupportBlipsProvider) Preconditions.checkNotNull(this.module.provideSupportBlipsProvider(this.blipsProvider.get(), this.localeProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
