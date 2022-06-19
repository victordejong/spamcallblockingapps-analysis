package androidx.work.impl.foreground;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.lifecycle.LifecycleService;
import androidx.work.AbstractC1404j;
import androidx.work.impl.foreground.C1274b;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/foreground/SystemForegroundService.class */
public class SystemForegroundService extends LifecycleService implements C1274b.AbstractC1276b {

    /* renamed from: e */
    private static final String f5393e = AbstractC1404j.m30159f("SystemFgService");

    /* renamed from: f */
    private static SystemForegroundService f5394f = null;

    /* renamed from: g */
    private Handler f5395g;

    /* renamed from: h */
    private boolean f5396h;

    /* renamed from: i */
    C1274b f5397i;

    /* renamed from: j */
    NotificationManager f5398j;

    /* renamed from: androidx.work.impl.foreground.SystemForegroundService$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/foreground/SystemForegroundService$a.class */
    class RunnableC1270a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ int f5399d;

        /* renamed from: e */
        final /* synthetic */ Notification f5400e;

        /* renamed from: f */
        final /* synthetic */ int f5401f;

        RunnableC1270a(int i, Notification notification, int i2) {
            SystemForegroundService.this = r4;
            this.f5399d = i;
            this.f5400e = notification;
            this.f5401f = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Build.VERSION.SDK_INT >= 29) {
                SystemForegroundService.this.startForeground(this.f5399d, this.f5400e, this.f5401f);
            } else {
                SystemForegroundService.this.startForeground(this.f5399d, this.f5400e);
            }
        }
    }

    /* renamed from: androidx.work.impl.foreground.SystemForegroundService$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/foreground/SystemForegroundService$b.class */
    class RunnableC1271b implements Runnable {

        /* renamed from: d */
        final /* synthetic */ int f5403d;

        /* renamed from: e */
        final /* synthetic */ Notification f5404e;

        RunnableC1271b(int i, Notification notification) {
            SystemForegroundService.this = r4;
            this.f5403d = i;
            this.f5404e = notification;
        }

        @Override // java.lang.Runnable
        public void run() {
            SystemForegroundService.this.f5398j.notify(this.f5403d, this.f5404e);
        }
    }

    /* renamed from: androidx.work.impl.foreground.SystemForegroundService$c */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/foreground/SystemForegroundService$c.class */
    class RunnableC1272c implements Runnable {

        /* renamed from: d */
        final /* synthetic */ int f5406d;

        RunnableC1272c(int i) {
            SystemForegroundService.this = r4;
            this.f5406d = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            SystemForegroundService.this.f5398j.cancel(this.f5406d);
        }
    }

    /* renamed from: g */
    private void m30433g() {
        this.f5395g = new Handler(Looper.getMainLooper());
        this.f5398j = (NotificationManager) getApplicationContext().getSystemService("notification");
        C1274b c1274b = new C1274b(getApplicationContext());
        this.f5397i = c1274b;
        c1274b.m30421m(this);
    }

    @Override // androidx.work.impl.foreground.C1274b.AbstractC1276b
    /* renamed from: d */
    public void mo30420d(int i, int i2, Notification notification) {
        this.f5395g.post(new RunnableC1270a(i, notification, i2));
    }

    @Override // androidx.work.impl.foreground.C1274b.AbstractC1276b
    /* renamed from: e */
    public void mo30419e(int i, Notification notification) {
        this.f5395g.post(new RunnableC1271b(i, notification));
    }

    @Override // androidx.work.impl.foreground.C1274b.AbstractC1276b
    /* renamed from: f */
    public void mo30418f(int i) {
        this.f5395g.post(new RunnableC1272c(i));
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onCreate() {
        super.onCreate();
        f5394f = this;
        m30433g();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f5397i.m30423k();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        if (this.f5396h) {
            AbstractC1404j.m30161c().mo30156d(f5393e, "Re-initializing SystemForegroundService after a request to shut-down.", new Throwable[0]);
            this.f5397i.m30423k();
            m30433g();
            this.f5396h = false;
        }
        if (intent != null) {
            this.f5397i.m30422l(intent);
            return 3;
        }
        return 3;
    }

    @Override // androidx.work.impl.foreground.C1274b.AbstractC1276b
    public void stop() {
        this.f5396h = true;
        AbstractC1404j.m30161c().mo30158a(f5393e, "All commands completed.", new Throwable[0]);
        if (Build.VERSION.SDK_INT >= 26) {
            stopForeground(true);
        }
        f5394f = null;
        stopSelf();
    }
}
