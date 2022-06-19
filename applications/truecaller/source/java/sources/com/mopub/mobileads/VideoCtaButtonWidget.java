package com.mopub.mobileads;

import android.content.Context;
import android.content.res.Configuration;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.CtaButtonDrawable;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VideoCtaButtonWidget.class */
public class VideoCtaButtonWidget extends ImageView {

    /* renamed from: a */
    public CtaButtonDrawable f8952a;

    /* renamed from: b */
    public final RelativeLayout.LayoutParams f8953b;

    /* renamed from: c */
    public boolean f8954c;

    /* renamed from: d */
    public boolean f8955d;

    /* renamed from: e */
    public boolean f8956e;

    /* renamed from: f */
    public boolean f8957f;

    public VideoCtaButtonWidget(Context context, boolean z, boolean z2) {
        super(context);
        this.f8956e = z;
        this.f8957f = z2;
        setId(View.generateViewId());
        int dipsToIntPixels = Dips.dipsToIntPixels(150.0f, context);
        int dipsToIntPixels2 = Dips.dipsToIntPixels(38.0f, context);
        int dipsToIntPixels3 = Dips.dipsToIntPixels(16.0f, context);
        CtaButtonDrawable ctaButtonDrawable = new CtaButtonDrawable(context);
        this.f8952a = ctaButtonDrawable;
        setImageDrawable(ctaButtonDrawable);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dipsToIntPixels, dipsToIntPixels2);
        this.f8953b = layoutParams;
        layoutParams.setMargins(dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3);
        layoutParams.addRule(12);
        layoutParams.addRule(11);
        m36215a();
    }

    /* renamed from: a */
    public final void m36215a() {
        if (!this.f8957f) {
            setVisibility(8);
        } else if (!this.f8954c) {
            setVisibility(4);
        } else if (this.f8955d && this.f8956e) {
            setVisibility(8);
        } else {
            setLayoutParams(this.f8953b);
            setVisibility(0);
        }
    }

    @Deprecated
    @VisibleForTesting
    public String getCtaText() {
        return this.f8952a.getCtaText();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m36215a();
    }
}
