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
import com.google.android.gms.internal.measurement.C7392h5;
import com.google.android.gms.internal.measurement.C7447l4;
/* renamed from: com.google.android.gms.measurement.internal.c9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/c9.class */
public final class C7678c9 extends AbstractC7702e9 {

    /* renamed from: d */
    private final AlarmManager f35134d = (AlarmManager) this.f35460a.mo6030a().getSystemService("alarm");

    /* renamed from: e */
    private AbstractC7776l f35135e;

    /* renamed from: f */
    private Integer f35136f;

    public C7678c9(C7819o9 c7819o9) {
        super(c7819o9);
    }

    /* renamed from: m */
    private final AbstractC7776l m6567m() {
        if (this.f35135e == null) {
            this.f35135e = new C7666b9(this, this.f35186b.m6128r());
        }
        return this.f35135e;
    }

    @TargetApi(24)
    /* renamed from: n */
    private final void m6566n() {
        JobScheduler jobScheduler = (JobScheduler) this.f35460a.mo6030a().getSystemService("jobscheduler");
        if (jobScheduler != null) {
            jobScheduler.cancel(m6565o());
        }
    }

    /* renamed from: o */
    private final int m6565o() {
        if (this.f35136f == null) {
            String valueOf = String.valueOf(this.f35460a.mo6030a().getPackageName());
            this.f35136f = Integer.valueOf((valueOf.length() != 0 ? "measurement".concat(valueOf) : new String("measurement")).hashCode());
        }
        return this.f35136f.intValue();
    }

    /* renamed from: p */
    private final PendingIntent m6564p() {
        Context mo6030a = this.f35460a.mo6030a();
        return C7447l4.m7189a(mo6030a, 0, new Intent().setClassName(mo6030a, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), C7447l4.f34578a);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7702e9
    /* renamed from: i */
    protected final boolean mo6003i() {
        AlarmManager alarmManager = this.f35134d;
        if (alarmManager != null) {
            alarmManager.cancel(m6564p());
        }
        if (Build.VERSION.SDK_INT >= 24) {
            m6566n();
            return false;
        }
        return false;
    }

    /* renamed from: k */
    public final void m6569k(long j) {
        m6455h();
        this.f35460a.mo6028c();
        Context mo6030a = this.f35460a.mo6030a();
        if (!C7885u9.m5975a0(mo6030a)) {
            this.f35460a.mo6047C().m6188t().m6216a("Receiver not registered/enabled");
        }
        if (!C7885u9.m5998D(mo6030a, false)) {
            this.f35460a.mo6047C().m6188t().m6216a("Service not registered/enabled");
        }
        m6568l();
        this.f35460a.mo6047C().m6187u().m6215b("Scheduling upload, millis", Long.valueOf(j));
        long mo16806b = this.f35460a.mo6007x().mo16806b();
        this.f35460a.m6006y();
        if (j < Math.max(0L, C7672c3.f35110y.m6589b(null).longValue()) && !m6567m().m6254c()) {
            m6567m().m6255b(j);
        }
        this.f35460a.mo6028c();
        if (Build.VERSION.SDK_INT < 24) {
            AlarmManager alarmManager = this.f35134d;
            if (alarmManager == null) {
                return;
            }
            this.f35460a.m6006y();
            alarmManager.setInexactRepeating(2, mo16806b + j, Math.max(C7672c3.f35100t.m6589b(null).longValue(), j), m6564p());
            return;
        }
        Context mo6030a2 = this.f35460a.mo6030a();
        ComponentName componentName = new ComponentName(mo6030a2, "com.google.android.gms.measurement.AppMeasurementJobService");
        int m6565o = m6565o();
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
        C7392h5.m7372a(mo6030a2, new JobInfo.Builder(m6565o, componentName).setMinimumLatency(j).setOverrideDeadline(j + j).setExtras(persistableBundle).build(), "com.google.android.gms", "UploadAlarm");
    }

    /* renamed from: l */
    public final void m6568l() {
        m6455h();
        this.f35460a.mo6047C().m6187u().m6216a("Unscheduling upload");
        AlarmManager alarmManager = this.f35134d;
        if (alarmManager != null) {
            alarmManager.cancel(m6564p());
        }
        m6567m().m6253d();
        if (Build.VERSION.SDK_INT >= 24) {
            m6566n();
        }
    }
}
