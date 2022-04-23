package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzboq;
import com.google.android.gms.internal.ads.zzbpm;
import com.google.android.gms.internal.ads.zzbug;
import com.google.android.gms.internal.ads.zzcun;
import com.google.android.gms.internal.ads.zzdox;
import com.google.android.gms.internal.ads.zzdyr;
import com.google.android.gms.internal.ads.zzva;
/* renamed from: c.d.b.d.g.a.dp */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/dp.class */
public final class C3479dp implements zzdyr<zzboq> {

    /* renamed from: a */
    public final /* synthetic */ zzcun f12764a;

    public C3479dp(zzcun zzcunVar) {
        this.f12764a = zzcunVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    /* renamed from: a */
    public final void mo12980a(Throwable th) {
        zzbpm zzbpmVar;
        zzbug zzbugVar;
        zzbpmVar = this.f12764a.f26552a;
        zzva a = zzbpmVar.mo15207a().m15124a(th);
        zzbugVar = this.f12764a.f26555d;
        zzbugVar.mo13335a(a);
        zzdox.m13387a(a.f28995a, th, "DelayedBannerAd.onFailure");
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    public final /* synthetic */ void onSuccess(zzboq zzboqVar) {
        zzboqVar.mo14749b();
    }
}
