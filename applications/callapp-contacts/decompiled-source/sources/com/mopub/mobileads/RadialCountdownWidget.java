package com.mopub.mobileads;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.RadialCountdownDrawable;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/RadialCountdownWidget.class */
public class RadialCountdownWidget extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private RadialCountdownDrawable f34227a;

    /* renamed from: b  reason: collision with root package name */
    private int f34228b;

    public RadialCountdownWidget(Context context) {
        super(context);
        setId(View.generateViewId());
        int dipsToIntPixels = Dips.dipsToIntPixels(50.0f, context);
        int dipsToIntPixels2 = Dips.dipsToIntPixels(3.0f, context);
        int dipsToIntPixels3 = Dips.dipsToIntPixels(3.0f, context);
        int dipsToIntPixels4 = Dips.dipsToIntPixels(9.0f, context);
        RadialCountdownDrawable radialCountdownDrawable = new RadialCountdownDrawable(context);
        this.f34227a = radialCountdownDrawable;
        setImageDrawable(radialCountdownDrawable);
        setPadding(dipsToIntPixels4, dipsToIntPixels4, dipsToIntPixels4, dipsToIntPixels4);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dipsToIntPixels, dipsToIntPixels);
        layoutParams.setMargins(0, dipsToIntPixels2, dipsToIntPixels3, 0);
        layoutParams.addRule(11);
        setLayoutParams(layoutParams);
    }

    public void calibrateAndMakeVisible(int i) {
        this.f34227a.setInitialCountdown(i);
        setVisibility(0);
    }

    @Deprecated
    public RadialCountdownDrawable getImageViewDrawable() {
        return this.f34227a;
    }

    @Deprecated
    public void setImageViewDrawable(RadialCountdownDrawable radialCountdownDrawable) {
        this.f34227a = radialCountdownDrawable;
    }

    public void updateCountdownProgress(int i, int i2) {
        if (i2 < this.f34228b) {
            return;
        }
        if (i - i2 < 0) {
            setVisibility(8);
            return;
        }
        this.f34227a.updateCountdownProgress(i2);
        this.f34228b = i2;
    }
}
