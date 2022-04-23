package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzjo;
import com.mopub.common.AdType;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
/* renamed from: h.i.a.e.j.a.o3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/o3.class */
public final class C7345o3 extends AbstractC7418u3<AbstractC7322m4> {

    /* renamed from: b */
    public final /* synthetic */ Context f17408b;

    /* renamed from: c */
    public final /* synthetic */ zzjo f17409c;

    /* renamed from: d */
    public final /* synthetic */ String f17410d;

    /* renamed from: e */
    public final /* synthetic */ AbstractC7226ea f17411e;

    /* renamed from: f */
    public final /* synthetic */ C7297k3 f17412f;

    public C7345o3(C7297k3 k3Var, Context context, zzjo zzjoVar, String str, AbstractC7226ea eaVar) {
        this.f17412f = k3Var;
        this.f17408b = context;
        this.f17409c = zzjoVar;
        this.f17410d = str;
        this.f17411e = eaVar;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: a */
    public final /* synthetic */ AbstractC7322m4 mo20653a() {
        C7297k3.m20867a(this.f17408b, AdType.INTERSTITIAL);
        return new BinderC7287j6();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: a */
    public final /* synthetic */ AbstractC7322m4 mo20651a(AbstractC7455x4 x4Var) throws RemoteException {
        return x4Var.mo20460a(BinderC7110d.m21058a(this.f17408b), this.f17409c, this.f17410d, this.f17411e, 13000000);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: b */
    public final /* synthetic */ AbstractC7322m4 mo20650b() throws RemoteException {
        C7219e3 e3Var;
        e3Var = this.f17412f.f17359a;
        return e3Var.m20937a(this.f17408b, this.f17409c, this.f17410d, this.f17411e, 2);
    }
}
