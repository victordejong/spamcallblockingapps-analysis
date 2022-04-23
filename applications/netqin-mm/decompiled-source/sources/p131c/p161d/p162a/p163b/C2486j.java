package p131c.p161d.p162a.p163b;

import android.os.Bundle;
import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
/* renamed from: c.d.a.b.j */
/* loaded from: classes-dex2jar.jar:c/d/a/b/j.class */
public final class C2486j extends AdMetadataListener {

    /* renamed from: a */
    public final /* synthetic */ AbstractAdViewAdapter f9471a;

    public C2486j(AbstractAdViewAdapter abstractAdViewAdapter) {
        this.f9471a = abstractAdViewAdapter;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    /* renamed from: a */
    public final void mo13510a() {
        InterstitialAd interstitialAd;
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        InterstitialAd interstitialAd2;
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener2;
        interstitialAd = this.f9471a.zzmm;
        if (interstitialAd != null) {
            mediationRewardedVideoAdListener = this.f9471a.zzmn;
            if (mediationRewardedVideoAdListener != null) {
                interstitialAd2 = this.f9471a.zzmm;
                Bundle b = interstitialAd2.m18110b();
                mediationRewardedVideoAdListener2 = this.f9471a.zzmn;
                mediationRewardedVideoAdListener2.mo16324c(b);
            }
        }
    }
}
