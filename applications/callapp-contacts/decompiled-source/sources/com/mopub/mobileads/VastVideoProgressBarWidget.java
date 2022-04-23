package com.mopub.mobileads;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.ProgressBarDrawable;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastVideoProgressBarWidget.class */
public class VastVideoProgressBarWidget extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private ProgressBarDrawable f34315a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34316b;

    public VastVideoProgressBarWidget(Context context) {
        super(context);
        setId(View.generateViewId());
        ProgressBarDrawable progressBarDrawable = new ProgressBarDrawable(context);
        this.f34315a = progressBarDrawable;
        setImageDrawable(progressBarDrawable);
        this.f34316b = Dips.dipsToIntPixels(4.0f, context);
    }

    public void calibrateAndMakeVisible(int i, int i2) {
        this.f34315a.setDurationAndSkipOffset(i, i2);
        setVisibility(0);
    }

    public void reset() {
        this.f34315a.reset();
        this.f34315a.setProgress(0);
    }

    public void setAnchorId(int i) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.f34316b);
        layoutParams.addRule(8, i);
        setLayoutParams(layoutParams);
    }

    public void updateProgress(int i) {
        this.f34315a.setProgress(i);
    }
}
