package zendesk.support;

import android.support.annotation.VisibleForTesting;
/* loaded from: classes3-dex2jar.jar:zendesk/support/TicketFormSettings.class */
public class TicketFormSettings {
    private static TicketFormSettings DEFAULT = new TicketFormSettings(false);
    private boolean available;

    @VisibleForTesting
    TicketFormSettings(boolean z) {
        this.available = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static TicketFormSettings defaultSettings() {
        return DEFAULT;
    }

    public boolean isAvailable() {
        return this.available;
    }
}
