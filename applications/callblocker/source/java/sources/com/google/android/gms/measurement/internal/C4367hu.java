package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.stats.C2694a;
import com.google.android.gms.common.util.AbstractC2708e;
import com.google.android.gms.internal.measurement.AbstractC4132mj;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.hu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/hu.class */
public final class C4367hu extends AbstractC4243de {

    /* renamed from: b */
    private AbstractC4255dq f19103b;

    /* renamed from: c */
    private volatile Boolean f19104c;

    /* renamed from: d */
    private final AbstractC4400j f19105d;

    /* renamed from: e */
    private final C4407jg f19106e;

    /* renamed from: g */
    private final AbstractC4400j f19108g;

    /* renamed from: f */
    private final List<Runnable> f19107f = new ArrayList();

    /* renamed from: a */
    private final ServiceConnectionC4386im f19102a = new ServiceConnectionC4386im(this);

    public C4367hu(C4296fd c4296fd) {
        super(c4296fd);
        this.f19106e = new C4407jg(c4296fd.mo4035q());
        this.f19105d = new C4370hx(this, c4296fd);
        this.f19108g = new C4377id(this, c4296fd);
    }

    /* renamed from: J */
    private final boolean m4339J() {
        mo4026y();
        return true;
    }

    /* renamed from: K */
    public final void m4338K() {
        mo4037o();
        this.f19106e.m4259a();
        this.f19105d.m4274a(C4452t.f19399I.m4707a(null).longValue());
    }

    /* renamed from: L */
    private final boolean m4337L() {
        boolean z;
        boolean z2 = true;
        mo4037o();
        m4711i();
        if (this.f19104c == null) {
            mo4037o();
            m4711i();
            Boolean m4631f = mo4029w().m4631f();
            if (m4631f == null || !m4631f.booleanValue()) {
                mo4026y();
                if (mo4280c().m4688G() != 1) {
                    mo4030v().m4657j().m4654a("Checking service availability");
                    int m4147a = mo4032t().m4147a(12451000);
                    switch (m4147a) {
                        case 0:
                            mo4030v().m4657j().m4654a("Service available");
                            z = true;
                            z2 = true;
                            break;
                        case 1:
                            mo4030v().m4657j().m4654a("Service missing");
                            z = true;
                            z2 = false;
                            break;
                        case 2:
                            mo4030v().m4658i().m4654a("Service container out of date");
                            if (mo4032t().m4084f() >= 17443) {
                                z2 = m4631f == null;
                                z = false;
                                break;
                            } else {
                                z = true;
                                z2 = false;
                                break;
                            }
                        case 3:
                            mo4030v().m4662e().m4654a("Service disabled");
                            z = false;
                            z2 = false;
                            break;
                        case 9:
                            mo4030v().m4662e().m4654a("Service invalid");
                            z = false;
                            z2 = false;
                            break;
                        case 18:
                            mo4030v().m4662e().m4654a("Service updating");
                            z = true;
                            z2 = true;
                            break;
                        default:
                            mo4030v().m4662e().m4653a("Unexpected service status", Integer.valueOf(m4147a));
                            z = false;
                            z2 = false;
                            break;
                    }
                } else {
                    z = true;
                    z2 = true;
                }
                if (!z2 && mo4027x().m4777k()) {
                    mo4030v().m4655x_().m4654a("No way to upload. Consider using the full version of Analytics");
                    z = false;
                }
                if (z) {
                    mo4029w().m4640a(z2);
                }
            }
            this.f19104c = Boolean.valueOf(z2);
        }
        return this.f19104c.booleanValue();
    }

    /* renamed from: M */
    public final void m4336M() {
        mo4037o();
        if (!m4347B()) {
            return;
        }
        mo4030v().m4657j().m4654a("Inactivity, disconnecting from the service");
        m4341H();
    }

    /* renamed from: N */
    public final void m4335N() {
        mo4037o();
        mo4030v().m4657j().m4653a("Processing queued up service tasks", Integer.valueOf(this.f19107f.size()));
        for (Runnable runnable : this.f19107f) {
            try {
                runnable.run();
            } catch (Exception e) {
                mo4030v().m4655x_().m4653a("Task exception while flushing queue", e);
            }
        }
        this.f19107f.clear();
        this.f19108g.m4271c();
    }

    /* renamed from: a */
    private final C4430kb m4316a(boolean z) {
        mo4026y();
        return mo4280c().m4685a(z ? mo4030v().m4656k() : null);
    }

    /* renamed from: a */
    public final void m4334a(ComponentName componentName) {
        mo4037o();
        if (this.f19103b != null) {
            this.f19103b = null;
            mo4030v().m4657j().m4653a("Disconnected from device MeasurementService", componentName);
            mo4037o();
            m4343F();
        }
    }

    /* renamed from: a */
    private final void m4320a(Runnable runnable) {
        mo4037o();
        if (m4347B()) {
            runnable.run();
        } else if (this.f19107f.size() >= 1000) {
            mo4030v().m4655x_().m4654a("Discarding data. Max runnable queue size reached");
        } else {
            this.f19107f.add(runnable);
            this.f19108g.m4274a(60000L);
            m4343F();
        }
    }

    /* renamed from: B */
    public final boolean m4347B() {
        mo4037o();
        m4711i();
        return this.f19103b != null;
    }

    /* renamed from: C */
    public final void m4346C() {
        mo4037o();
        m4711i();
        m4320a(new RunnableC4381ih(this, m4316a(true)));
    }

    /* renamed from: D */
    public final void m4345D() {
        mo4037o();
        mo4039m();
        m4711i();
        C4430kb m4316a = m4316a(false);
        if (m4339J()) {
            mo4277f().m4705B();
        }
        m4320a(new RunnableC4371hy(this, m4316a));
    }

    /* renamed from: E */
    public final void m4344E() {
        mo4037o();
        m4711i();
        C4430kb m4316a = m4316a(true);
        mo4277f().m4704C();
        m4320a(new RunnableC4376ic(this, m4316a));
    }

    /* renamed from: F */
    public final void m4343F() {
        mo4037o();
        m4711i();
        if (m4347B()) {
            return;
        }
        if (m4337L()) {
            this.f19102a.m4305b();
        } else if (mo4027x().m4777k()) {
        } else {
            mo4026y();
            List<ResolveInfo> queryIntentServices = mo4034r().getPackageManager().queryIntentServices(new Intent().setClassName(mo4034r(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
            if (!(queryIntentServices != null && queryIntentServices.size() > 0)) {
                mo4030v().m4655x_().m4654a("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
                return;
            }
            Intent intent = new Intent("com.google.android.gms.measurement.START");
            Context mo4034r = mo4034r();
            mo4026y();
            intent.setComponent(new ComponentName(mo4034r, "com.google.android.gms.measurement.AppMeasurementService"));
            this.f19102a.m4309a(intent);
        }
    }

    /* renamed from: G */
    public final Boolean m4342G() {
        return this.f19104c;
    }

    /* renamed from: H */
    public final void m4341H() {
        mo4037o();
        m4711i();
        this.f19102a.m4311a();
        try {
            C2694a.m13893a().m13891a(mo4034r(), this.f19102a);
        } catch (IllegalArgumentException e) {
        } catch (IllegalStateException e2) {
        }
        this.f19103b = null;
    }

    /* renamed from: I */
    public final boolean m4340I() {
        boolean z = true;
        mo4037o();
        m4711i();
        if (m4337L() && mo4032t().m4084f() < 200900) {
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C4159ab mo4289a() {
        return super.mo4289a();
    }

    /* renamed from: a */
    public final void m4333a(AbstractC4132mj abstractC4132mj) {
        mo4037o();
        m4711i();
        m4320a(new RunnableC4372hz(this, m4316a(false), abstractC4132mj));
    }

    /* renamed from: a */
    public final void m4332a(AbstractC4132mj abstractC4132mj, C4450r c4450r, String str) {
        mo4037o();
        m4711i();
        if (mo4032t().m4147a(12451000) == 0) {
            m4320a(new RunnableC4378ie(this, c4450r, str, abstractC4132mj));
            return;
        }
        mo4030v().m4662e().m4654a("Not bundling data. Service unavailable or out of date");
        mo4032t().m4126a(abstractC4132mj, new byte[0]);
    }

    /* renamed from: a */
    public final void m4331a(AbstractC4132mj abstractC4132mj, String str, String str2) {
        mo4037o();
        m4711i();
        m4320a(new RunnableC4385il(this, str, str2, m4316a(false), abstractC4132mj));
    }

    /* renamed from: a */
    public final void m4330a(AbstractC4132mj abstractC4132mj, String str, String str2, boolean z) {
        mo4037o();
        m4711i();
        m4320a(new RunnableC4387in(this, str, str2, z, m4316a(false), abstractC4132mj));
    }

    /* renamed from: a */
    public final void m4329a(AbstractC4255dq abstractC4255dq) {
        mo4037o();
        C2662s.m13981a(abstractC4255dq);
        this.f19103b = abstractC4255dq;
        m4338K();
        m4335N();
    }

    /* renamed from: a */
    public final void m4328a(AbstractC4255dq abstractC4255dq, AbstractC2663a abstractC2663a, C4430kb c4430kb) {
        List<AbstractC2663a> m4700a;
        mo4037o();
        mo4039m();
        m4711i();
        boolean m4339J = m4339J();
        int i = 100;
        for (int i2 = 0; i2 < 1001 && i == 100; i2++) {
            ArrayList arrayList = new ArrayList();
            if (!m4339J || (m4700a = mo4277f().m4700a(100)) == null) {
                i = 0;
            } else {
                arrayList.addAll(m4700a);
                i = m4700a.size();
            }
            if (abstractC2663a != null && i < 100) {
                arrayList.add(abstractC2663a);
            }
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i3 = 0;
            while (i3 < size) {
                i3++;
                AbstractC2663a abstractC2663a2 = (AbstractC2663a) arrayList2.get(i3);
                if (abstractC2663a2 instanceof C4450r) {
                    try {
                        abstractC4255dq.mo4459a((C4450r) abstractC2663a2, c4430kb);
                    } catch (RemoteException e) {
                        mo4030v().m4655x_().m4653a("Failed to send event to the service", e);
                    }
                } else if (abstractC2663a2 instanceof C4423jv) {
                    try {
                        abstractC4255dq.mo4464a((C4423jv) abstractC2663a2, c4430kb);
                    } catch (RemoteException e2) {
                        mo4030v().m4655x_().m4653a("Failed to send user property to the service", e2);
                    }
                } else if (abstractC2663a2 instanceof C4442kn) {
                    try {
                        abstractC4255dq.mo4460a((C4442kn) abstractC2663a2, c4430kb);
                    } catch (RemoteException e3) {
                        mo4030v().m4655x_().m4653a("Failed to send conditional user property to the service", e3);
                    }
                } else {
                    mo4030v().m4655x_().m4654a("Discarding data. Unrecognized parcel type.");
                }
            }
        }
    }

    /* renamed from: a */
    public final void m4327a(C4362hp c4362hp) {
        mo4037o();
        m4711i();
        m4320a(new RunnableC4375ib(this, c4362hp));
    }

    /* renamed from: a */
    public final void m4323a(C4423jv c4423jv) {
        mo4037o();
        m4711i();
        m4320a(new RunnableC4369hw(this, m4339J() && mo4277f().m4697a(c4423jv), c4423jv, m4316a(true)));
    }

    /* renamed from: a */
    public final void m4322a(C4442kn c4442kn) {
        C2662s.m13981a(c4442kn);
        mo4037o();
        m4711i();
        mo4026y();
        m4320a(new RunnableC4383ij(this, true, mo4277f().m4696a(c4442kn), new C4442kn(c4442kn), m4316a(true), c4442kn));
    }

    /* renamed from: a */
    public final void m4321a(C4450r c4450r, String str) {
        C2662s.m13981a(c4450r);
        mo4037o();
        m4711i();
        boolean m4339J = m4339J();
        m4320a(new RunnableC4379if(this, m4339J, m4339J && mo4277f().m4695a(c4450r), c4450r, m4316a(true), str));
    }

    /* renamed from: a */
    public final void m4319a(AtomicReference<String> atomicReference) {
        mo4037o();
        m4711i();
        m4320a(new RunnableC4374ia(this, atomicReference, m4316a(false)));
    }

    /* renamed from: a */
    public final void m4318a(AtomicReference<List<C4442kn>> atomicReference, String str, String str2, String str3) {
        mo4037o();
        m4711i();
        m4320a(new RunnableC4382ii(this, atomicReference, str, str2, str3, m4316a(false)));
    }

    /* renamed from: a */
    public final void m4317a(AtomicReference<List<C4423jv>> atomicReference, String str, String str2, String str3, boolean z) {
        mo4037o();
        m4711i();
        m4320a(new RunnableC4384ik(this, atomicReference, str, str2, str3, z, m4316a(false)));
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
