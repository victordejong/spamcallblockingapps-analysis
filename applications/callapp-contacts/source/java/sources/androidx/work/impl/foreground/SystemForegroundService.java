package androidx.work.impl.foreground;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.lifecycle.LifecycleService;
import androidx.work.AbstractC3145k;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.C3054b;
import androidx.work.impl.model.WorkSpec;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/foreground/SystemForegroundService.class */
public class SystemForegroundService extends LifecycleService implements C3054b.AbstractC3056a {

    /* renamed from: c */
    private static final String f11300c = AbstractC3145k.m39275a("SystemFgService");

    /* renamed from: d */
    private static SystemForegroundService f11301d = null;

    /* renamed from: a */
    C3054b f11302a;

    /* renamed from: b */
    NotificationManager f11303b;

    /* renamed from: e */
    private Handler f11304e;

    /* renamed from: f */
    private boolean f11305f;

    /* renamed from: b */
    private void m39382b() {
        this.f11304e = new Handler(Looper.getMainLooper());
        this.f11303b = (NotificationManager) getApplicationContext().getSystemService("notification");
        C3054b c3054b = new C3054b(getApplicationContext());
        this.f11302a = c3054b;
        c3054b.m39375a((C3054b.AbstractC3056a) this);
    }

    @Override // androidx.work.impl.foreground.C3054b.AbstractC3056a
    /* renamed from: a */
    public final void mo39372a() {
        this.f11305f = true;
        AbstractC3145k.m39277a();
        if (Build.VERSION.SDK_INT >= 26) {
            stopForeground(true);
        }
        f11301d = null;
        stopSelf();
    }

    @Override // androidx.work.impl.foreground.C3054b.AbstractC3056a
    /* renamed from: a */
    public final void mo39371a(final int i) {
        this.f11304e.post(new Runnable() { // from class: androidx.work.impl.foreground.SystemForegroundService.3
            @Override // java.lang.Runnable
            public final void run() {
                SystemForegroundService.this.f11303b.cancel(i);
            }
        });
    }

    @Override // androidx.work.impl.foreground.C3054b.AbstractC3056a
    /* renamed from: a */
    public final void mo39370a(final int i, final int i2, final Notification notification) {
        this.f11304e.post(new Runnable() { // from class: androidx.work.impl.foreground.SystemForegroundService.1
            @Override // java.lang.Runnable
            public final void run() {
                if (Build.VERSION.SDK_INT >= 29) {
                    SystemForegroundService.this.startForeground(i, notification, i2);
                } else {
                    SystemForegroundService.this.startForeground(i, notification);
                }
            }
        });
    }

    @Override // androidx.work.impl.foreground.C3054b.AbstractC3056a
    /* renamed from: a */
    public final void mo39369a(final int i, final Notification notification) {
        this.f11304e.post(new Runnable() { // from class: androidx.work.impl.foreground.SystemForegroundService.2
            @Override // java.lang.Runnable
            public final void run() {
                SystemForegroundService.this.f11303b.notify(i, notification);
            }
        });
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onCreate() {
        super.onCreate();
        f11301d = this;
        m39382b();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f11302a.m39379a();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        if (this.f11305f) {
            AbstractC3145k.m39277a();
            this.f11302a.m39379a();
            m39382b();
            this.f11305f = false;
        }
        if (intent != null) {
            final C3054b c3054b = this.f11302a;
            String action = intent.getAction();
            if ("ACTION_START_FOREGROUND".equals(action)) {
                AbstractC3145k.m39277a();
                String.format("Started foreground service %s", intent);
                final String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
                final WorkDatabase workDatabase = c3054b.f11316b.f11355c;
                c3054b.f11317c.mo39302a(new Runnable() { // from class: androidx.work.impl.foreground.b.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkSpec workSpec = workDatabase.mo39474j().getWorkSpec(stringExtra);
                        if (workSpec == null || !workSpec.hasConstraints()) {
                            return;
                        }
                        synchronized (c3054b.f11318d) {
                            c3054b.f11321g.put(stringExtra, workSpec);
                            c3054b.f11322h.add(workSpec);
                            c3054b.f11323i.m39441a(c3054b.f11322h);
                        }
                    }
                });
                c3054b.m39376a(intent);
                return 3;
            } else if ("ACTION_NOTIFY".equals(action)) {
                c3054b.m39376a(intent);
                return 3;
            } else if (!"ACTION_CANCEL_WORK".equals(action)) {
                if (!"ACTION_STOP_FOREGROUND".equals(action)) {
                    return 3;
                }
                AbstractC3145k.m39277a();
                if (c3054b.f11324j == null) {
                    return 3;
                }
                c3054b.f11324j.mo39372a();
                return 3;
            } else {
                AbstractC3145k.m39277a();
                String.format("Stopping foreground work for %s", intent);
                String stringExtra2 = intent.getStringExtra("KEY_WORKSPEC_ID");
                if (stringExtra2 == null || TextUtils.isEmpty(stringExtra2)) {
                    return 3;
                }
                c3054b.f11316b.mo39262a(UUID.fromString(stringExtra2));
                return 3;
            }
        }
        return 3;
    }
}
