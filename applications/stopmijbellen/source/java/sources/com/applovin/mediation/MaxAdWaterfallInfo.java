package com.applovin.mediation;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/MaxAdWaterfallInfo.class */
public interface MaxAdWaterfallInfo {
    long getLatencyMillis();

    MaxAd getLoadedAd();

    String getName();

    List<MaxNetworkResponseInfo> getNetworkResponses();

    String getTestName();
}
