package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.internal.ads.zzanh;
import com.google.android.gms.internal.ads.zzavu;
import com.google.android.gms.internal.ads.zzbbq;
/* renamed from: c.d.b.d.g.a.e3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/e3.class */
public final class C3494e3 implements MediationBannerAdCallback, MediationInterstitialAdCallback, MediationNativeAdCallback, MediationRewardedAdCallback {

    /* renamed from: a */
    public zzanh f12797a;

    public C3494e3(zzanh zzanhVar) {
        this.f12797a = zzanhVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    /* renamed from: A */
    public final void mo16292A() {
        try {
            this.f12797a.mo13796A();
        } catch (RemoteException e) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    /* renamed from: B */
    public final void mo16291B() {
        try {
            this.f12797a.mo13795M();
        } catch (RemoteException e) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    /* renamed from: C */
    public final void mo16290C() {
        try {
            this.f12797a.onAdClicked();
        } catch (RemoteException e) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    /* renamed from: a */
    public final void mo16289a(RewardItem rewardItem) {
        try {
            this.f12797a.mo13787a(new zzavu(rewardItem));
        } catch (RemoteException e) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    /* renamed from: a */
    public final void mo16288a(String str) {
        try {
            String valueOf = String.valueOf(str);
            zzbbq.m15852d(valueOf.length() != 0 ? "Mediated ad failed to show: ".concat(valueOf) : new String("Mediated ad failed to show: "));
            this.f12797a.mo13774y(str);
        } catch (RemoteException e) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    /* renamed from: j0 */
    public final void mo16287j0() {
        try {
            this.f12797a.mo13793X1();
        } catch (RemoteException e) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdCallback, com.google.android.gms.ads.mediation.MediationInterstitialAdCallback
    /* renamed from: k */
    public final void mo17931k() {
        try {
            this.f12797a.mo13779k();
        } catch (RemoteException e) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onVideoComplete() {
        try {
            this.f12797a.mo13781h0();
        } catch (RemoteException e) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    /* renamed from: t */
    public final void mo16286t() {
        try {
            this.f12797a.mo13776t();
        } catch (RemoteException e) {
        }
    }
}
