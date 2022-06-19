package com.amazon.device.ads;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/AdContainer.class */
public class AdContainer extends LinearLayout {
    public View adView;
    public int orientation = AdRegistration.getContext().getResources().getConfiguration().orientation;

    public AdContainer(Context context) {
        super(context);
        setOrientation(1);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.orientation == AdRegistration.getContext().getResources().getConfiguration().orientation) {
            View view = this.adView;
            if (view instanceof DTBAdView) {
                ((DTBAdView) view).onAdRemoved();
            }
            this.adView = null;
        }
    }

    public void setAdView(View view) {
        this.adView = view;
    }
}
