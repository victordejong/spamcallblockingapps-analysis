package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.util.AbstractC2708e;
import com.google.android.gms.internal.measurement.HandlerC4089ku;
/* renamed from: com.google.android.gms.measurement.internal.iz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/iz.class */
public final class C4399iz extends AbstractC4243de {

    /* renamed from: c */
    private Handler f19201c;

    /* renamed from: a */
    protected final C4409ji f19199a = new C4409ji(this);

    /* renamed from: b */
    protected final C4406jf f19200b = new C4406jf(this);

    /* renamed from: d */
    private final C4401ja f19202d = new C4401ja(this);

    public C4399iz(C4296fd c4296fd) {
        super(c4296fd);
    }

    /* renamed from: B */
    public final void m4290B() {
        mo4037o();
        if (this.f19201c == null) {
            this.f19201c = new HandlerC4089ku(Looper.getMainLooper());
        }
    }

    /* renamed from: a */
    public final void m4288a(long j) {
        mo4037o();
        m4290B();
        mo4030v().m4657j().m4653a("Activity resumed, time", Long.valueOf(j));
        if (mo4027x().m4804a(C4452t.f19421aD)) {
            if (mo4027x().m4786f().booleanValue() || mo4029w().f18777s.m4626a()) {
                this.f19200b.m4266a(j);
            }
            this.f19202d.m4269a();
        } else {
            this.f19202d.m4269a();
            if (mo4027x().m4786f().booleanValue()) {
                this.f19200b.m4266a(j);
            }
        }
        C4409ji c4409ji = this.f19199a;
        c4409ji.f19227a.mo4037o();
        if (c4409ji.f19227a.f18970z.m4574B()) {
            if (!c4409ji.f19227a.mo4027x().m4804a(C4452t.f19421aD)) {
                c4409ji.f19227a.mo4029w().f18777s.m4625a(false);
            }
            c4409ji.m4255a(c4409ji.f19227a.mo4035q().mo13862a(), false);
        }
    }

    /* renamed from: b */
    public final void m4283b(long j) {
        mo4037o();
        m4290B();
        mo4030v().m4657j().m4653a("Activity paused, time", Long.valueOf(j));
        this.f19202d.m4268a(j);
        if (mo4027x().m4786f().booleanValue()) {
            this.f19200b.m4262b(j);
        }
        C4409ji c4409ji = this.f19199a;
        if (!c4409ji.f19227a.mo4027x().m4804a(C4452t.f19421aD)) {
            c4409ji.f19227a.mo4029w().f18777s.m4625a(true);
        }
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C4159ab mo4289a() {
        return super.mo4289a();
    }

    /* renamed from: a */
    public final boolean m4285a(boolean z, boolean z2, long j) {
        return this.f19200b.m4264a(z, z2, j);
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ C4330gk mo4284b() {
        return super.mo4284b();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ C4260dv mo4280c() {
        return super.mo4280c();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ C4367hu mo4279d() {
        return super.mo4279d();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: e */
    public final /* bridge */ /* synthetic */ C4361ho mo4278e() {
        return super.mo4278e();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ C4259du mo4277f() {
        return super.mo4277f();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: g */
    public final /* bridge */ /* synthetic */ C4399iz mo4276g() {
        return super.mo4276g();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef, com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: l */
    public final /* bridge */ /* synthetic */ void mo4040l() {
        super.mo4040l();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef, com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: m */
    public final /* bridge */ /* synthetic */ void mo4039m() {
        super.mo4039m();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef, com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: n */
    public final /* bridge */ /* synthetic */ void mo4038n() {
        super.mo4038n();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef, com.google.android.gms.measurement.internal.C4318fz
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

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: u */
    public final /* bridge */ /* synthetic */ C4293fa mo4031u() {
        return super.mo4031u();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: v */
    public final /* bridge */ /* synthetic */ C4263dy mo4030v() {
        return super.mo4030v();
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

    @Override // com.google.android.gms.measurement.internal.AbstractC4243de
    /* renamed from: z */
    protected final boolean mo4275z() {
        return false;
    }
}
