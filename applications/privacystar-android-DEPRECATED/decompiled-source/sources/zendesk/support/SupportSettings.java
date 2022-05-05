package zendesk.support;

import android.support.annotation.VisibleForTesting;
import zendesk.core.Settings;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportSettings.class */
public class SupportSettings implements Settings {
    private static SupportSettings DEFAULT = new SupportSettings(ConversationsSettings.defaultSettings(), ContactUsSettings.defaultSettings(), AttachmentSettings.defaultSettings(), TicketFormSettings.defaultSettings(), true, true, false, "", "");
    private final AttachmentSettings attachments;
    private final ContactUsSettings contactUs;
    private final ConversationsSettings conversations;
    private final boolean neverRequestEmail;
    private final String referrerUrl;
    private final boolean showClosedRequests;
    private final boolean showReferrerLogo;
    private final String systemMessage;
    private final TicketFormSettings ticketForms;

    @VisibleForTesting
    SupportSettings(ConversationsSettings conversationsSettings, ContactUsSettings contactUsSettings, AttachmentSettings attachmentSettings, TicketFormSettings ticketFormSettings, boolean z, boolean z2, boolean z3, String str, String str2) {
        this.conversations = conversationsSettings;
        this.contactUs = contactUsSettings;
        this.attachments = attachmentSettings;
        this.ticketForms = ticketFormSettings;
        this.neverRequestEmail = z;
        this.showClosedRequests = z2;
        this.showReferrerLogo = z3;
        this.referrerUrl = str;
        this.systemMessage = str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SupportSettings defaultSettings() {
        return DEFAULT;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AttachmentSettings getAttachments() {
        return this.attachments;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ContactUsSettings getContactUs() {
        return this.contactUs;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConversationsSettings getConversations() {
        return this.conversations;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getReferrerUrl() {
        return this.referrerUrl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getSystemMessage() {
        return this.systemMessage;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TicketFormSettings getTicketForms() {
        return this.ticketForms;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isNeverRequestEmailOn() {
        return this.neverRequestEmail;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isShowClosedRequests() {
        return this.showClosedRequests;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isShowReferrerLogo() {
        return this.showReferrerLogo;
    }
}
