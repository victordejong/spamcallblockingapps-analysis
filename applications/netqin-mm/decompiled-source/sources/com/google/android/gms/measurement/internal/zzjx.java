package com.google.android.gms.measurement.internal;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.measurement.zzq;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4827u3;
import p131c.p161d.p170b.p224d.p260i.p261a.C4655b7;
import p131c.p161d.p170b.p224d.p260i.p261a.C4714h7;
import p131c.p161d.p170b.p224d.p260i.p261a.C4732j7;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjx.class */
public final class zzjx extends AbstractC4827u3 {

    /* renamed from: c */
    public Handler f30102c;

    /* renamed from: d */
    public final C4732j7 f30103d = new C4732j7(this);

    /* renamed from: e */
    public final C4714h7 f30104e = new C4714h7(this);

    /* renamed from: f */
    public final C4655b7 f30105f = new C4655b7(this);

    public zzjx(zzfu zzfuVar) {
        super(zzfuVar);
    }

    /* renamed from: a */
    public final long m8862a(long j) {
        return this.f30104e.m24941c(j);
    }

    /* renamed from: a */
    public final boolean m8859a(boolean z, boolean z2, long j) {
        return this.f30104e.m24945a(z, z2, j);
    }

    /* renamed from: b */
    public final void m8858b(long j) {
        mo9085c();
        m8853y();
        mo8789p().m9144y().m9142a("Activity resumed, time", Long.valueOf(j));
        if (m24897h().m9354a(zzas.f29900v0)) {
            if (m24897h().m9331n().booleanValue() || m24898g().f17229w.m9133a()) {
                this.f30104e.m24947a(j);
            }
            this.f30105f.m25107a();
        } else {
            this.f30105f.m25107a();
            if (m24897h().m9331n().booleanValue()) {
                this.f30104e.m24947a(j);
            }
        }
        C4732j7 j7Var = this.f30103d;
        j7Var.f17200a.mo9085c();
        if (j7Var.f17200a.f17262a.m9058c()) {
            if (!j7Var.f17200a.m24897h().m9354a(zzas.f29900v0)) {
                j7Var.f17200a.m24898g().f17229w.m9132a(false);
            }
            j7Var.m24933a(j7Var.f17200a.mo8779z().mo17091b(), false);
        }
    }

    /* renamed from: c */
    public final void m8855c(long j) {
        mo9085c();
        m8853y();
        mo8789p().m9144y().m9142a("Activity paused, time", Long.valueOf(j));
        this.f30105f.m25106a(j);
        if (m24897h().m9331n().booleanValue()) {
            this.f30104e.m24943b(j);
        }
        C4732j7 j7Var = this.f30103d;
        if (!j7Var.f17200a.m24897h().m9354a(zzas.f29900v0)) {
            j7Var.f17200a.m24898g().f17229w.m9132a(true);
        }
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4827u3
    /* renamed from: w */
    public final boolean mo8854w() {
        return false;
    }

    /* renamed from: y */
    public final void m8853y() {
        mo9085c();
        if (this.f30102c == null) {
            this.f30102c = new zzq(Looper.getMainLooper());
        }
    }
}
