package zendesk.support;

import android.support.annotation.VisibleForTesting;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ConversationsSettings.class */
class ConversationsSettings {
    private static ConversationsSettings DEFAULT = new ConversationsSettings(false);
    private boolean enabled;

    @VisibleForTesting
    ConversationsSettings() {
    }

    @VisibleForTesting
    ConversationsSettings(boolean z) {
        this.enabled = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ConversationsSettings defaultSettings() {
        return DEFAULT;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isEnabled() {
        return this.enabled;
    }
}
