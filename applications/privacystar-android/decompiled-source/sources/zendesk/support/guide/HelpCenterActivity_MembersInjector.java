package zendesk.support.guide;

import dagger.MembersInjector;
import javax.inject.Provider;
import zendesk.core.NetworkInfoProvider;
import zendesk.support.HelpCenterProvider;
import zendesk.support.SupportSettingsProvider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpCenterActivity_MembersInjector.class */
public final class HelpCenterActivity_MembersInjector implements MembersInjector<HelpCenterActivity> {
    private final Provider<HelpCenterProvider> helpCenterProvider;
    private final Provider<NetworkInfoProvider> networkInfoProvider;
    private final Provider<SupportSettingsProvider> settingsProvider;

    public HelpCenterActivity_MembersInjector(Provider<HelpCenterProvider> provider, Provider<SupportSettingsProvider> provider2, Provider<NetworkInfoProvider> provider3) {
        this.helpCenterProvider = provider;
        this.settingsProvider = provider2;
        this.networkInfoProvider = provider3;
    }

    public static MembersInjector<HelpCenterActivity> create(Provider<HelpCenterProvider> provider, Provider<SupportSettingsProvider> provider2, Provider<NetworkInfoProvider> provider3) {
        return new HelpCenterActivity_MembersInjector(provider, provider2, provider3);
    }

    public static void injectHelpCenterProvider(HelpCenterActivity helpCenterActivity, HelpCenterProvider helpCenterProvider) {
        helpCenterActivity.helpCenterProvider = helpCenterProvider;
    }

    public static void injectNetworkInfoProvider(HelpCenterActivity helpCenterActivity, NetworkInfoProvider networkInfoProvider) {
        helpCenterActivity.networkInfoProvider = networkInfoProvider;
    }

    public static void injectSettingsProvider(HelpCenterActivity helpCenterActivity, SupportSettingsProvider supportSettingsProvider) {
        helpCenterActivity.settingsProvider = supportSettingsProvider;
    }

    public void injectMembers(HelpCenterActivity helpCenterActivity) {
        injectHelpCenterProvider(helpCenterActivity, this.helpCenterProvider.get());
        injectSettingsProvider(helpCenterActivity, this.settingsProvider.get());
        injectNetworkInfoProvider(helpCenterActivity, this.networkInfoProvider.get());
    }
}
