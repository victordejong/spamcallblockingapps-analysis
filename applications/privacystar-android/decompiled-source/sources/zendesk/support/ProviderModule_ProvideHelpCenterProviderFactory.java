package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ProviderModule_ProvideHelpCenterProviderFactory.class */
public final class ProviderModule_ProvideHelpCenterProviderFactory implements Factory<HelpCenterProvider> {
    private final Provider<ZendeskHelpCenterService> helpCenterServiceProvider;
    private final Provider<HelpCenterSessionCache> helpCenterSessionCacheProvider;
    private final ProviderModule module;
    private final Provider<SupportSettingsProvider> settingsProvider;
    private final Provider<SupportBlipsProvider> supportBlipsProvider;
    private final Provider<ZendeskTracker> zendeskTrackerProvider;

    public ProviderModule_ProvideHelpCenterProviderFactory(ProviderModule providerModule, Provider<SupportSettingsProvider> provider, Provider<SupportBlipsProvider> provider2, Provider<ZendeskHelpCenterService> provider3, Provider<HelpCenterSessionCache> provider4, Provider<ZendeskTracker> provider5) {
        this.module = providerModule;
        this.settingsProvider = provider;
        this.supportBlipsProvider = provider2;
        this.helpCenterServiceProvider = provider3;
        this.helpCenterSessionCacheProvider = provider4;
        this.zendeskTrackerProvider = provider5;
    }

    public static Factory<HelpCenterProvider> create(ProviderModule providerModule, Provider<SupportSettingsProvider> provider, Provider<SupportBlipsProvider> provider2, Provider<ZendeskHelpCenterService> provider3, Provider<HelpCenterSessionCache> provider4, Provider<ZendeskTracker> provider5) {
        return new ProviderModule_ProvideHelpCenterProviderFactory(providerModule, provider, provider2, provider3, provider4, provider5);
    }

    public static HelpCenterProvider proxyProvideHelpCenterProvider(ProviderModule providerModule, SupportSettingsProvider supportSettingsProvider, SupportBlipsProvider supportBlipsProvider, Object obj, Object obj2, Object obj3) {
        return providerModule.provideHelpCenterProvider(supportSettingsProvider, supportBlipsProvider, (ZendeskHelpCenterService) obj, (HelpCenterSessionCache) obj2, (ZendeskTracker) obj3);
    }

    @Override // javax.inject.Provider
    public HelpCenterProvider get() {
        return (HelpCenterProvider) Preconditions.checkNotNull(this.module.provideHelpCenterProvider(this.settingsProvider.get(), this.supportBlipsProvider.get(), this.helpCenterServiceProvider.get(), this.helpCenterSessionCacheProvider.get(), this.zendeskTrackerProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
