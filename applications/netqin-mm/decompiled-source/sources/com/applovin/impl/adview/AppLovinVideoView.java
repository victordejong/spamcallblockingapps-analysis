package com.applovin.impl.adview;

import android.content.Context;
import android.widget.VideoView;
import p131c.p135b.p136a.p148e.C2341l;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AppLovinVideoView.class */
public class AppLovinVideoView extends VideoView {
    public AppLovinVideoView(Context context, C2341l lVar) {
        super(context, null, 0);
    }

    public void setVideoSize(int i, int i2) {
        getHolder().setFixedSize(i, i2);
        requestLayout();
        invalidate();
    }
}
