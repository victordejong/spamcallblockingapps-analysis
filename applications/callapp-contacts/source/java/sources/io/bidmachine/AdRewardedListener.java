package io.bidmachine;

import io.bidmachine.IAd;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/AdRewardedListener.class */
public interface AdRewardedListener<AdType extends IAd> {
    void onAdRewarded(AdType adtype);
}
