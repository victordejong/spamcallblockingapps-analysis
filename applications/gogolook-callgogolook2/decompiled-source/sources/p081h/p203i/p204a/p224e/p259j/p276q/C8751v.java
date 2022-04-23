package p081h.p203i.p204a.p224e.p259j.p276q;

import android.os.Bundle;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p259j.p276q.C8613h;
/* renamed from: h.i.a.e.j.q.v */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/v.class */
public final class C8751v extends C8613h.AbstractRunnableC8615b {

    /* renamed from: e */
    public final /* synthetic */ Bundle f20013e;

    /* renamed from: f */
    public final /* synthetic */ C8613h.BinderC8614a f20014f;

    /* renamed from: g */
    public final /* synthetic */ C8613h f20015g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8751v(C8613h hVar, Bundle bundle, C8613h.BinderC8614a aVar) {
        super(hVar);
        this.f20015g = hVar;
        this.f20013e = bundle;
        this.f20014f = aVar;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8613h.AbstractRunnableC8615b
    /* renamed from: a */
    public final void mo16955a() throws RemoteException {
        AbstractC8554b bVar;
        bVar = this.f20015g.f19724i;
        bVar.mo17734a(this.f20013e, this.f20014f, this.f19728a);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8613h.AbstractRunnableC8615b
    /* renamed from: b */
    public final void mo17091b() {
        this.f20014f.mo17575h(null);
    }
}
