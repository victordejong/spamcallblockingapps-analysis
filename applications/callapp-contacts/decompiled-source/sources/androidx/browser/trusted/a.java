package androidx.browser.trusted;

import android.app.NotificationChannel;
import android.app.NotificationManager;
/* loaded from: classes-dex2jar.jar:androidx/browser/trusted/a.class */
final class a {
    private a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(NotificationManager notificationManager, String str) {
        NotificationChannel notificationChannel = notificationManager.getNotificationChannel(str);
        return notificationChannel == null || notificationChannel.getImportance() != 0;
    }
}
