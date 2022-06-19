package com.google.ads.mediation;

import androidx.annotation.RecentlyNonNull;
import com.google.ads.mediation.MediationServerParameters;
@Deprecated
/* renamed from: com.google.ads.mediation.b */
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/b.class */
public interface AbstractC1272b<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS extends MediationServerParameters> {
    void destroy();

    @RecentlyNonNull
    Class<ADDITIONAL_PARAMETERS> getAdditionalParametersType();

    @RecentlyNonNull
    Class<SERVER_PARAMETERS> getServerParametersType();
}
