package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
/* renamed from: h.i.a.e.j.a.p3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/p3.class */
public final class C7357p3 extends AbstractC7418u3<AbstractC7259h4> {

    /* renamed from: b */
    public final /* synthetic */ Context f17421b;

    /* renamed from: c */
    public final /* synthetic */ String f17422c;

    /* renamed from: d */
    public final /* synthetic */ AbstractC7226ea f17423d;

    /* renamed from: e */
    public final /* synthetic */ C7297k3 f17424e;

    public C7357p3(C7297k3 k3Var, Context context, String str, AbstractC7226ea eaVar) {
        this.f17424e = k3Var;
        this.f17421b = context;
        this.f17422c = str;
        this.f17423d = eaVar;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: a */
    public final /* synthetic */ AbstractC7259h4 mo20653a() {
        C7297k3.m20867a(this.f17421b, "native_ad");
        return new BinderC7235f6();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: a */
    public final /* synthetic */ AbstractC7259h4 mo20651a(AbstractC7455x4 x4Var) throws RemoteException {
        return x4Var.mo20458a(BinderC7110d.m21058a(this.f17421b), this.f17422c, this.f17423d, 13000000);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: b */
    public final /* synthetic */ AbstractC7259h4 mo20650b() throws RemoteException {
        C7206d3 d3Var;
        d3Var = this.f17424e.f17360b;
        return d3Var.m20944a(this.f17421b, this.f17422c, this.f17423d);
    }
}
