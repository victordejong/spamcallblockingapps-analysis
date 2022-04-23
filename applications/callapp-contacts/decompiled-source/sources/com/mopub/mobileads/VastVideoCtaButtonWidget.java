package com.mopub.mobileads;

import android.content.Context;
import android.content.res.Configuration;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.CtaButtonDrawable;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastVideoCtaButtonWidget.class */
public class VastVideoCtaButtonWidget extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private CtaButtonDrawable f34307a;

    /* renamed from: b  reason: collision with root package name */
    private final RelativeLayout.LayoutParams f34308b;

    /* renamed from: c  reason: collision with root package name */
    private final RelativeLayout.LayoutParams f34309c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f34310d;
    private boolean e;
    private boolean f;
    private boolean g;

    public VastVideoCtaButtonWidget(Context context, int i, boolean z, boolean z2) {
        super(context);
        this.f = z;
        this.g = z2;
        setId(View.generateViewId());
        int dipsToIntPixels = Dips.dipsToIntPixels(150.0f, context);
        int dipsToIntPixels2 = Dips.dipsToIntPixels(38.0f, context);
        int dipsToIntPixels3 = Dips.dipsToIntPixels(16.0f, context);
        CtaButtonDrawable ctaButtonDrawable = new CtaButtonDrawable(context);
        this.f34307a = ctaButtonDrawable;
        setImageDrawable(ctaButtonDrawable);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dipsToIntPixels, dipsToIntPixels2);
        this.f34308b = layoutParams;
        layoutParams.setMargins(dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3);
        layoutParams.addRule(8, i);
        layoutParams.addRule(7, i);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(dipsToIntPixels, dipsToIntPixels2);
        this.f34309c = layoutParams2;
        layoutParams2.setMargins(dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3);
        layoutParams2.addRule(12);
        layoutParams2.addRule(11);
        a();
    }

    private void a() {
        if (!this.g) {
            setVisibility(8);
        } else if (!this.f34310d) {
            setVisibility(4);
        } else if (!this.e || !this.f) {
            int i = getResources().getConfiguration().orientation;
            if (i == 0) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Screen orientation undefined: CTA button widget defaulting to portrait layout");
                setLayoutParams(this.f34309c);
            } else if (i == 1) {
                setLayoutParams(this.f34309c);
            } else if (i == 2) {
                setLayoutParams(this.f34308b);
            } else if (i != 3) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unrecognized screen orientation: CTA button widget defaulting to portrait layout");
                setLayoutParams(this.f34309c);
            } else {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Screen orientation is deprecated ORIENTATION_SQUARE: CTA button widget defaulting to portrait layout");
                setLayoutParams(this.f34309c);
            }
            setVisibility(0);
        } else {
            setVisibility(8);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        a();
    }
}
