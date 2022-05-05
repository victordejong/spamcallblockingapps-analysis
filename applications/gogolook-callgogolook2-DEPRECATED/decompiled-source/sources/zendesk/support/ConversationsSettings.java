package zendesk.support;

import androidx.annotation.VisibleForTesting;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ConversationsSettings.class */
public class ConversationsSettings {
    public static ConversationsSettings DEFAULT = new ConversationsSettings(false);

    @VisibleForTesting
    public ConversationsSettings(boolean z) {
    }

    public static ConversationsSettings defaultSettings() {
        return DEFAULT;
    }
}
