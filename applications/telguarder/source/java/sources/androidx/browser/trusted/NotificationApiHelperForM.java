package androidx.browser.trusted;

import android.app.NotificationManager;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/browser/trusted/NotificationApiHelperForM.class */
public class NotificationApiHelperForM {
    private NotificationApiHelperForM() {
    }

    public static Parcelable[] getActiveNotifications(NotificationManager notificationManager) {
        return notificationManager.getActiveNotifications();
    }
}
