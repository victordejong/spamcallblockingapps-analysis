package com.mopub.nativeads;

import com.mopub.nativeads.MoPubNativeAdPositioning;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/PositioningSource.class */
public interface PositioningSource {

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/PositioningSource$PositioningListener.class */
    public interface PositioningListener {
        void onFailed();

        void onLoad(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning);
    }

    void loadPositions(String str, PositioningListener positioningListener);
}
