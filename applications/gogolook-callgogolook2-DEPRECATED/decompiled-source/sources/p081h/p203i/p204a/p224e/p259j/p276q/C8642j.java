package p081h.p203i.p204a.p224e.p259j.p276q;

import android.os.Bundle;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p259j.p276q.C8613h;
/* renamed from: h.i.a.e.j.q.j */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/j.class */
public final class C8642j extends C8613h.AbstractRunnableC8615b {

    /* renamed from: e */
    public final /* synthetic */ String f19777e;

    /* renamed from: f */
    public final /* synthetic */ String f19778f;

    /* renamed from: g */
    public final /* synthetic */ Bundle f19779g;

    /* renamed from: h */
    public final /* synthetic */ C8613h f19780h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8642j(C8613h hVar, String str, String str2, Bundle bundle) {
        super(hVar);
        this.f19780h = hVar;
        this.f19777e = str;
        this.f19778f = str2;
        this.f19779g = bundle;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8613h.AbstractRunnableC8615b
    /* renamed from: a */
    public final void mo16955a() throws RemoteException {
        AbstractC8554b bVar;
        bVar = this.f19780h.f19724i;
        bVar.mo17725a(this.f19777e, this.f19778f, this.f19779g);
    }
}
