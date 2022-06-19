package com.mopub.mobileads;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.GradientDrawable;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoGradientStripWidget.class */
public class VastVideoGradientStripWidget extends ImageView {

    /* renamed from: a */
    public int f4910a;

    /* renamed from: b */
    public boolean f4911b;

    /* renamed from: c */
    public boolean f4912c;

    /* renamed from: d */
    public boolean f4913d;

    public VastVideoGradientStripWidget(Context context, GradientDrawable.Orientation orientation, boolean z, int i, int i2, int i3, boolean z2) {
        super(context);
        this.f4910a = i;
        this.f4911b = z;
        this.f4913d = z2;
        setImageDrawable(new GradientDrawable(orientation, new int[]{DrawableConstants.GradientStrip.START_COLOR, DrawableConstants.GradientStrip.END_COLOR}));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, Dips.dipsToIntPixels(72.0f, context));
        layoutParams.addRule(i2, i3);
        setLayoutParams(layoutParams);
        m3544b();
    }

    /* renamed from: a */
    public void m3545a() {
        this.f4912c = true;
        m3544b();
    }

    /* renamed from: b */
    public final void m3544b() {
        if (this.f4912c) {
            setVisibility(this.f4911b ? this.f4910a : 8);
        } else if (this.f4913d) {
            setVisibility(0);
        } else {
            int i = getResources().getConfiguration().orientation;
            if (i == 0) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Screen orientation undefined: do not show gradient strip widget");
            } else if (i != 1) {
                if (i == 2) {
                    setVisibility(0);
                    return;
                } else if (i != 3) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unrecognized screen orientation: do not show gradient strip widget");
                } else {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Screen orientation is deprecated ORIENTATION_SQUARE: do not show gradient strip widget");
                }
            }
            setVisibility(4);
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m3544b();
    }
}
