package androidx.core.app;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.os.IBinder;
import android.support.p003v4.app.AbstractC0008a;
/* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompatSideChannelService.class */
public abstract class NotificationCompatSideChannelService extends Service {

    /* renamed from: androidx.core.app.NotificationCompatSideChannelService$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompatSideChannelService$a.class */
    private class BinderC0547a extends AbstractC0008a.AbstractBinderC0009a {
        BinderC0547a() {
            NotificationCompatSideChannelService.this = r4;
        }

        @Override // android.support.p003v4.app.AbstractC0008a
        /* renamed from: P3 */
        public void mo33481P3(String str, int i, String str2) {
            NotificationCompatSideChannelService.this.m33483c(Binder.getCallingUid(), str);
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                NotificationCompatSideChannelService.this.m33485a(str, i, str2);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        @Override // android.support.p003v4.app.AbstractC0008a
        /* renamed from: W1 */
        public void mo33480W1(String str) {
            NotificationCompatSideChannelService.this.m33483c(Binder.getCallingUid(), str);
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                NotificationCompatSideChannelService.this.m33484b(str);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        @Override // android.support.p003v4.app.AbstractC0008a
        /* renamed from: d6 */
        public void mo33479d6(String str, int i, String str2, Notification notification) {
            NotificationCompatSideChannelService.this.m33483c(Binder.getCallingUid(), str);
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                NotificationCompatSideChannelService.this.m33482d(str, i, str2, notification);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    /* renamed from: a */
    public abstract void m33485a(String str, int i, String str2);

    /* renamed from: b */
    public abstract void m33484b(String str);

    /* renamed from: c */
    void m33483c(int i, String str) {
        for (String str2 : getPackageManager().getPackagesForUid(i)) {
            if (str2.equals(str)) {
                return;
            }
        }
        throw new SecurityException("NotificationSideChannelService: Uid " + i + " is not authorized for package " + str);
    }

    /* renamed from: d */
    public abstract void m33482d(String str, int i, String str2, Notification notification);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (!intent.getAction().equals("android.support.BIND_NOTIFICATION_SIDE_CHANNEL") || Build.VERSION.SDK_INT > 19) {
            return null;
        }
        return new BinderC0547a();
    }
}
