package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzvx;
import com.google.android.gms.internal.ads.zzxp;
import com.google.android.gms.internal.ads.zzxs;
import com.google.android.gms.internal.ads.zzzl;
import com.google.android.gms.internal.ads.zzzu;
/* renamed from: c.d.b.d.g.a.zh0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/zh0.class */
public final class zh0 extends bi0<zzxs> {

    /* renamed from: b */
    public final /* synthetic */ Context f16455b;

    /* renamed from: c */
    public final /* synthetic */ zzvx f16456c;

    public zh0(zzvx zzvxVar, Context context) {
        this.f16456c = zzvxVar;
        this.f16455b = context;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: a */
    public final /* synthetic */ zzxs mo26004a() {
        zzvx.m11182a(this.f16455b, "mobile_ads_settings");
        return new zzzu();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: a */
    public final /* synthetic */ zzxs mo26003a(zzxp zzxpVar) throws RemoteException {
        return zzxpVar.mo11127d(ObjectWrapper.m17020a(this.f16455b), 202510000);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: b */
    public final /* synthetic */ zzxs mo26002b() throws RemoteException {
        zzzl zzzlVar;
        zzzlVar = this.f16456c.f29063c;
        return zzzlVar.m10985b(this.f16455b);
    }
}
