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

    /* renamed from: a */
    private CtaButtonDrawable f59557a;

    /* renamed from: b */
    private final RelativeLayout.LayoutParams f59558b;

    /* renamed from: c */
    private final RelativeLayout.LayoutParams f59559c;

    /* renamed from: d */
    private boolean f59560d;

    /* renamed from: e */
    private boolean f59561e;

    /* renamed from: f */
    private boolean f59562f;

    /* renamed from: g */
    private boolean f59563g;

    public VastVideoCtaButtonWidget(Context context, int i, boolean z, boolean z2) {
        super(context);
        this.f59562f = z;
        this.f59563g = z2;
        setId(View.generateViewId());
        int dipsToIntPixels = Dips.dipsToIntPixels(150.0f, context);
        int dipsToIntPixels2 = Dips.dipsToIntPixels(38.0f, context);
        int dipsToIntPixels3 = Dips.dipsToIntPixels(16.0f, context);
        CtaButtonDrawable ctaButtonDrawable = new CtaButtonDrawable(context);
        this.f59557a = ctaButtonDrawable;
        setImageDrawable(ctaButtonDrawable);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dipsToIntPixels, dipsToIntPixels2);
        this.f59558b = layoutParams;
        layoutParams.setMargins(dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3);
        layoutParams.addRule(8, i);
        layoutParams.addRule(7, i);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(dipsToIntPixels, dipsToIntPixels2);
        this.f59559c = layoutParams2;
        layoutParams2.setMargins(dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3);
        layoutParams2.addRule(12);
        layoutParams2.addRule(11);
        m6396a();
    }

    /* renamed from: a */
    private void m6396a() {
        if (!this.f59563g) {
            setVisibility(8);
        } else if (!this.f59560d) {
            setVisibility(4);
        } else if (this.f59561e && this.f59562f) {
            setVisibility(8);
        } else {
            int i = getResources().getConfiguration().orientation;
            if (i == 0) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Screen orientation undefined: CTA button widget defaulting to portrait layout");
                setLayoutParams(this.f59559c);
            } else if (i == 1) {
                setLayoutParams(this.f59559c);
            } else if (i == 2) {
                setLayoutParams(this.f59558b);
            } else if (i != 3) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unrecognized screen orientation: CTA button widget defaulting to portrait layout");
                setLayoutParams(this.f59559c);
            } else {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Screen orientation is deprecated ORIENTATION_SQUARE: CTA button widget defaulting to portrait layout");
                setLayoutParams(this.f59559c);
            }
            setVisibility(0);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m6396a();
    }
}
