package com.google.android.gms.ads.instream;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/instream/InstreamAdView.class */
public final class InstreamAdView extends FrameLayout {
    public InstreamAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public InstreamAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public final void setInstreamAd(InstreamAd instreamAd) {
        if (instreamAd != null) {
            instreamAd.mo16725a(this);
        }
    }
}
