package p081h.p203i.p204a.p224e.p259j.p276q;

import android.app.Activity;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
import p081h.p203i.p204a.p224e.p259j.p276q.C8613h;
/* renamed from: h.i.a.e.j.q.d0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/d0.class */
public final class C8578d0 extends C8613h.AbstractRunnableC8615b {

    /* renamed from: e */
    public final /* synthetic */ Activity f19647e;

    /* renamed from: f */
    public final /* synthetic */ C8613h.C8616c f19648f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8578d0(C8613h.C8616c cVar, Activity activity) {
        super(C8613h.this);
        this.f19648f = cVar;
        this.f19647e = activity;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8613h.AbstractRunnableC8615b
    /* renamed from: a */
    public final void mo16955a() throws RemoteException {
        AbstractC8554b bVar;
        bVar = C8613h.this.f19724i;
        bVar.mo17715d(BinderC7110d.m21058a(this.f19647e), this.f19729b);
    }
}
