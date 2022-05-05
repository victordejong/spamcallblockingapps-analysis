package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import com.google.android.gms.common.ConnectionResult;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: h.i.a.e.d.k.q.f0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/f0.class */
public final class C6866f0 extends AbstractC6942x0 {

    /* renamed from: b */
    public final /* synthetic */ ConnectionResult f16835b;

    /* renamed from: c */
    public final /* synthetic */ C6862e0 f16836c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6866f0(C6862e0 e0Var, AbstractC6934v0 v0Var, ConnectionResult connectionResult) {
        super(v0Var);
        this.f16836c = e0Var;
        this.f16835b = connectionResult;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6942x0
    @GuardedBy("mLock")
    /* renamed from: a */
    public final void mo21471a() {
        this.f16836c.f16824c.m21792b(this.f16835b);
    }
}
