package com.mopub.mobileads;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.GradientDrawable;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoGradientStripWidget.class */
public class VastVideoGradientStripWidget extends ImageView {

    /* renamed from: a */
    public int f8694a;

    /* renamed from: b */
    public boolean f8695b;

    /* renamed from: c */
    public boolean f8696c;

    public VastVideoGradientStripWidget(@NonNull Context context, @NonNull GradientDrawable.Orientation orientation, boolean z, int i, int i2, int i3) {
        super(context);
        this.f8694a = i;
        this.f8695b = z;
        setImageDrawable(new GradientDrawable(orientation, new int[]{DrawableConstants.GradientStrip.START_COLOR, DrawableConstants.GradientStrip.END_COLOR}));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, Dips.dipsToIntPixels(72.0f, context));
        layoutParams.addRule(i2, i3);
        setLayoutParams(layoutParams);
        m30440b();
    }

    /* renamed from: a */
    public void m30441a() {
        this.f8696c = true;
        m30440b();
    }

    /* renamed from: b */
    public final void m30440b() {
        if (!this.f8696c) {
            int i = getResources().getConfiguration().orientation;
            if (i == 0) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Screen orientation undefined: do not show gradient strip widget");
                setVisibility(4);
            } else if (i == 1) {
                setVisibility(4);
            } else if (i == 2) {
                setVisibility(0);
            } else if (i != 3) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unrecognized screen orientation: do not show gradient strip widget");
                setVisibility(4);
            } else {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Screen orientation is deprecated ORIENTATION_SQUARE: do not show gradient strip widget");
                setVisibility(4);
            }
        } else if (this.f8695b) {
            setVisibility(this.f8694a);
        } else {
            setVisibility(8);
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m30440b();
    }
}
