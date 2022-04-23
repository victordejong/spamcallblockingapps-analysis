package com.google.ads.mediation;

import android.app.Activity;
import android.view.View;
import com.google.ads.mediation.MediationServerParameters;
import p131c.p161d.p162a.C2455a;
import p131c.p161d.p162a.p163b.AbstractC2457b;
import p131c.p161d.p162a.p163b.AbstractC2458c;
import p131c.p161d.p162a.p163b.AbstractC2460e;
import p131c.p161d.p162a.p163b.C2456a;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/MediationBannerAdapter.class */
public interface MediationBannerAdapter<ADDITIONAL_PARAMETERS extends AbstractC2460e, SERVER_PARAMETERS extends MediationServerParameters> extends AbstractC2457b<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS> {
    View getBannerView();

    void requestBannerAd(AbstractC2458c cVar, Activity activity, SERVER_PARAMETERS server_parameters, C2455a aVar, C2456a aVar2, ADDITIONAL_PARAMETERS additional_parameters);
}
