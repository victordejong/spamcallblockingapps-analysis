package com.mopub.mobileads;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.ProgressBarDrawable;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoProgressBarWidget.class */
public class VastVideoProgressBarWidget extends ImageView {
    @NonNull

    /* renamed from: a */
    public ProgressBarDrawable f8703a;

    /* renamed from: b */
    public final int f8704b;

    public VastVideoProgressBarWidget(@NonNull Context context) {
        super(context);
        setId(View.generateViewId());
        this.f8703a = new ProgressBarDrawable(context);
        setImageDrawable(this.f8703a);
        this.f8704b = Dips.dipsToIntPixels(4.0f, context);
    }

    public void calibrateAndMakeVisible(int i, int i2) {
        this.f8703a.setDurationAndSkipOffset(i, i2);
        setVisibility(0);
    }

    public void reset() {
        this.f8703a.reset();
        this.f8703a.setProgress(0);
    }

    public void setAnchorId(int i) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.f8704b);
        layoutParams.addRule(8, i);
        setLayoutParams(layoutParams);
    }

    public void updateProgress(int i) {
        this.f8703a.setProgress(i);
    }
}
