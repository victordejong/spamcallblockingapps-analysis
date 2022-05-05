package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
/* renamed from: h.i.a.e.j.a.q3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/q3.class */
public final class C7370q3 extends AbstractC7418u3<AbstractC7208d5> {

    /* renamed from: b */
    public final /* synthetic */ Context f17429b;

    /* renamed from: c */
    public final /* synthetic */ C7297k3 f17430c;

    public C7370q3(C7297k3 k3Var, Context context) {
        this.f17430c = k3Var;
        this.f17429b = context;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: a */
    public final /* synthetic */ AbstractC7208d5 mo20653a() {
        C7297k3.m20867a(this.f17429b, "mobile_ads_settings");
        return new BinderC7312l6();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: a */
    public final /* synthetic */ AbstractC7208d5 mo20651a(AbstractC7455x4 x4Var) throws RemoteException {
        return x4Var.mo20454d(BinderC7110d.m21058a(this.f17429b), 13000000);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: b */
    public final /* synthetic */ AbstractC7208d5 mo20650b() throws RemoteException {
        C7222e6 e6Var;
        e6Var = this.f17430c.f17361c;
        return e6Var.m20936b(this.f17429b);
    }
}
