package p198p2;

import com.facebook.ads.AdExperienceType;
import com.google.ads.mediation.facebook.C1663b;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
/* renamed from: p2.a */
/* loaded from: classes-dex2jar.jar:p2/a.class */
public class C4011a extends C1663b {
    public C4011a(MediationRewardedAdConfiguration mediationRewardedAdConfiguration, MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        super(mediationRewardedAdConfiguration, mediationAdLoadCallback);
    }

    @Override // com.google.ads.mediation.facebook.C1663b
    /* renamed from: a */
    public AdExperienceType mo1519a() {
        return AdExperienceType.AD_EXPERIENCE_TYPE_REWARDED_INTERSTITIAL;
    }
}
