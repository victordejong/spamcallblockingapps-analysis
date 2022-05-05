package zendesk.support;

import androidx.annotation.VisibleForTesting;
import zendesk.core.Settings;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportSettings.class */
public class SupportSettings implements Settings {
    public static SupportSettings DEFAULT = new SupportSettings(ConversationsSettings.defaultSettings(), ContactUsSettings.defaultSettings(), AttachmentSettings.defaultSettings(), TicketFormSettings.defaultSettings(), true, true, false, "", "");
    public final ContactUsSettings contactUs;

    @VisibleForTesting
    public SupportSettings(ConversationsSettings conversationsSettings, ContactUsSettings contactUsSettings, AttachmentSettings attachmentSettings, TicketFormSettings ticketFormSettings, boolean z, boolean z2, boolean z3, String str, String str2) {
        this.contactUs = contactUsSettings;
    }

    public static SupportSettings defaultSettings() {
        return DEFAULT;
    }

    public ContactUsSettings getContactUs() {
        return this.contactUs;
    }
}
