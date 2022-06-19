package androidx.work.impl.foreground;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.lifecycle.ServiceC0874k;
import androidx.work.AbstractC1293l;
import androidx.work.impl.foreground.C1236b;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/foreground/SystemForegroundService.class */
public class SystemForegroundService extends ServiceC0874k implements C1236b.AbstractC1238a {

    /* renamed from: c */
    private static final String f4152c = AbstractC1293l.m17541a("SystemFgService");

    /* renamed from: d */
    private static SystemForegroundService f4153d = null;

    /* renamed from: a */
    C1236b f4154a;

    /* renamed from: b */
    NotificationManager f4155b;

    /* renamed from: e */
    private Handler f4156e;

    /* renamed from: f */
    private boolean f4157f;

    /* renamed from: d */
    public static SystemForegroundService m17686d() {
        return f4153d;
    }

    /* renamed from: e */
    private void m17685e() {
        this.f4156e = new Handler(Looper.getMainLooper());
        this.f4155b = (NotificationManager) getApplicationContext().getSystemService("notification");
        this.f4154a = new C1236b(getApplicationContext());
        this.f4154a.m17681a(this);
    }

    @Override // androidx.work.impl.foreground.C1236b.AbstractC1238a
    /* renamed from: a */
    public void mo17675a() {
        this.f4157f = true;
        AbstractC1293l.m17543a().mo17539b(f4152c, "All commands completed.", new Throwable[0]);
        if (Build.VERSION.SDK_INT >= 26) {
            stopForeground(true);
        }
        f4153d = null;
        stopSelf();
    }

    @Override // androidx.work.impl.foreground.C1236b.AbstractC1238a
    /* renamed from: a */
    public void mo17674a(final int i) {
        this.f4156e.post(new Runnable() { // from class: androidx.work.impl.foreground.SystemForegroundService.4
            @Override // java.lang.Runnable
            public void run() {
                SystemForegroundService.this.f4155b.cancel(i);
            }
        });
    }

    @Override // androidx.work.impl.foreground.C1236b.AbstractC1238a
    /* renamed from: a */
    public void mo17673a(final int i, final int i2, final Notification notification) {
        this.f4156e.post(new Runnable() { // from class: androidx.work.impl.foreground.SystemForegroundService.2
            @Override // java.lang.Runnable
            public void run() {
                if (Build.VERSION.SDK_INT >= 29) {
                    SystemForegroundService.this.startForeground(i, notification, i2);
                } else {
                    SystemForegroundService.this.startForeground(i, notification);
                }
            }
        });
    }

    @Override // androidx.work.impl.foreground.C1236b.AbstractC1238a
    /* renamed from: a */
    public void mo17672a(final int i, final Notification notification) {
        this.f4156e.post(new Runnable() { // from class: androidx.work.impl.foreground.SystemForegroundService.3
            @Override // java.lang.Runnable
            public void run() {
                SystemForegroundService.this.f4155b.notify(i, notification);
            }
        });
    }

    /* renamed from: c */
    public void m17687c() {
        this.f4156e.post(new Runnable() { // from class: androidx.work.impl.foreground.SystemForegroundService.1
            @Override // java.lang.Runnable
            public void run() {
                SystemForegroundService.this.f4154a.m17679b();
            }
        });
    }

    @Override // androidx.lifecycle.ServiceC0874k, android.app.Service
    public void onCreate() {
        super.onCreate();
        f4153d = this;
        m17685e();
    }

    @Override // androidx.lifecycle.ServiceC0874k, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f4154a.m17683a();
    }

    @Override // androidx.lifecycle.ServiceC0874k, android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        if (this.f4157f) {
            AbstractC1293l.m17543a().mo17538c(f4152c, "Re-initializing SystemForegroundService after a request to shut-down.", new Throwable[0]);
            this.f4154a.m17683a();
            m17685e();
            this.f4157f = false;
        }
        if (intent != null) {
            this.f4154a.m17682a(intent);
            return 3;
        }
        return 3;
    }
}
