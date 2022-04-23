package androidx.work.impl.foreground;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.lifecycle.LifecycleService;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.b;
import androidx.work.impl.model.WorkSpec;
import androidx.work.k;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/foreground/SystemForegroundService.class */
public class SystemForegroundService extends LifecycleService implements b.a {

    /* renamed from: c  reason: collision with root package name */
    private static final String f6084c = k.a("SystemFgService");

    /* renamed from: d  reason: collision with root package name */
    private static SystemForegroundService f6085d = null;

    /* renamed from: a  reason: collision with root package name */
    b f6086a;

    /* renamed from: b  reason: collision with root package name */
    NotificationManager f6087b;
    private Handler e;
    private boolean f;

    private void b() {
        this.e = new Handler(Looper.getMainLooper());
        this.f6087b = (NotificationManager) getApplicationContext().getSystemService("notification");
        b bVar = new b(getApplicationContext());
        this.f6086a = bVar;
        bVar.a((b.a) this);
    }

    @Override // androidx.work.impl.foreground.b.a
    public final void a() {
        this.f = true;
        k.a();
        if (Build.VERSION.SDK_INT >= 26) {
            stopForeground(true);
        }
        f6085d = null;
        stopSelf();
    }

    @Override // androidx.work.impl.foreground.b.a
    public final void a(final int i) {
        this.e.post(new Runnable() { // from class: androidx.work.impl.foreground.SystemForegroundService.3
            @Override // java.lang.Runnable
            public final void run() {
                SystemForegroundService.this.f6087b.cancel(i);
            }
        });
    }

    @Override // androidx.work.impl.foreground.b.a
    public final void a(final int i, final int i2, final Notification notification) {
        this.e.post(new Runnable() { // from class: androidx.work.impl.foreground.SystemForegroundService.1
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

    @Override // androidx.work.impl.foreground.b.a
    public final void a(final int i, final Notification notification) {
        this.e.post(new Runnable() { // from class: androidx.work.impl.foreground.SystemForegroundService.2
            @Override // java.lang.Runnable
            public final void run() {
                SystemForegroundService.this.f6087b.notify(i, notification);
            }
        });
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onCreate() {
        super.onCreate();
        f6085d = this;
        b();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f6086a.a();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        if (this.f) {
            k.a();
            this.f6086a.a();
            b();
            this.f = false;
        }
        if (intent == null) {
            return 3;
        }
        final b bVar = this.f6086a;
        String action = intent.getAction();
        if ("ACTION_START_FOREGROUND".equals(action)) {
            k.a();
            String.format("Started foreground service %s", intent);
            final String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
            final WorkDatabase workDatabase = bVar.f6098b.f6118c;
            bVar.f6099c.a(new Runnable() { // from class: androidx.work.impl.foreground.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    WorkSpec workSpec = workDatabase.j().getWorkSpec(stringExtra);
                    if (workSpec != null && workSpec.hasConstraints()) {
                        synchronized (bVar.f6100d) {
                            bVar.g.put(stringExtra, workSpec);
                            bVar.h.add(workSpec);
                            bVar.i.a(bVar.h);
                        }
                    }
                }
            });
            bVar.a(intent);
            return 3;
        } else if ("ACTION_NOTIFY".equals(action)) {
            bVar.a(intent);
            return 3;
        } else if ("ACTION_CANCEL_WORK".equals(action)) {
            k.a();
            String.format("Stopping foreground work for %s", intent);
            String stringExtra2 = intent.getStringExtra("KEY_WORKSPEC_ID");
            if (stringExtra2 == null || TextUtils.isEmpty(stringExtra2)) {
                return 3;
            }
            bVar.f6098b.a(UUID.fromString(stringExtra2));
            return 3;
        } else if (!"ACTION_STOP_FOREGROUND".equals(action)) {
            return 3;
        } else {
            k.a();
            if (bVar.j == null) {
                return 3;
            }
            bVar.j.a();
            return 3;
        }
    }
}
