package zendesk.support;

import java.util.Locale;
import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
import zendesk.core.BlipsProvider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory.class */
public final class ProviderModule_ProvideSupportBlipsProviderFactory implements AbstractC10866b<SupportBlipsProvider> {
    public final Provider<BlipsProvider> blipsProvider;
    public final Provider<Locale> localeProvider;
    public final ProviderModule module;

    public ProviderModule_ProvideSupportBlipsProviderFactory(ProviderModule providerModule, Provider<BlipsProvider> provider, Provider<Locale> provider2) {
        this.module = providerModule;
        this.blipsProvider = provider;
        this.localeProvider = provider2;
    }

    public static ProviderModule_ProvideSupportBlipsProviderFactory create(ProviderModule providerModule, Provider<BlipsProvider> provider, Provider<Locale> provider2) {
        return new ProviderModule_ProvideSupportBlipsProviderFactory(providerModule, provider, provider2);
    }

    public static SupportBlipsProvider provideSupportBlipsProvider(ProviderModule providerModule, BlipsProvider blipsProvider, Locale locale) {
        SupportBlipsProvider provideSupportBlipsProvider = providerModule.provideSupportBlipsProvider(blipsProvider, locale);
        C10867c.m10383a(provideSupportBlipsProvider, "Cannot return null from a non-@Nullable @Provides method");
        return provideSupportBlipsProvider;
    }

    @Override // javax.inject.Provider
    public SupportBlipsProvider get() {
        return provideSupportBlipsProvider(this.module, this.blipsProvider.get(), this.localeProvider.get());
    }
}
