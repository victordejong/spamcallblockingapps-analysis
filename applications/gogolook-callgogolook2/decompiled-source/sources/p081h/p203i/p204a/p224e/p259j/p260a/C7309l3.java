package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzjo;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
/* renamed from: h.i.a.e.j.a.l3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/l3.class */
public final class C7309l3 extends AbstractC7418u3<AbstractC7322m4> {

    /* renamed from: b */
    public final /* synthetic */ Context f17373b;

    /* renamed from: c */
    public final /* synthetic */ zzjo f17374c;

    /* renamed from: d */
    public final /* synthetic */ String f17375d;

    /* renamed from: e */
    public final /* synthetic */ AbstractC7226ea f17376e;

    /* renamed from: f */
    public final /* synthetic */ C7297k3 f17377f;

    public C7309l3(C7297k3 k3Var, Context context, zzjo zzjoVar, String str, AbstractC7226ea eaVar) {
        this.f17377f = k3Var;
        this.f17373b = context;
        this.f17374c = zzjoVar;
        this.f17375d = str;
        this.f17376e = eaVar;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: a */
    public final /* synthetic */ AbstractC7322m4 mo20653a() {
        C7297k3.m20867a(this.f17373b, "banner");
        return new BinderC7287j6();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: a */
    public final /* synthetic */ AbstractC7322m4 mo20651a(AbstractC7455x4 x4Var) throws RemoteException {
        return x4Var.mo20457b(BinderC7110d.m21058a(this.f17373b), this.f17374c, this.f17375d, this.f17376e, 13000000);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: b */
    public final /* synthetic */ AbstractC7322m4 mo20650b() throws RemoteException {
        C7219e3 e3Var;
        e3Var = this.f17377f.f17359a;
        return e3Var.m20937a(this.f17373b, this.f17374c, this.f17375d, this.f17376e, 1);
    }
}
