package com.google.android.gms.measurement.internal;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PersistableBundle;
import com.google.android.gms.internal.measurement.ev;
import com.google.android.gms.internal.measurement.fu;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/jc.class */
public final class jc extends je {

    /* renamed from: a  reason: collision with root package name */
    private final AlarmManager f29882a = (AlarmManager) this.t.f29583a.getSystemService("alarm");

    /* renamed from: b  reason: collision with root package name */
    private l f29883b;

    /* renamed from: c  reason: collision with root package name */
    private Integer f29884c;

    /* JADX INFO: Access modifiers changed from: protected */
    public jc(jo joVar) {
        super(joVar);
    }

    private final l e() {
        if (this.f29883b == null) {
            this.f29883b = new jb(this, this.f.f);
        }
        return this.f29883b;
    }

    private final void f() {
        JobScheduler jobScheduler = (JobScheduler) this.t.f29583a.getSystemService("jobscheduler");
        if (jobScheduler != null) {
            jobScheduler.cancel(g());
        }
    }

    private final int g() {
        if (this.f29884c == null) {
            String valueOf = String.valueOf(this.t.f29583a.getPackageName());
            this.f29884c = Integer.valueOf((valueOf.length() != 0 ? "measurement".concat(valueOf) : new String("measurement")).hashCode());
        }
        return this.f29884c.intValue();
    }

    private final PendingIntent h() {
        Context context = this.t.f29583a;
        return ev.a(context, new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), ev.f29000a);
    }

    public final void a(long j) {
        v();
        Context context = this.t.f29583a;
        if (!ju.b(context)) {
            this.t.c().j.a("Receiver not registered/enabled");
        }
        if (!ju.a(context)) {
            this.t.c().j.a("Service not registered/enabled");
        }
        b();
        this.t.c().k.a("Scheduling upload, millis", Long.valueOf(j));
        long b2 = this.t.j.b();
        if (j < Math.max(0L, dc.w.a(null).longValue()) && !e().b()) {
            e().a(j);
        }
        if (Build.VERSION.SDK_INT >= 24) {
            Context context2 = this.t.f29583a;
            ComponentName componentName = new ComponentName(context2, "com.google.android.gms.measurement.AppMeasurementJobService");
            int g = g();
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
            fu.a(context2, new JobInfo.Builder(g, componentName).setMinimumLatency(j).setOverrideDeadline(j + j).setExtras(persistableBundle).build());
            return;
        }
        AlarmManager alarmManager = this.f29882a;
        if (alarmManager != null) {
            alarmManager.setInexactRepeating(2, b2 + j, Math.max(dc.r.a(null).longValue(), j), h());
        }
    }

    @Override // com.google.android.gms.measurement.internal.je
    protected final boolean a() {
        AlarmManager alarmManager = this.f29882a;
        if (alarmManager != null) {
            alarmManager.cancel(h());
        }
        if (Build.VERSION.SDK_INT < 24) {
            return false;
        }
        f();
        return false;
    }

    public final void b() {
        v();
        this.t.c().k.a("Unscheduling upload");
        AlarmManager alarmManager = this.f29882a;
        if (alarmManager != null) {
            alarmManager.cancel(h());
        }
        e().c();
        if (Build.VERSION.SDK_INT >= 24) {
            f();
        }
    }
}
