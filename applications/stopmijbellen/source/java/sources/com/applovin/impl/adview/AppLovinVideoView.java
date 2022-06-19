package com.applovin.impl.adview;

import android.content.Context;
import android.widget.VideoView;
import com.applovin.impl.sdk.C1408l;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AppLovinVideoView.class */
public class AppLovinVideoView extends VideoView {
    public AppLovinVideoView(Context context, C1408l c1408l) {
        super(context, null, 0);
    }

    public void setVideoSize(int i, int i2) {
        getHolder().setFixedSize(i, i2);
        requestLayout();
        invalidate();
    }
}
