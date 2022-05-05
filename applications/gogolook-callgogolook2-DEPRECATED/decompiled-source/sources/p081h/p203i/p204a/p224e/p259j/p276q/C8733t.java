package p081h.p203i.p204a.p224e.p259j.p276q;

import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p259j.p276q.C8613h;
/* renamed from: h.i.a.e.j.q.t */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/t.class */
public final class C8733t extends C8613h.AbstractRunnableC8615b {

    /* renamed from: e */
    public final /* synthetic */ String f19972e;

    /* renamed from: f */
    public final /* synthetic */ String f19973f;

    /* renamed from: g */
    public final /* synthetic */ boolean f19974g;

    /* renamed from: h */
    public final /* synthetic */ C8613h.BinderC8614a f19975h;

    /* renamed from: i */
    public final /* synthetic */ C8613h f19976i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8733t(C8613h hVar, String str, String str2, boolean z, C8613h.BinderC8614a aVar) {
        super(hVar);
        this.f19976i = hVar;
        this.f19972e = str;
        this.f19973f = str2;
        this.f19974g = z;
        this.f19975h = aVar;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8613h.AbstractRunnableC8615b
    /* renamed from: a */
    public final void mo16955a() throws RemoteException {
        AbstractC8554b bVar;
        bVar = this.f19976i.f19724i;
        bVar.mo17721a(this.f19972e, this.f19973f, this.f19974g, this.f19975h);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8613h.AbstractRunnableC8615b
    /* renamed from: b */
    public final void mo17091b() {
        this.f19975h.mo17575h(null);
    }
}
