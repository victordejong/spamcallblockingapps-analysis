package com.applovin.mediation;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/MaxNetworkResponseInfo.class */
public interface MaxNetworkResponseInfo {

    /* loaded from: classes-dex2jar.jar:com/applovin/mediation/MaxNetworkResponseInfo$AdLoadState.class */
    public enum AdLoadState {
        AD_LOAD_NOT_ATTEMPTED,
        AD_LOADED,
        FAILED_TO_LOAD
    }

    AdLoadState getAdLoadState();

    Bundle getCredentials();

    MaxError getError();

    long getLatencyMillis();

    MaxMediatedNetworkInfo getMediatedNetwork();
}
