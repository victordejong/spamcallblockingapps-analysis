package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import androidx.p013b.C0373a;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.util.AbstractC2708e;
import java.util.Map;
/* renamed from: com.google.android.gms.measurement.internal.ab */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ab.class */
public final class C4159ab extends C4271ef {

    /* renamed from: c */
    private long f18578c;

    /* renamed from: b */
    private final Map<String, Integer> f18577b = new C0373a();

    /* renamed from: a */
    private final Map<String, Long> f18576a = new C0373a();

    public C4159ab(C4296fd c4296fd) {
        super(c4296fd);
    }

    /* renamed from: a */
    private final void m4816a(long j, C4362hp c4362hp) {
        if (c4362hp == null) {
            mo4030v().m4657j().m4654a("Not logging ad exposure. No active activity");
        } else if (j < 1000) {
            mo4030v().m4657j().m4653a("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("_xt", j);
            C4361ho.m4357a(c4362hp, bundle, true);
            mo4284b().m4405a("am", "_xa", bundle);
        }
    }

    /* renamed from: a */
    private final void m4812a(String str, long j, C4362hp c4362hp) {
        if (c4362hp == null) {
            mo4030v().m4657j().m4654a("Not logging ad unit exposure. No active activity");
        } else if (j < 1000) {
            mo4030v().m4657j().m4653a("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str);
            bundle.putLong("_xt", j);
            C4361ho.m4357a(c4362hp, bundle, true);
            mo4284b().m4405a("am", "_xu", bundle);
        }
    }

    /* renamed from: b */
    public final void m4811b(long j) {
        for (String str : this.f18576a.keySet()) {
            this.f18576a.put(str, Long.valueOf(j));
        }
        if (!this.f18576a.isEmpty()) {
            this.f18578c = j;
        }
    }

    /* renamed from: c */
    public final void m4808c(String str, long j) {
        mo4039m();
        mo4037o();
        C2662s.m13979a(str);
        if (this.f18577b.isEmpty()) {
            this.f18578c = j;
        }
        Integer num = this.f18577b.get(str);
        if (num != null) {
            this.f18577b.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (this.f18577b.size() >= 100) {
            mo4030v().m4662e().m4654a("Too many ads visible");
        } else {
            this.f18577b.put(str, 1);
            this.f18576a.put(str, Long.valueOf(j));
        }
    }

    /* renamed from: d */
    public final void m4807d(String str, long j) {
        mo4039m();
        mo4037o();
        C2662s.m13979a(str);
        Integer num = this.f18577b.get(str);
        if (num == null) {
            mo4030v().m4655x_().m4653a("Call to endAdUnitExposure for unknown ad unit id", str);
            return;
        }
        C4362hp m4352a = mo4278e().m4352a(false);
        int intValue = num.intValue() - 1;
        if (intValue != 0) {
            this.f18577b.put(str, Integer.valueOf(intValue));
            return;
        }
        this.f18577b.remove(str);
        Long l = this.f18576a.get(str);
        if (l == null) {
            mo4030v().m4655x_().m4654a("First ad unit exposure time was never set");
        } else {
            long longValue = l.longValue();
            this.f18576a.remove(str);
            m4812a(str, j - longValue, m4352a);
        }
        if (!this.f18577b.isEmpty()) {
            return;
        }
        if (this.f18578c == 0) {
            mo4030v().m4655x_().m4654a("First ad exposure time was never set");
            return;
        }
        m4816a(j - this.f18578c, m4352a);
        this.f18578c = 0L;
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C4159ab mo4289a() {
        return super.mo4289a();
    }

    /* renamed from: a */
    public final void m4817a(long j) {
        C4362hp m4352a = mo4278e().m4352a(false);
        for (String str : this.f18576a.keySet()) {
            m4812a(str, j - this.f18576a.get(str).longValue(), m4352a);
        }
        if (!this.f18576a.isEmpty()) {
            m4816a(j - this.f18578c, m4352a);
        }
        m4811b(j);
    }

    /* renamed from: a */
    public final void m4813a(String str, long j) {
        if (str == null || str.length() == 0) {
            mo4030v().m4655x_().m4654a("Ad unit id must be a non-empty string");
        } else {
            mo4031u().m4587a(new RunnableC4157a(this, str, j));
        }
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ C4330gk mo4284b() {
        return super.mo4284b();
    }

    /* renamed from: b */
    public final void m4809b(String str, long j) {
        if (str == null || str.length() == 0) {
            mo4030v().m4655x_().m4654a("Ad unit id must be a non-empty string");
        } else {
            mo4031u().m4587a(new RunnableC4215cd(this, str, j));
        }
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
}
