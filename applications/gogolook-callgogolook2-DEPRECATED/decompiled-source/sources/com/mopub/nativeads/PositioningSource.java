package com.mopub.nativeads;

import androidx.annotation.NonNull;
import com.mopub.nativeads.MoPubNativeAdPositioning;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/PositioningSource.class */
public interface PositioningSource {

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/PositioningSource$PositioningListener.class */
    public interface PositioningListener {
        void onFailed();

        void onLoad(@NonNull MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning);
    }

    void loadPositions(@NonNull String str, @NonNull PositioningListener positioningListener);
}
