package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzayp;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzcqm;
import com.google.android.gms.internal.ads.zzdlt;
import com.google.android.gms.internal.ads.zzdvu;
/* renamed from: c.d.b.d.g.a.ww */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ww.class */
public final class C4193ww implements zzdvu<zzcqm, zzdlt> {

    /* renamed from: a */
    public final /* synthetic */ C4119uw f15977a;

    public C4193ww(C4119uw uwVar) {
        this.f15977a = uwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdvu
    public final /* synthetic */ zzdlt apply(zzcqm zzcqmVar) {
        zzbbq.m15855b("", zzcqmVar);
        zzayp.m16153g("Failed to get a cache key, reverting to legacy flow.");
        C4119uw uwVar = this.f15977a;
        C4119uw.m26233a(uwVar, new zzdlt(null, C4119uw.m26234a(uwVar), null));
        return C4119uw.m26231b(this.f15977a);
    }
}
