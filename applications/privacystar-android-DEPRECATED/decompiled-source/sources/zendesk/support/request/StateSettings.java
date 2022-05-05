package zendesk.support.request;

import java.io.Serializable;
import zendesk.support.SupportSdkSettings;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/StateSettings.class */
public class StateSettings implements Serializable {
    private final boolean attachmentsEnabled;
    private final boolean conversationsEnabled;
    private final boolean hasIdentityEmailAddress;
    private final boolean hasIdentityName;
    private final long maxAttachmentSize;
    private final boolean neverRequestEmail;
    private final String referrerUrl;
    private final boolean settingsLoaded;
    private final boolean showZendeskLogo;
    private final String systemMessage;

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateSettings() {
        this.settingsLoaded = false;
        this.conversationsEnabled = false;
        this.attachmentsEnabled = false;
        this.maxAttachmentSize = -1L;
        this.neverRequestEmail = true;
        this.hasIdentityEmailAddress = false;
        this.hasIdentityName = false;
        this.showZendeskLogo = true;
        this.referrerUrl = "";
        this.systemMessage = "";
    }

    StateSettings(boolean z, boolean z2, long j, boolean z3, boolean z4, boolean z5, boolean z6, String str, String str2) {
        this.settingsLoaded = true;
        this.conversationsEnabled = z;
        this.attachmentsEnabled = z2;
        this.maxAttachmentSize = j;
        this.neverRequestEmail = z3;
        this.hasIdentityEmailAddress = z4;
        this.hasIdentityName = z5;
        this.showZendeskLogo = z6;
        this.referrerUrl = str;
        this.systemMessage = str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StateSettings fromSupportSettings(SupportSdkSettings supportSdkSettings, boolean z, boolean z2) {
        return new StateSettings(supportSdkSettings.isConversationsEnabled(), supportSdkSettings.isAttachmentsEnabled(), supportSdkSettings.getMaxAttachmentSize(), supportSdkSettings.isNeverAskForEmailEnabled(), z, z2, supportSdkSettings.isShowReferrerLogoEnabled(), supportSdkSettings.getReferrerUrl(), supportSdkSettings.getRequestSystemMessage());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getMaxAttachmentSize() {
        return this.maxAttachmentSize;
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
    public boolean hasIdentityEmailAddress() {
        return this.hasIdentityEmailAddress;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasIdentityName() {
        return this.hasIdentityName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasSettings() {
        return this.settingsLoaded;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isAttachmentsEnabled() {
        return this.attachmentsEnabled;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isConversationsEnabled() {
        return this.conversationsEnabled;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isNeverRequestEmailOn() {
        return this.neverRequestEmail;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isShowZendeskLogo() {
        return this.showZendeskLogo;
    }

    public String toString() {
        return "Settings{settingsLoaded=" + this.settingsLoaded + ", conversationsEnabled=" + this.conversationsEnabled + ", attachmentsEnabled=" + this.attachmentsEnabled + ", maxAttachmentSize=" + this.maxAttachmentSize + ", neverRequestEmail=" + this.neverRequestEmail + ", hasIdentityEmailAddress=" + this.hasIdentityEmailAddress + ", hasIdentityName=" + this.hasIdentityName + ", referrerUrl=" + this.referrerUrl + ", systemMessage=" + this.systemMessage + '}';
    }
}
