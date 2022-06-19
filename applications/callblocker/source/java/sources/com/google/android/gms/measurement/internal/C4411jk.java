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
import com.google.android.gms.common.util.AbstractC2708e;
import com.google.android.gms.internal.measurement.C3950fu;
/* renamed from: com.google.android.gms.measurement.internal.jk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/jk.class */
public final class C4411jk extends AbstractC4412jl {

    /* renamed from: b */
    private final AlarmManager f19230b = (AlarmManager) mo4034r().getSystemService("alarm");

    /* renamed from: c */
    private final AbstractC4400j f19231c;

    /* renamed from: d */
    private Integer f19232d;

    public C4411jk(C4415jo c4415jo) {
        super(c4415jo);
        this.f19231c = new C4410jj(this, c4415jo.m4192o(), c4415jo);
    }

    @TargetApi(24)
    /* renamed from: g */
    private final void m4250g() {
        ((JobScheduler) mo4034r().getSystemService("jobscheduler")).cancel(m4249h());
    }

    /* renamed from: h */
    private final int m4249h() {
        if (this.f19232d == null) {
            String valueOf = String.valueOf(mo4034r().getPackageName());
            this.f19232d = Integer.valueOf((valueOf.length() != 0 ? "measurement".concat(valueOf) : new String("measurement")).hashCode());
        }
        return this.f19232d.intValue();
    }

    /* renamed from: i */
    private final PendingIntent m4248i() {
        Context mo4034r = mo4034r();
        return PendingIntent.getBroadcast(mo4034r, 0, new Intent().setClassName(mo4034r, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), 0);
    }

    /* renamed from: a */
    public final void m4252a(long j) {
        m4246K();
        mo4026y();
        Context mo4034r = mo4034r();
        if (!C4287ev.m4609a(mo4034r)) {
            mo4030v().m4658i().m4654a("Receiver not registered/enabled");
        }
        if (!C4424jw.m4141a(mo4034r, false)) {
            mo4030v().m4658i().m4654a("Service not registered/enabled");
        }
        m4251b();
        mo4030v().m4657j().m4653a("Scheduling upload, millis", Long.valueOf(j));
        long mo13861b = mo4035q().mo13861b();
        if (j < Math.max(0L, C4452t.f19487w.m4707a(null).longValue()) && !this.f19231c.m4272b()) {
            this.f19231c.m4274a(j);
        }
        mo4026y();
        if (Build.VERSION.SDK_INT < 24) {
            this.f19230b.setInexactRepeating(2, mo13861b + j, Math.max(C4452t.f19482r.m4707a(null).longValue(), j), m4248i());
            return;
        }
        Context mo4034r2 = mo4034r();
        ComponentName componentName = new ComponentName(mo4034r2, "com.google.android.gms.measurement.AppMeasurementJobService");
        int m4249h = m4249h();
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
        C3950fu.m5488a(mo4034r2, new JobInfo.Builder(m4249h, componentName).setMinimumLatency(j).setOverrideDeadline(j << 1).setExtras(persistableBundle).build(), "com.google.android.gms", "UploadAlarm");
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4412jl
    /* renamed from: a */
    protected final boolean mo4068a() {
        this.f19230b.cancel(m4248i());
        if (Build.VERSION.SDK_INT >= 24) {
            m4250g();
            return false;
        }
        return false;
    }

    /* renamed from: b */
    public final void m4251b() {
        m4246K();
        mo4030v().m4657j().m4654a("Unscheduling upload");
        this.f19230b.cancel(m4248i());
        this.f19231c.m4271c();
        if (Build.VERSION.SDK_INT >= 24) {
            m4250g();
        }
    }

    @Override // com.google.android.gms.measurement.internal.C4413jm
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ C4434kf mo4152d() {
        return super.mo4152d();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: l */
    public final /* bridge */ /* synthetic */ void mo4040l() {
        super.mo4040l();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: m */
    public final /* bridge */ /* synthetic */ void mo4039m() {
        super.mo4039m();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: n */
    public final /* bridge */ /* synthetic */ void mo4038n() {
        super.mo4038n();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: o */
    public final /* bridge */ /* synthetic */ void mo4037o() {
        super.mo4037o();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: p */
    public final /* bridge */ /* synthetic */ C4444l mo4036p() {
        return super.mo4036p();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: q */
    public final /* bridge */ /* synthetic */ AbstractC2708e mo4035q() {
        return super.mo4035q();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: r */
    public final /* bridge */ /* synthetic */ Context mo4034r() {
        return super.mo4034r();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: s */
    public final /* bridge */ /* synthetic */ C4261dw mo4033s() {
        return super.mo4033s();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: t */
    public final /* bridge */ /* synthetic */ C4424jw mo4032t() {
        return super.mo4032t();
    }

    @Override // com.google.android.gms.measurement.internal.C4413jm
    /* renamed from: t_ */
    public final /* bridge */ /* synthetic */ C4289ex mo4151t_() {
        return super.mo4151t_();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: u */
    public final /* bridge */ /* synthetic */ C4293fa mo4031u() {
        return super.mo4031u();
    }

    @Override // com.google.android.gms.measurement.internal.C4413jm
    /* renamed from: u_ */
    public final /* bridge */ /* synthetic */ C4211c mo4150u_() {
        return super.mo4150u_();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: v */
    public final /* bridge */ /* synthetic */ C4263dy mo4030v() {
        return super.mo4030v();
    }

    @Override // com.google.android.gms.measurement.internal.C4413jm
    /* renamed from: v_ */
    public final /* bridge */ /* synthetic */ C4420js mo4149v_() {
        return super.mo4149v_();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: w */
    public final /* bridge */ /* synthetic */ C4277el mo4029w() {
        return super.mo4029w();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: x */
    public final /* bridge */ /* synthetic */ C4184b mo4027x() {
        return super.mo4027x();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: y */
    public final /* bridge */ /* synthetic */ C4439kk mo4026y() {
        return super.mo4026y();
    }
}
