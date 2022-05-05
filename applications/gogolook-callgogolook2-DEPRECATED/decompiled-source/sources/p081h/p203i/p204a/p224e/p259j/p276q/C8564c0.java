package p081h.p203i.p204a.p224e.p259j.p276q;

import android.app.Activity;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
import p081h.p203i.p204a.p224e.p259j.p276q.C8613h;
/* renamed from: h.i.a.e.j.q.c0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/c0.class */
public final class C8564c0 extends C8613h.AbstractRunnableC8615b {

    /* renamed from: e */
    public final /* synthetic */ Activity f19618e;

    /* renamed from: f */
    public final /* synthetic */ C8613h.C8616c f19619f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8564c0(C8613h.C8616c cVar, Activity activity) {
        super(C8613h.this);
        this.f19619f = cVar;
        this.f19618e = activity;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8613h.AbstractRunnableC8615b
    /* renamed from: a */
    public final void mo16955a() throws RemoteException {
        AbstractC8554b bVar;
        bVar = C8613h.this.f19724i;
        bVar.mo17713e(BinderC7110d.m21058a(this.f19618e), this.f19729b);
    }
}
