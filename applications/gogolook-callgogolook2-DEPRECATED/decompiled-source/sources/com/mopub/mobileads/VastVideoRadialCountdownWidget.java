package com.mopub.mobileads;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.RadialCountdownDrawable;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoRadialCountdownWidget.class */
public class VastVideoRadialCountdownWidget extends ImageView {
    @NonNull

    /* renamed from: a */
    public RadialCountdownDrawable f8705a;

    /* renamed from: b */
    public int f8706b;

    public VastVideoRadialCountdownWidget(@NonNull Context context) {
        super(context);
        setId(View.generateViewId());
        int dipsToIntPixels = Dips.dipsToIntPixels(45.0f, context);
        int dipsToIntPixels2 = Dips.dipsToIntPixels(16.0f, context);
        int dipsToIntPixels3 = Dips.dipsToIntPixels(16.0f, context);
        int dipsToIntPixels4 = Dips.dipsToIntPixels(5.0f, context);
        this.f8705a = new RadialCountdownDrawable(context);
        setImageDrawable(this.f8705a);
        setPadding(dipsToIntPixels4, dipsToIntPixels4, dipsToIntPixels4, dipsToIntPixels4);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dipsToIntPixels, dipsToIntPixels);
        layoutParams.setMargins(0, dipsToIntPixels2, dipsToIntPixels3, 0);
        layoutParams.addRule(11);
        setLayoutParams(layoutParams);
    }

    public void calibrateAndMakeVisible(int i) {
        this.f8705a.setInitialCountdown(i);
        setVisibility(0);
    }

    @Deprecated
    @VisibleForTesting
    public RadialCountdownDrawable getImageViewDrawable() {
        return this.f8705a;
    }

    @Deprecated
    @VisibleForTesting
    public void setImageViewDrawable(RadialCountdownDrawable radialCountdownDrawable) {
        this.f8705a = radialCountdownDrawable;
    }

    public void updateCountdownProgress(int i, int i2) {
        if (i2 < this.f8706b) {
            return;
        }
        if (i - i2 < 0) {
            setVisibility(8);
            return;
        }
        this.f8705a.updateCountdownProgress(i2);
        this.f8706b = i2;
    }
}
