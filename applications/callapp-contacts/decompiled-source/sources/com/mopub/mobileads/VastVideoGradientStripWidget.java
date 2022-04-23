package com.mopub.mobileads;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.GradientDrawable;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastVideoGradientStripWidget.class */
public class VastVideoGradientStripWidget extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private int f34311a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f34312b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f34313c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f34314d;

    public VastVideoGradientStripWidget(Context context, GradientDrawable.Orientation orientation, boolean z, int i, int i2, int i3, boolean z2) {
        super(context);
        this.f34311a = i;
        this.f34312b = z;
        this.f34314d = z2;
        setImageDrawable(new GradientDrawable(orientation, new int[]{DrawableConstants.GradientStrip.START_COLOR, DrawableConstants.GradientStrip.END_COLOR}));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, Dips.dipsToIntPixels(72.0f, context));
        layoutParams.addRule(i2, i3);
        setLayoutParams(layoutParams);
        b();
    }

    private void b() {
        if (this.f34313c) {
            if (this.f34312b) {
                setVisibility(this.f34311a);
            } else {
                setVisibility(8);
            }
        } else if (this.f34314d) {
            setVisibility(0);
        } else {
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
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f34313c = true;
        b();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        b();
    }
}
