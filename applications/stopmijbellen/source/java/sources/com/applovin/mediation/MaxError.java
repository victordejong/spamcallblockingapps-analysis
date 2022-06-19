package com.applovin.mediation;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/MaxError.class */
public interface MaxError {
    @Deprecated
    String getAdLoadFailureInfo();

    int getCode();

    String getMessage();

    MaxAdWaterfallInfo getWaterfall();
}
