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
import com.google.android.gms.internal.measurement.C13482ev;
import com.google.android.gms.internal.measurement.C13508fu;
/* renamed from: com.google.android.gms.measurement.internal.jc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/jc.class */
public final class C14098jc extends AbstractC14100je {

    /* renamed from: a */
    private final AlarmManager f51937a = (AlarmManager) this.f51637t.f51523a.getSystemService("alarm");

    /* renamed from: b */
    private AbstractC14134l f51938b;

    /* renamed from: c */
    private Integer f51939c;

    public C14098jc(C14110jo c14110jo) {
        super(c14110jo);
    }

    /* renamed from: e */
    private final AbstractC14134l m11701e() {
        if (this.f51938b == null) {
            this.f51938b = new C14097jb(this, this.f51940f.f51969f);
        }
        return this.f51938b;
    }

    /* renamed from: f */
    private final void m11700f() {
        JobScheduler jobScheduler = (JobScheduler) this.f51637t.f51523a.getSystemService("jobscheduler");
        if (jobScheduler != null) {
            jobScheduler.cancel(m11699g());
        }
    }

    /* renamed from: g */
    private final int m11699g() {
        if (this.f51939c == null) {
            String valueOf = String.valueOf(this.f51637t.f51523a.getPackageName());
            this.f51939c = Integer.valueOf((valueOf.length() != 0 ? "measurement".concat(valueOf) : new String("measurement")).hashCode());
        }
        return this.f51939c.intValue();
    }

    /* renamed from: h */
    private final PendingIntent m11698h() {
        Context context = this.f51637t.f51523a;
        return C13482ev.m12889a(context, new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), C13482ev.f50699a);
    }

    /* renamed from: a */
    public final void m11703a(long j) {
        m11696v();
        Context context = this.f51637t.f51523a;
        if (!C14116ju.m11571b(context)) {
            this.f51637t.mo11661c().f51402j.m12092a("Receiver not registered/enabled");
        }
        if (!C14116ju.m11609a(context)) {
            this.f51637t.mo11661c().f51402j.m12092a("Service not registered/enabled");
        }
        m11702b();
        this.f51637t.mo11661c().f51403k.m12091a("Scheduling upload, millis", Long.valueOf(j));
        long mo19038b = this.f51637t.f51532j.mo19038b();
        if (j < Math.max(0L, C13935dc.f51360w.m12117a(null).longValue()) && !m11701e().m11523b()) {
            m11701e().m11525a(j);
        }
        if (Build.VERSION.SDK_INT < 24) {
            AlarmManager alarmManager = this.f51937a;
            if (alarmManager == null) {
                return;
            }
            alarmManager.setInexactRepeating(2, mo19038b + j, Math.max(C13935dc.f51355r.m12117a(null).longValue(), j), m11698h());
            return;
        }
        Context context2 = this.f51637t.f51523a;
        ComponentName componentName = new ComponentName(context2, "com.google.android.gms.measurement.AppMeasurementJobService");
        int m11699g = m11699g();
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
        C13508fu.m12802a(context2, new JobInfo.Builder(m11699g, componentName).setMinimumLatency(j).setOverrideDeadline(j + j).setExtras(persistableBundle).build());
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14100je
    /* renamed from: a */
    protected final boolean mo11531a() {
        AlarmManager alarmManager = this.f51937a;
        if (alarmManager != null) {
            alarmManager.cancel(m11698h());
        }
        if (Build.VERSION.SDK_INT >= 24) {
            m11700f();
            return false;
        }
        return false;
    }

    /* renamed from: b */
    public final void m11702b() {
        m11696v();
        this.f51637t.mo11661c().f51403k.m12092a("Unscheduling upload");
        AlarmManager alarmManager = this.f51937a;
        if (alarmManager != null) {
            alarmManager.cancel(m11698h());
        }
        m11701e().m11522c();
        if (Build.VERSION.SDK_INT >= 24) {
            m11700f();
        }
    }
}
