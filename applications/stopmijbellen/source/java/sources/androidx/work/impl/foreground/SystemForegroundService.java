package androidx.work.impl.foreground;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.lifecycle.ServiceC0528m;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.C0703a;
import java.util.Objects;
import java.util.UUID;
import p003a2.C0009b;
import p186o1.AbstractC3824h;
import p197p1.C4006j;
import p271w1.RunnableC4730b;
import p292y1.C4954a;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/foreground/SystemForegroundService.class */
public class SystemForegroundService extends ServiceC0528m implements C0703a.AbstractC0704a {

    /* renamed from: f */
    public static final String f2710f = AbstractC3824h.m1773e("SystemFgService");

    /* renamed from: b */
    public Handler f2711b;

    /* renamed from: c */
    public boolean f2712c;

    /* renamed from: d */
    public C0703a f2713d;

    /* renamed from: e */
    public NotificationManager f2714e;

    /* renamed from: androidx.work.impl.foreground.SystemForegroundService$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/foreground/SystemForegroundService$a.class */
    public class RunnableC0702a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f2715a;

        /* renamed from: b */
        public final /* synthetic */ Notification f2716b;

        /* renamed from: c */
        public final /* synthetic */ int f2717c;

        public RunnableC0702a(int i, Notification notification, int i2) {
            SystemForegroundService.this = r4;
            this.f2715a = i;
            this.f2716b = notification;
            this.f2717c = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Build.VERSION.SDK_INT >= 29) {
                SystemForegroundService.this.startForeground(this.f2715a, this.f2716b, this.f2717c);
            } else {
                SystemForegroundService.this.startForeground(this.f2715a, this.f2716b);
            }
        }
    }

    /* renamed from: a */
    public final void m7459a() {
        this.f2711b = new Handler(Looper.getMainLooper());
        this.f2714e = (NotificationManager) getApplicationContext().getSystemService("notification");
        C0703a c0703a = new C0703a(getApplicationContext());
        this.f2713d = c0703a;
        if (c0703a.f2729j != null) {
            AbstractC3824h.m1774c().mo1771b(C0703a.f2719k, "A callback already exists.", new Throwable[0]);
        } else {
            c0703a.f2729j = this;
        }
    }

    /* renamed from: c */
    public void m7458c(int i, int i2, Notification notification) {
        this.f2711b.post(new RunnableC0702a(i, notification, i2));
    }

    @Override // androidx.lifecycle.ServiceC0528m, android.app.Service
    public void onCreate() {
        super.onCreate();
        m7459a();
    }

    @Override // androidx.lifecycle.ServiceC0528m, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f2713d.m7454g();
    }

    @Override // androidx.lifecycle.ServiceC0528m, android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        if (this.f2712c) {
            AbstractC3824h.m1774c().mo1770d(f2710f, "Re-initializing SystemForegroundService after a request to shut-down.", new Throwable[0]);
            this.f2713d.m7454g();
            m7459a();
            this.f2712c = false;
        }
        if (intent != null) {
            C0703a c0703a = this.f2713d;
            Objects.requireNonNull(c0703a);
            String action = intent.getAction();
            if ("ACTION_START_FOREGROUND".equals(action)) {
                AbstractC3824h.m1774c().mo1770d(C0703a.f2719k, String.format("Started foreground service %s", intent), new Throwable[0]);
                String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
                WorkDatabase workDatabase = c0703a.f2721b.f12584c;
                ((C0009b) c0703a.f2722c).f8a.execute(new RunnableC4730b(c0703a, workDatabase, stringExtra));
                c0703a.m7455f(intent);
                return 3;
            } else if ("ACTION_NOTIFY".equals(action)) {
                c0703a.m7455f(intent);
                return 3;
            } else if ("ACTION_CANCEL_WORK".equals(action)) {
                AbstractC3824h.m1774c().mo1770d(C0703a.f2719k, String.format("Stopping foreground work for %s", intent), new Throwable[0]);
                String stringExtra2 = intent.getStringExtra("KEY_WORKSPEC_ID");
                if (stringExtra2 == null || TextUtils.isEmpty(stringExtra2)) {
                    return 3;
                }
                C4006j c4006j = c0703a.f2721b;
                UUID fromString = UUID.fromString(stringExtra2);
                Objects.requireNonNull(c4006j);
                ((C0009b) c4006j.f12585d).f8a.execute(new C4954a(c4006j, fromString));
                return 3;
            } else if (!"ACTION_STOP_FOREGROUND".equals(action)) {
                return 3;
            } else {
                AbstractC3824h.m1774c().mo1770d(C0703a.f2719k, "Stopping foreground service", new Throwable[0]);
                C0703a.AbstractC0704a abstractC0704a = c0703a.f2729j;
                if (abstractC0704a == null) {
                    return 3;
                }
                SystemForegroundService systemForegroundService = (SystemForegroundService) abstractC0704a;
                systemForegroundService.f2712c = true;
                AbstractC3824h.m1774c().mo1772a(f2710f, "All commands completed.", new Throwable[0]);
                if (Build.VERSION.SDK_INT >= 26) {
                    systemForegroundService.stopForeground(true);
                }
                systemForegroundService.stopSelf();
                return 3;
            }
        }
        return 3;
    }
}
