package zendesk.support;

import androidx.annotation.Nullable;
import java.util.Locale;
import p081h.p451q.p453b.C10845a;
import p081h.p451q.p454c.AbstractC10851a;
import p081h.p451q.p454c.AbstractC10857e;
import zendesk.core.AuthenticationType;
import zendesk.core.SettingsPack;
import zendesk.core.SettingsProvider;
import zendesk.core.ZendeskLocaleConverter;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskSupportSettingsProvider.class */
public class ZendeskSupportSettingsProvider implements SupportSettingsProvider {
    public final Locale deviceLocale;
    public final ZendeskLocaleConverter localeConverter;
    public final SettingsProvider sdkSettingsProvider;

    /* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskSupportSettingsProvider$LoadHelpCenterSettings.class */
    public class LoadHelpCenterSettings extends AbstractC10857e<SettingsPack<HelpCenterSettings>> {
        public final AbstractC10857e<SupportSdkSettings> callback;
        public final SettingsPack<SupportSettings> supportSettingsPack;

        public LoadHelpCenterSettings(AbstractC10857e<SupportSdkSettings> eVar, SettingsPack<SupportSettings> settingsPack) {
            this.callback = eVar;
            this.supportSettingsPack = settingsPack;
        }

        @Override // p081h.p451q.p454c.AbstractC10857e
        public void onError(AbstractC10851a aVar) {
            if (this.callback != null) {
                C10845a.m10422a("ZendeskSettingsProvider", "Returning default Help Center Settings.", new Object[0]);
                this.callback.onSuccess(new SupportSdkSettings(this.supportSettingsPack.getSettings(), HelpCenterSettings.defaultSettings(), this.supportSettingsPack.getCoreSettings().getAuthentication()));
            }
        }

        public void onSuccess(SettingsPack<HelpCenterSettings> settingsPack) {
            HelpCenterSettings settings = settingsPack.getSettings();
            AuthenticationType authentication = settingsPack.getCoreSettings().getAuthentication();
            ZendeskSupportSettingsProvider.this.logIfLocaleNotAvailable(settings);
            C10845a.m10422a("ZendeskSettingsProvider", "Successfully retrieved Settings", new Object[0]);
            AbstractC10857e<SupportSdkSettings> eVar = this.callback;
            if (eVar != null) {
                eVar.onSuccess(new SupportSdkSettings(this.supportSettingsPack.getSettings(), settings, authentication));
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings.class */
    public class LoadSupportSettings extends AbstractC10857e<SettingsPack<SupportSettings>> {
        public final AbstractC10857e<SupportSdkSettings> callback;

        public LoadSupportSettings(AbstractC10857e<SupportSdkSettings> eVar) {
            this.callback = eVar;
        }

        @Override // p081h.p451q.p454c.AbstractC10857e
        public void onError(AbstractC10851a aVar) {
            if (this.callback != null) {
                C10845a.m10422a("ZendeskSettingsProvider", "Returning default Support Settings.", new Object[0]);
                this.callback.onSuccess(new SupportSdkSettings(SupportSettings.defaultSettings(), HelpCenterSettings.defaultSettings(), null));
            }
        }

        public void onSuccess(SettingsPack<SupportSettings> settingsPack) {
            ZendeskSupportSettingsProvider.this.sdkSettingsProvider.getSettingsForSdk("help_center", HelpCenterSettings.class, new LoadHelpCenterSettings(this.callback, settingsPack));
        }
    }

    public ZendeskSupportSettingsProvider(SettingsProvider settingsProvider, ZendeskLocaleConverter zendeskLocaleConverter, Locale locale) {
        this.sdkSettingsProvider = settingsProvider;
        this.localeConverter = zendeskLocaleConverter;
        this.deviceLocale = locale;
    }

    @Override // zendesk.support.SupportSettingsProvider
    public void getSettings(@Nullable AbstractC10857e<SupportSdkSettings> eVar) {
        this.sdkSettingsProvider.getSettingsForSdk("support", SupportSettings.class, new LoadSupportSettings(eVar));
    }

    public final void logIfLocaleNotAvailable(HelpCenterSettings helpCenterSettings) {
        if (helpCenterSettings != null && helpCenterSettings.getLocale() != null) {
            String locale = helpCenterSettings.getLocale();
            String helpCenterLocaleString = this.localeConverter.toHelpCenterLocaleString(this.deviceLocale);
            if (!helpCenterLocaleString.equals(locale)) {
                C10845a.m10417d("ZendeskSettingsProvider", "No support for %s, Help Center is %s in your application settings", helpCenterLocaleString, Boolean.valueOf(helpCenterSettings.isEnabled()));
            }
        }
    }
}
