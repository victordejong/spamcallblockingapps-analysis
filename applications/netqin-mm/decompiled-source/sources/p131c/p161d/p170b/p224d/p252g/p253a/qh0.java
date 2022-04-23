package p131c.p161d.p170b.p224d.p252g.p253a;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzaqy;
import com.google.android.gms.internal.ads.zzaqz;
import com.google.android.gms.internal.ads.zzvx;
import com.google.android.gms.internal.ads.zzxp;
/* renamed from: c.d.b.d.g.a.qh0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/qh0.class */
public final class qh0 extends bi0<zzaqy> {

    /* renamed from: b */
    public final /* synthetic */ Activity f14821b;

    /* renamed from: c */
    public final /* synthetic */ zzvx f14822c;

    public qh0(zzvx zzvxVar, Activity activity) {
        this.f14822c = zzvxVar;
        this.f14821b = activity;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: a */
    public final /* synthetic */ zzaqy mo26004a() {
        zzvx.m11182a(this.f14821b, "ad_overlay");
        return null;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: a */
    public final /* synthetic */ zzaqy mo26003a(zzxp zzxpVar) throws RemoteException {
        return zzxpVar.mo11125f(ObjectWrapper.m17020a(this.f14821b));
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: b */
    public final /* synthetic */ zzaqy mo26002b() throws RemoteException {
        zzaqz zzaqzVar;
        zzaqzVar = this.f14822c.f29066f;
        return zzaqzVar.m16408a(this.f14821b);
    }
}
