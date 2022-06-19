package androidx.core.app;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
/* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompatSideChannelService.class */
public abstract class NotificationCompatSideChannelService extends Service {
    /* renamed from: a */
    public abstract void m6793a(String str, int i, String str2);

    /* renamed from: b */
    public abstract void m6792b(String str);

    /* renamed from: c */
    public void m6791c(int i, String str) {
        for (String str2 : getPackageManager().getPackagesForUid(i)) {
            if (str2.equals(str)) {
                return;
            }
        }
        throw new SecurityException("NotificationSideChannelService: Uid " + i + " is not authorized for package " + str);
    }

    /* renamed from: d */
    public abstract void m6790d(String str, int i, String str2, Notification notification);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (!intent.getAction().equals("android.support.BIND_NOTIFICATION_SIDE_CHANNEL") || Build.VERSION.SDK_INT > 19) {
            return null;
        }
        return new a(this);
    }
}
