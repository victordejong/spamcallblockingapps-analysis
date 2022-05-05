package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzjo;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
/* renamed from: h.i.a.e.j.a.n3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/n3.class */
public final class C7333n3 extends AbstractC7418u3<AbstractC7322m4> {

    /* renamed from: b */
    public final /* synthetic */ Context f17394b;

    /* renamed from: c */
    public final /* synthetic */ zzjo f17395c;

    /* renamed from: d */
    public final /* synthetic */ String f17396d;

    /* renamed from: e */
    public final /* synthetic */ C7297k3 f17397e;

    public C7333n3(C7297k3 k3Var, Context context, zzjo zzjoVar, String str) {
        this.f17397e = k3Var;
        this.f17394b = context;
        this.f17395c = zzjoVar;
        this.f17396d = str;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: a */
    public final /* synthetic */ AbstractC7322m4 mo20653a() {
        C7297k3.m20867a(this.f17394b, "search");
        return new BinderC7287j6();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: a */
    public final /* synthetic */ AbstractC7322m4 mo20651a(AbstractC7455x4 x4Var) throws RemoteException {
        return x4Var.mo20461a(BinderC7110d.m21058a(this.f17394b), this.f17395c, this.f17396d, 13000000);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: b */
    public final /* synthetic */ AbstractC7322m4 mo20650b() throws RemoteException {
        C7219e3 e3Var;
        e3Var = this.f17397e.f17359a;
        return e3Var.m20937a(this.f17394b, this.f17395c, this.f17396d, null, 3);
    }
}
