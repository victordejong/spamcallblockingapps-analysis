package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PersistableBundle;
import com.google.android.gms.internal.measurement.zzh;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzke.class */
public final class zzke extends zzkj {

    /* renamed from: d */
    private final AlarmManager f9647d = (AlarmManager) mo11075f().getSystemService("alarm");

    /* renamed from: e */
    private final zzaj f9648e;

    /* renamed from: f */
    private Integer f9649f;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzke(zzki zzkiVar) {
        super(zzkiVar);
        this.f9648e = new zzkh(this, zzkiVar.m11062l0(), zzkiVar);
    }

    @TargetApi(24)
    /* renamed from: v */
    private final void m11121v() {
        ((JobScheduler) mo11075f().getSystemService("jobscheduler")).cancel(m11120w());
    }

    /* renamed from: w */
    private final int m11120w() {
        if (this.f9649f == null) {
            String valueOf = String.valueOf(mo11075f().getPackageName());
            this.f9649f = Integer.valueOf((valueOf.length() != 0 ? "measurement".concat(valueOf) : new String("measurement")).hashCode());
        }
        return this.f9649f.intValue();
    }

    /* renamed from: x */
    private final PendingIntent m11119x() {
        Context f = mo11075f();
        return PendingIntent.getBroadcast(f, 0, new Intent().setClassName(f, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), 0);
    }

    @Override // com.google.android.gms.measurement.internal.zzkj
    /* renamed from: s */
    protected final boolean mo10928s() {
        this.f9647d.cancel(m11119x());
        if (Build.VERSION.SDK_INT < 24) {
            return false;
        }
        m11121v();
        return false;
    }

    /* renamed from: t */
    public final void m11123t(long j) {
        m11038q();
        Context f = mo11075f();
        if (!zzfn.m11423b(f)) {
            mo11081c().m11553K().m11540a("Receiver not registered/enabled");
        }
        if (!zzkw.m10968X(f, false)) {
            mo11081c().m11553K().m11540a("Service not registered/enabled");
        }
        m11122u();
        mo11081c().m11552L().m11539b("Scheduling upload, millis", Long.valueOf(j));
        long b = mo11085a().mo14334b();
        if (j < Math.max(0L, zzat.f8974x.m11594a(null).longValue()) && !this.f9648e.m11714d()) {
            this.f9648e.m11715c(j);
        }
        if (Build.VERSION.SDK_INT >= 24) {
            Context f2 = mo11075f();
            ComponentName componentName = new ComponentName(f2, "com.google.android.gms.measurement.AppMeasurementJobService");
            int w = m11120w();
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
            zzh.m12623b(f2, new JobInfo.Builder(w, componentName).setMinimumLatency(j).setOverrideDeadline(j << 1).setExtras(persistableBundle).build(), "com.google.android.gms", "UploadAlarm");
            return;
        }
        this.f9647d.setInexactRepeating(2, b + j, Math.max(zzat.f8964s.m11594a(null).longValue(), j), m11119x());
    }

    /* renamed from: u */
    public final void m11122u() {
        m11038q();
        mo11081c().m11552L().m11540a("Unscheduling upload");
        this.f9647d.cancel(m11119x());
        this.f9648e.m11713e();
        if (Build.VERSION.SDK_INT >= 24) {
            m11121v();
        }
    }
}
