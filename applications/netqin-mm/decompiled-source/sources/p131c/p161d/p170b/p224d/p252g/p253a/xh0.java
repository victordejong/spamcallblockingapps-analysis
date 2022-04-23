package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzanb;
import com.google.android.gms.internal.ads.zzve;
import com.google.android.gms.internal.ads.zzvn;
import com.google.android.gms.internal.ads.zzvx;
import com.google.android.gms.internal.ads.zzxc;
import com.google.android.gms.internal.ads.zzxp;
import com.google.android.gms.internal.ads.zzzs;
import com.mopub.common.AdType;
/* renamed from: c.d.b.d.g.a.xh0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/xh0.class */
public final class xh0 extends bi0<zzxc> {

    /* renamed from: b */
    public final /* synthetic */ Context f16046b;

    /* renamed from: c */
    public final /* synthetic */ zzvn f16047c;

    /* renamed from: d */
    public final /* synthetic */ String f16048d;

    /* renamed from: e */
    public final /* synthetic */ zzanb f16049e;

    /* renamed from: f */
    public final /* synthetic */ zzvx f16050f;

    public xh0(zzvx zzvxVar, Context context, zzvn zzvnVar, String str, zzanb zzanbVar) {
        this.f16050f = zzvxVar;
        this.f16046b = context;
        this.f16047c = zzvnVar;
        this.f16048d = str;
        this.f16049e = zzanbVar;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: a */
    public final /* synthetic */ zzxc mo26004a() {
        zzvx.m11182a(this.f16046b, AdType.INTERSTITIAL);
        return new zzzs();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: a */
    public final /* synthetic */ zzxc mo26003a(zzxp zzxpVar) throws RemoteException {
        return zzxpVar.mo11128c(ObjectWrapper.m17020a(this.f16046b), this.f16047c, this.f16048d, this.f16049e, 202510000);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: b */
    public final /* synthetic */ zzxc mo26002b() throws RemoteException {
        zzve zzveVar;
        zzveVar = this.f16050f.f29061a;
        return zzveVar.m11204a(this.f16046b, this.f16047c, this.f16048d, this.f16049e, 2);
    }
}
