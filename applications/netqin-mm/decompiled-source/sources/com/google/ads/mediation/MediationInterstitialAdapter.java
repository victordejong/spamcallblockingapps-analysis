package com.google.ads.mediation;

import android.app.Activity;
import com.google.ads.mediation.MediationServerParameters;
import p131c.p161d.p162a.p163b.AbstractC2457b;
import p131c.p161d.p162a.p163b.AbstractC2459d;
import p131c.p161d.p162a.p163b.AbstractC2460e;
import p131c.p161d.p162a.p163b.C2456a;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/MediationInterstitialAdapter.class */
public interface MediationInterstitialAdapter<ADDITIONAL_PARAMETERS extends AbstractC2460e, SERVER_PARAMETERS extends MediationServerParameters> extends AbstractC2457b<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS> {
    void requestInterstitialAd(AbstractC2459d dVar, Activity activity, SERVER_PARAMETERS server_parameters, C2456a aVar, ADDITIONAL_PARAMETERS additional_parameters);

    void showInterstitial();
}
