package p081h.p203i.p204a.p224e.p259j.p276q;

import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p259j.p276q.C8613h;
/* renamed from: h.i.a.e.j.q.w */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/w.class */
public final class C8760w extends C8613h.AbstractRunnableC8615b {

    /* renamed from: e */
    public final /* synthetic */ String f20027e;

    /* renamed from: f */
    public final /* synthetic */ C8613h.BinderC8614a f20028f;

    /* renamed from: g */
    public final /* synthetic */ C8613h f20029g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8760w(C8613h hVar, String str, C8613h.BinderC8614a aVar) {
        super(hVar);
        this.f20029g = hVar;
        this.f20027e = str;
        this.f20028f = aVar;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8613h.AbstractRunnableC8615b
    /* renamed from: a */
    public final void mo16955a() throws RemoteException {
        AbstractC8554b bVar;
        bVar = this.f20029g.f19724i;
        bVar.mo17726a(this.f20027e, this.f20028f);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8613h.AbstractRunnableC8615b
    /* renamed from: b */
    public final void mo17091b() {
        this.f20028f.mo17575h(null);
    }
}
