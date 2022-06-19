package com.mopub.mobileads;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.ProgressBarDrawable;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoProgressBarWidget.class */
public class VastVideoProgressBarWidget extends ImageView {

    /* renamed from: a */
    public ProgressBarDrawable f8939a;

    /* renamed from: b */
    public final int f8940b;

    public VastVideoProgressBarWidget(Context context) {
        super(context);
        setId(View.generateViewId());
        ProgressBarDrawable progressBarDrawable = new ProgressBarDrawable(context);
        this.f8939a = progressBarDrawable;
        setImageDrawable(progressBarDrawable);
        this.f8940b = Dips.dipsToIntPixels(4.0f, context);
    }

    public void calibrateAndMakeVisible(int i, int i2) {
        this.f8939a.setDurationAndSkipOffset(i, i2);
        setVisibility(0);
    }

    @Deprecated
    @VisibleForTesting
    public ProgressBarDrawable getImageViewDrawable() {
        return this.f8939a;
    }

    public void reset() {
        this.f8939a.reset();
        this.f8939a.setProgress(0);
    }

    public void setAnchorId(int i) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.f8940b);
        layoutParams.addRule(8, i);
        setLayoutParams(layoutParams);
    }

    @Deprecated
    @VisibleForTesting
    public void setImageViewDrawable(ProgressBarDrawable progressBarDrawable) {
        this.f8939a = progressBarDrawable;
    }

    public void updateProgress(int i) {
        this.f8939a.setProgress(i);
    }
}
