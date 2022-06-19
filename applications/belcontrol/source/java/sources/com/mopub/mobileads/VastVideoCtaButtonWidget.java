package com.mopub.mobileads;

import android.content.Context;
import android.content.res.Configuration;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.CtaButtonDrawable;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoCtaButtonWidget.class */
public class VastVideoCtaButtonWidget extends ImageView {

    /* renamed from: a */
    public CtaButtonDrawable f4903a;

    /* renamed from: b */
    public final RelativeLayout.LayoutParams f4904b;

    /* renamed from: c */
    public final RelativeLayout.LayoutParams f4905c;

    /* renamed from: d */
    public boolean f4906d;

    /* renamed from: f */
    public boolean f4907f;

    /* renamed from: g */
    public boolean f4908g;

    /* renamed from: h */
    public boolean f4909h;

    public VastVideoCtaButtonWidget(Context context, int i, boolean z, boolean z2) {
        super(context);
        this.f4908g = z;
        this.f4909h = z2;
        setId(View.generateViewId());
        int dipsToIntPixels = Dips.dipsToIntPixels(150.0f, context);
        int dipsToIntPixels2 = Dips.dipsToIntPixels(38.0f, context);
        int dipsToIntPixels3 = Dips.dipsToIntPixels(16.0f, context);
        CtaButtonDrawable ctaButtonDrawable = new CtaButtonDrawable(context);
        this.f4903a = ctaButtonDrawable;
        setImageDrawable(ctaButtonDrawable);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dipsToIntPixels, dipsToIntPixels2);
        this.f4904b = layoutParams;
        layoutParams.setMargins(dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3);
        layoutParams.addRule(8, i);
        layoutParams.addRule(7, i);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(dipsToIntPixels, dipsToIntPixels2);
        this.f4905c = layoutParams2;
        layoutParams2.setMargins(dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3);
        layoutParams2.addRule(12);
        layoutParams2.addRule(11);
        m3546d();
    }

    /* renamed from: a */
    public void m3549a() {
        this.f4906d = true;
        this.f4907f = true;
        m3546d();
    }

    /* renamed from: b */
    public void m3548b() {
        this.f4906d = true;
        m3546d();
    }

    /* renamed from: c */
    public void m3547c(String str) {
        this.f4903a.setCtaText(str);
    }

    /* renamed from: d */
    public final void m3546d() {
        RelativeLayout.LayoutParams layoutParams;
        if (!this.f4909h) {
            setVisibility(8);
        } else if (!this.f4906d) {
            setVisibility(4);
        } else if (this.f4907f && this.f4908g) {
            setVisibility(8);
        } else {
            int i = getResources().getConfiguration().orientation;
            if (i == 0) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Screen orientation undefined: CTA button widget defaulting to portrait layout");
            } else if (i != 1) {
                if (i == 2) {
                    layoutParams = this.f4904b;
                    setLayoutParams(layoutParams);
                    setVisibility(0);
                } else if (i != 3) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unrecognized screen orientation: CTA button widget defaulting to portrait layout");
                } else {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Screen orientation is deprecated ORIENTATION_SQUARE: CTA button widget defaulting to portrait layout");
                }
            }
            layoutParams = this.f4905c;
            setLayoutParams(layoutParams);
            setVisibility(0);
        }
    }

    @Deprecated
    @VisibleForTesting
    public String getCtaText() {
        return this.f4903a.getCtaText();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m3546d();
    }
}
