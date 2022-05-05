package p081h.p203i.p204a.p224e.p259j.p276q;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
import p081h.p203i.p204a.p224e.p259j.p276q.C8613h;
/* renamed from: h.i.a.e.j.q.a0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/a0.class */
public final class C8546a0 extends C8613h.AbstractRunnableC8615b {

    /* renamed from: e */
    public final /* synthetic */ Activity f19558e;

    /* renamed from: f */
    public final /* synthetic */ Bundle f19559f;

    /* renamed from: g */
    public final /* synthetic */ C8613h.C8616c f19560g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8546a0(C8613h.C8616c cVar, Activity activity, Bundle bundle) {
        super(C8613h.this);
        this.f19560g = cVar;
        this.f19558e = activity;
        this.f19559f = bundle;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8613h.AbstractRunnableC8615b
    /* renamed from: a */
    public final void mo16955a() throws RemoteException {
        AbstractC8554b bVar;
        bVar = C8613h.this.f19724i;
        bVar.mo17732a(BinderC7110d.m21058a(this.f19558e), this.f19559f, this.f19729b);
    }
}
