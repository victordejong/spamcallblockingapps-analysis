package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.os.RemoteException;
import com.mopub.common.AdType;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
/* renamed from: h.i.a.e.j.a.t3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/t3.class */
public final class C7406t3 extends AbstractC7418u3<AbstractC7415u0> {

    /* renamed from: b */
    public final /* synthetic */ Context f17463b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC7226ea f17464c;

    /* renamed from: d */
    public final /* synthetic */ C7297k3 f17465d;

    public C7406t3(C7297k3 k3Var, Context context, AbstractC7226ea eaVar) {
        this.f17465d = k3Var;
        this.f17463b = context;
        this.f17464c = eaVar;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: a */
    public final /* synthetic */ AbstractC7415u0 mo20653a() {
        C7297k3.m20867a(this.f17463b, AdType.REWARDED_VIDEO);
        return new BinderC7348o6();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: a */
    public final /* synthetic */ AbstractC7415u0 mo20651a(AbstractC7455x4 x4Var) throws RemoteException {
        return x4Var.mo20456b(BinderC7110d.m21058a(this.f17463b), this.f17464c, 13000000);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: b */
    public final /* synthetic */ AbstractC7415u0 mo20650b() throws RemoteException {
        C7204d1 d1Var;
        d1Var = this.f17465d.f17363e;
        return d1Var.m20963a(this.f17463b, this.f17464c);
    }
}
