package zendesk.support;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import p081h.p451q.p455d.C10858a;
import zendesk.core.AuthenticationType;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportSdkSettings.class */
public class SupportSdkSettings {
    public final AuthenticationType authenticationType;
    public final SupportSettings mobileSettings;

    public SupportSdkSettings(SupportSettings supportSettings, HelpCenterSettings helpCenterSettings, AuthenticationType authenticationType) {
        this.mobileSettings = supportSettings;
        this.authenticationType = authenticationType;
    }

    public AuthenticationType getAuthenticationType() {
        return this.authenticationType;
    }

    @NonNull
    public List<String> getContactZendeskTags() {
        SupportSettings supportSettings = this.mobileSettings;
        return supportSettings != null && supportSettings.getContactUs() != null && C10858a.m10400b((Collection) this.mobileSettings.getContactUs().getTags()) ? this.mobileSettings.getContactUs().getTags() : new ArrayList<>();
    }
}
