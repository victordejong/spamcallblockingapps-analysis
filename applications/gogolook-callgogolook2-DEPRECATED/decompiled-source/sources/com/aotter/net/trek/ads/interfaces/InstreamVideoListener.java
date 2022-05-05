package com.aotter.net.trek.ads.interfaces;

import androidx.annotation.NonNull;
import com.aotter.net.trek.ads.AdError;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/interfaces/InstreamVideoListener.class */
public interface InstreamVideoListener {
    void onInstreamVideoClosed();

    void onInstreamVideoCompleted();

    void onInstreamVideoLoadFailure(@NonNull AdError adError);

    void onInstreamVideoLoadSuccess();

    void onInstreamVideoPlaybackError();

    void onInstreamVideoStarted();
}
