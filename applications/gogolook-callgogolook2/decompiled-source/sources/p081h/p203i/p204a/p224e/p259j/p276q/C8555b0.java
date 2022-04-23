package p081h.p203i.p204a.p224e.p259j.p276q;

import android.app.Activity;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
import p081h.p203i.p204a.p224e.p259j.p276q.C8613h;
/* renamed from: h.i.a.e.j.q.b0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/b0.class */
public final class C8555b0 extends C8613h.AbstractRunnableC8615b {

    /* renamed from: e */
    public final /* synthetic */ Activity f19605e;

    /* renamed from: f */
    public final /* synthetic */ C8613h.C8616c f19606f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8555b0(C8613h.C8616c cVar, Activity activity) {
        super(C8613h.this);
        this.f19606f = cVar;
        this.f19605e = activity;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8613h.AbstractRunnableC8615b
    /* renamed from: a */
    public final void mo16955a() throws RemoteException {
        AbstractC8554b bVar;
        bVar = C8613h.this.f19724i;
        bVar.mo17717c(BinderC7110d.m21058a(this.f19605e), this.f19729b);
    }
}
