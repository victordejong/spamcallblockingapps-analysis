package com.aotter.net.trek.ads.impression;

import android.content.Context;
import android.view.View;
import com.aotter.net.trek.model.NativeAd;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/impression/ImpressionInterface.class */
public interface ImpressionInterface {
    void recordImpression(Context context, NativeAd nativeAd, View view);
}
