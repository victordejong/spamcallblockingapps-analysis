package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.d.k.q.m2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/m2.class */
public final class C6900m2 implements AbstractC6825f.AbstractC6827b, AbstractC6825f.AbstractC6828c {

    /* renamed from: a */
    public final C6805a<?> f16883a;

    /* renamed from: b */
    public final boolean f16884b;

    /* renamed from: c */
    public AbstractC6904n2 f16885c;

    public C6900m2(C6805a<?> aVar, boolean z) {
        this.f16883a = aVar;
        this.f16884b = z;
    }

    /* renamed from: a */
    public final void m21653a() {
        C7021t.m21289a(this.f16885c, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client.");
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f.AbstractC6828c
    /* renamed from: a */
    public final void mo21591a(@NonNull ConnectionResult connectionResult) {
        m21653a();
        this.f16885c.mo21517a(connectionResult, this.f16883a, this.f16884b);
    }

    /* renamed from: a */
    public final void m21652a(AbstractC6904n2 n2Var) {
        this.f16885c = n2Var;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f.AbstractC6827b
    /* renamed from: f */
    public final void mo21503f(int i) {
        m21653a();
        this.f16885c.mo21503f(i);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f.AbstractC6827b
    /* renamed from: j */
    public final void mo21502j(@Nullable Bundle bundle) {
        m21653a();
        this.f16885c.mo21502j(bundle);
    }
}
