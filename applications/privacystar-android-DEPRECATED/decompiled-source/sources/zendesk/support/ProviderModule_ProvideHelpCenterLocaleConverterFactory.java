package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ProviderModule_ProvideHelpCenterLocaleConverterFactory.class */
public final class ProviderModule_ProvideHelpCenterLocaleConverterFactory implements Factory<HelpCenterLocaleConverter> {
    private final ProviderModule module;

    public ProviderModule_ProvideHelpCenterLocaleConverterFactory(ProviderModule providerModule) {
        this.module = providerModule;
    }

    public static Factory<HelpCenterLocaleConverter> create(ProviderModule providerModule) {
        return new ProviderModule_ProvideHelpCenterLocaleConverterFactory(providerModule);
    }

    public static HelpCenterLocaleConverter proxyProvideHelpCenterLocaleConverter(ProviderModule providerModule) {
        return providerModule.provideHelpCenterLocaleConverter();
    }

    @Override // javax.inject.Provider
    public HelpCenterLocaleConverter get() {
        return (HelpCenterLocaleConverter) Preconditions.checkNotNull(this.module.provideHelpCenterLocaleConverter(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
