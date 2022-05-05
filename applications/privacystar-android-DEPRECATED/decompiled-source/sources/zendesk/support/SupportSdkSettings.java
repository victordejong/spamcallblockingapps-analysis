package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.util.CollectionUtils;
import com.zendesk.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
import zendesk.core.AuthenticationType;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportSdkSettings.class */
public class SupportSdkSettings {
    private final AuthenticationType authenticationType;
    private final HelpCenterSettings helpCenterSettings;
    private final SupportSettings mobileSettings;

    public SupportSdkSettings(SupportSettings supportSettings, HelpCenterSettings helpCenterSettings, AuthenticationType authenticationType) {
        this.mobileSettings = supportSettings;
        this.helpCenterSettings = helpCenterSettings;
        this.authenticationType = authenticationType;
    }

    @Nullable
    private AttachmentSettings getAttachmentSettings() {
        return this.mobileSettings != null && this.mobileSettings.getAttachments() != null ? this.mobileSettings.getAttachments() : null;
    }

    @Nullable
    private ConversationsSettings getConversationsSettings() {
        return this.mobileSettings != null && this.mobileSettings.getConversations() != null ? this.mobileSettings.getConversations() : null;
    }

    public AuthenticationType getAuthenticationType() {
        return this.authenticationType;
    }

    @NonNull
    public List<String> getContactZendeskTags() {
        return this.mobileSettings != null && this.mobileSettings.getContactUs() != null && CollectionUtils.isNotEmpty(this.mobileSettings.getContactUs().getTags()) ? this.mobileSettings.getContactUs().getTags() : new ArrayList<>();
    }

    @NonNull
    public String getHelpCenterLocale() {
        return this.helpCenterSettings != null && this.helpCenterSettings.getLocale() != null ? this.helpCenterSettings.getLocale() : "";
    }

    public long getMaxAttachmentSize() {
        AttachmentSettings attachmentSettings = getAttachmentSettings();
        return attachmentSettings != null ? attachmentSettings.getMaxAttachmentSize() : 0L;
    }

    public String getReferrerUrl() {
        return (this.mobileSettings == null || !StringUtils.hasLength(this.mobileSettings.getReferrerUrl())) ? "https://www.zendesk.com/embeddables" : this.mobileSettings.getReferrerUrl();
    }

    public String getRequestSystemMessage() {
        return (this.mobileSettings == null || !StringUtils.hasLength(this.mobileSettings.getSystemMessage())) ? "" : this.mobileSettings.getSystemMessage();
    }

    public boolean hasHelpCenterSettings() {
        return this.helpCenterSettings != null;
    }

    public boolean isAttachmentsEnabled() {
        AttachmentSettings attachmentSettings = getAttachmentSettings();
        return attachmentSettings != null && attachmentSettings.isEnabled();
    }

    public boolean isConversationsEnabled() {
        ConversationsSettings conversationsSettings = getConversationsSettings();
        return conversationsSettings != null && conversationsSettings.isEnabled();
    }

    public boolean isHelpCenterArticleVotingEnabled() {
        return hasHelpCenterSettings() && this.helpCenterSettings.isArticleVotingEnabled();
    }

    public boolean isHelpCenterEnabled() {
        return this.helpCenterSettings != null && this.helpCenterSettings.isEnabled();
    }

    public boolean isNeverAskForEmailEnabled() {
        return this.mobileSettings == null || this.mobileSettings.isNeverRequestEmailOn();
    }

    public boolean isShowClosedRequests() {
        return this.mobileSettings == null || this.mobileSettings.isShowClosedRequests();
    }

    public boolean isShowReferrerLogoEnabled() {
        return this.mobileSettings != null && this.mobileSettings.isShowReferrerLogo();
    }

    public boolean isTicketFormSupportAvailable() {
        boolean z = false;
        if ((this.mobileSettings == null || this.mobileSettings.getTicketForms() == null) ? false : true) {
            z = false;
            if (this.mobileSettings.getTicketForms().isAvailable()) {
                z = true;
            }
        }
        return z;
    }
}
