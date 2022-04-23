package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.internal.ads.zzapx;
import com.google.android.gms.internal.ads.zzbbq;
/* renamed from: c.d.b.d.g.a.g3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/g3.class */
public final class C3568g3 implements zzp {

    /* renamed from: a */
    public final /* synthetic */ zzapx f13013a;

    public C3568g3(zzapx zzapxVar) {
        this.f13013a = zzapxVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    /* renamed from: B1 */
    public final void mo13537B1() {
        MediationInterstitialListener mediationInterstitialListener;
        zzbbq.m15858a("AdMobCustomTabsAdapter overlay is closed.");
        mediationInterstitialListener = this.f13013a.f24247b;
        mediationInterstitialListener.mo16602d(this.f13013a);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
        zzbbq.m15858a("AdMobCustomTabsAdapter overlay is paused.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
        zzbbq.m15858a("AdMobCustomTabsAdapter overlay is resumed.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    /* renamed from: u1 */
    public final void mo13529u1() {
        MediationInterstitialListener mediationInterstitialListener;
        zzbbq.m15858a("Opening AdMobCustomTabsAdapter overlay.");
        mediationInterstitialListener = this.f13013a.f24247b;
        mediationInterstitialListener.mo16599e(this.f13013a);
    }
}
