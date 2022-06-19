package com.google.ads.mediation;

import com.google.ads.mediation.MediationServerParameters;
@Deprecated
/* renamed from: com.google.ads.mediation.b */
/* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/b.class */
public interface AbstractC10594b<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS extends MediationServerParameters> {
    void destroy();

    Class<ADDITIONAL_PARAMETERS> getAdditionalParametersType();

    Class<SERVER_PARAMETERS> getServerParametersType();
}
