package zendesk.support;

import androidx.annotation.VisibleForTesting;
/* loaded from: classes3-dex2jar.jar:zendesk/support/AttachmentSettings.class */
public class AttachmentSettings {
    public static AttachmentSettings DEFAULT = new AttachmentSettings(false, 0);

    @VisibleForTesting
    public AttachmentSettings(boolean z, long j) {
    }

    public static AttachmentSettings defaultSettings() {
        return DEFAULT;
    }
}
