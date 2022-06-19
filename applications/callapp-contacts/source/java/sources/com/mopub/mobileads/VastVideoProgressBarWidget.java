package com.mopub.mobileads;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.ProgressBarDrawable;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastVideoProgressBarWidget.class */
public class VastVideoProgressBarWidget extends ImageView {

    /* renamed from: a */
    private ProgressBarDrawable f59568a;

    /* renamed from: b */
    private final int f59569b;

    public VastVideoProgressBarWidget(Context context) {
        super(context);
        setId(View.generateViewId());
        ProgressBarDrawable progressBarDrawable = new ProgressBarDrawable(context);
        this.f59568a = progressBarDrawable;
        setImageDrawable(progressBarDrawable);
        this.f59569b = Dips.dipsToIntPixels(4.0f, context);
    }

    public void calibrateAndMakeVisible(int i, int i2) {
        this.f59568a.setDurationAndSkipOffset(i, i2);
        setVisibility(0);
    }

    public void reset() {
        this.f59568a.reset();
        this.f59568a.setProgress(0);
    }

    public void setAnchorId(int i) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.f59569b);
        layoutParams.addRule(8, i);
        setLayoutParams(layoutParams);
    }

    public void updateProgress(int i) {
        this.f59568a.setProgress(i);
    }
}
