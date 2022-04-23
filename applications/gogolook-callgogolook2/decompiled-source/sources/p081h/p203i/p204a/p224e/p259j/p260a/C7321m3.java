package p081h.p203i.p204a.p224e.p259j.p260a;

import android.app.Activity;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
/* renamed from: h.i.a.e.j.a.m3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/m3.class */
public final class C7321m3 extends AbstractC7418u3<AbstractC7164a0> {

    /* renamed from: b */
    public final /* synthetic */ Activity f17391b;

    /* renamed from: c */
    public final /* synthetic */ C7297k3 f17392c;

    public C7321m3(C7297k3 k3Var, Activity activity) {
        this.f17392c = k3Var;
        this.f17391b = activity;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: a */
    public final /* synthetic */ AbstractC7164a0 mo20653a() {
        C7297k3.m20867a(this.f17391b, "ad_overlay");
        return null;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: a */
    public final /* synthetic */ AbstractC7164a0 mo20651a(AbstractC7455x4 x4Var) throws RemoteException {
        return x4Var.mo20453i(BinderC7110d.m21058a(this.f17391b));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: b */
    public final /* synthetic */ AbstractC7164a0 mo20650b() throws RemoteException {
        C7474z zVar;
        zVar = this.f17392c.f17364f;
        return zVar.m20464a(this.f17391b);
    }
}
