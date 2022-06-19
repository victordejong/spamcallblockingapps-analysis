package androidx.browser.trusted;

import android.app.NotificationChannel;
import android.app.NotificationManager;
/* renamed from: androidx.browser.trusted.a */
/* loaded from: classes-dex2jar.jar:androidx/browser/trusted/a.class */
final class C0466a {
    private C0466a() {
    }

    /* renamed from: a */
    public static boolean m45444a(NotificationManager notificationManager, String str) {
        NotificationChannel notificationChannel = notificationManager.getNotificationChannel(str);
        return notificationChannel == null || notificationChannel.getImportance() != 0;
    }
}
