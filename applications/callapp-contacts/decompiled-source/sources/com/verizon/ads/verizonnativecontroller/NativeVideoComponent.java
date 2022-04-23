package com.verizon.ads.verizonnativecontroller;

import android.content.Context;
import com.verizon.ads.VideoPlayer;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/NativeVideoComponent.class */
public interface NativeVideoComponent extends NativeMediaComponent, NativeViewComponent {
    VideoPlayer getVideoPlayer(Context context);

    void setAutoPlay(boolean z);

    void setAutoplayThresholdPercentage(int i);
}
