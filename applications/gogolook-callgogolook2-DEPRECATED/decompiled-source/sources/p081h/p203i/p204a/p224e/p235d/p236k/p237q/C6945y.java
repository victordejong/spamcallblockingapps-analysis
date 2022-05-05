package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.C7025v;
/* renamed from: h.i.a.e.d.k.q.y */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/y.class */
public final class C6945y implements AbstractC6934v0 {

    /* renamed from: a */
    public final C6938w0 f17027a;

    /* renamed from: b */
    public boolean f17028b = false;

    public C6945y(C6938w0 w0Var) {
        this.f17027a = w0Var;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6934v0
    /* renamed from: a */
    public final <A extends C6805a.AbstractC6807b, T extends AbstractC6850c<? extends AbstractC6835k, A>> T mo21484a(T t) {
        try {
            this.f17027a.f17010n.f16909y.m21500a(t);
            C6902n0 n0Var = this.f17027a.f17010n;
            C6805a.AbstractC6816f fVar = n0Var.f16900p.get(t.m21768i());
            C7021t.m21289a(fVar, "Appropriate Api was not requested.");
            if (fVar.isConnected() || !this.f17027a.f17003g.containsKey(t.m21768i())) {
                A a = fVar;
                if (fVar instanceof C7025v) {
                    a = ((C7025v) fVar).m21276E();
                }
                t.m21772b(a);
            } else {
                t.m21771c(new Status(17));
            }
        } catch (DeadObjectException e) {
            this.f17027a.m21513a(new C6949z(this, this));
        }
        return t;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6934v0
    /* renamed from: a */
    public final void mo21486a() {
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6934v0
    /* renamed from: a */
    public final void mo21485a(ConnectionResult connectionResult, C6805a<?> aVar, boolean z) {
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6934v0
    /* renamed from: b */
    public final <A extends C6805a.AbstractC6807b, R extends AbstractC6835k, T extends AbstractC6850c<R, A>> T mo21481b(T t) {
        mo21484a((C6945y) t);
        return t;
    }

    /* renamed from: b */
    public final void m21482b() {
        if (this.f17028b) {
            this.f17028b = false;
            this.f17027a.f17010n.f16909y.m21501a();
            disconnect();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6934v0
    public final void connect() {
        if (this.f17028b) {
            this.f17028b = false;
            this.f17027a.m21513a(new C6842a0(this, this));
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6934v0
    public final boolean disconnect() {
        if (this.f17028b) {
            return false;
        }
        if (this.f17027a.f17010n.m21629p()) {
            this.f17028b = true;
            for (C6927t1 t1Var : this.f17027a.f17010n.f16908x) {
                t1Var.m21566a();
            }
            return false;
        }
        this.f17027a.m21518a((ConnectionResult) null);
        return true;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6934v0
    /* renamed from: f */
    public final void mo21480f(int i) {
        this.f17027a.m21518a((ConnectionResult) null);
        this.f17027a.f17011o.mo21583a(i, this.f17028b);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6934v0
    /* renamed from: j */
    public final void mo21479j(Bundle bundle) {
    }
}
