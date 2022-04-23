package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzboh;
import com.google.android.gms.internal.ads.zzbok;
import com.google.android.gms.internal.ads.zzdag;
import com.google.android.gms.internal.ads.zzdkc;
import com.google.android.gms.internal.ads.zzdko;
/* renamed from: c.d.b.d.g.a.gw */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/gw.class */
public final class C3597gw implements zzdag<zzboh> {

    /* renamed from: a */
    public final /* synthetic */ zzdko f13226a;

    public C3597gw(zzdko zzdkoVar) {
        this.f13226a = zzdkoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdag
    /* renamed from: a */
    public final void mo13703a() {
        synchronized (this.f13226a) {
            this.f13226a.f27460i = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdag
    public final /* synthetic */ void onSuccess(zzboh zzbohVar) {
        zzdkc zzdkcVar;
        zzdkc zzdkcVar2;
        zzboh zzbohVar2 = zzbohVar;
        synchronized (this.f13226a) {
            if (this.f13226a.f27460i != null) {
                this.f13226a.f27460i.mo14764a();
            }
            this.f13226a.f27460i = zzbohVar2;
            this.f13226a.m13533a(zzbohVar2);
            zzdkcVar = this.f13226a.f27457f;
            zzdko zzdkoVar = this.f13226a;
            zzdkcVar2 = this.f13226a.f27457f;
            zzdkcVar.m13542a(new zzbok(zzbohVar2, zzdkoVar, zzdkcVar2));
            zzbohVar2.mo14749b();
        }
    }
}
