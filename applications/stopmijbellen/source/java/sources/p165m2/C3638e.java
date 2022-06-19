package p165m2;

import android.content.Context;
import android.util.Log;
import com.google.ads.mediation.adcolony.AdColonyMediationAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import java.util.concurrent.ExecutorService;
import p068d2.C2168b;
import p068d2.C2387q;
import p068d2.C2408t;
/* renamed from: m2.e */
/* loaded from: classes-dex2jar.jar:m2/e.class */
public class C3638e implements MediationRewardedAd {

    /* renamed from: a */
    public MediationRewardedAdCallback f11913a;

    /* renamed from: b */
    public final MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> f11914b;

    /* renamed from: c */
    public final MediationRewardedAdConfiguration f11915c;

    /* renamed from: d */
    public C2387q f11916d;

    public C3638e(MediationRewardedAdConfiguration mediationRewardedAdConfiguration, MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        this.f11915c = mediationRewardedAdConfiguration;
        this.f11914b = mediationAdLoadCallback;
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAd
    public void showAd(Context context) {
        if (this.f11916d == null) {
            AdError createAdapterError = AdColonyMediationAdapter.createAdapterError(105, "No ad to show.");
            Log.w(AdColonyMediationAdapter.TAG, createAdapterError.getMessage());
            this.f11913a.onAdFailedToShow(createAdapterError);
            return;
        }
        ExecutorService executorService = C2168b.f7919a;
        if ((!C2408t.f8533c ? null : C2408t.m3591d().f8101p) != C3636c.m1950M()) {
            Log.w(AdColonyMediationAdapter.TAG, "AdColony's reward listener has been changed since load time. Setting the listener back to the Google AdColony adapter to be able to detect rewarded events.");
            C2168b.m3785m(C3636c.m1950M());
        }
        this.f11916d.m3614d();
    }
}
