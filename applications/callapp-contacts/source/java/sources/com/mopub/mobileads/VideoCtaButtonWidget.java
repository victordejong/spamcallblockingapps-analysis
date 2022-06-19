package com.mopub.mobileads;

import android.content.Context;
import android.content.res.Configuration;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.CtaButtonDrawable;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VideoCtaButtonWidget.class */
public class VideoCtaButtonWidget extends ImageView {

    /* renamed from: a */
    private CtaButtonDrawable f59636a;

    /* renamed from: b */
    private final RelativeLayout.LayoutParams f59637b;

    /* renamed from: c */
    private boolean f59638c;

    /* renamed from: d */
    private boolean f59639d;

    /* renamed from: e */
    private boolean f59640e;

    /* renamed from: f */
    private boolean f59641f;

    public VideoCtaButtonWidget(Context context, boolean z, boolean z2) {
        super(context);
        this.f59640e = z;
        this.f59641f = z2;
        setId(View.generateViewId());
        int dipsToIntPixels = Dips.dipsToIntPixels(150.0f, context);
        int dipsToIntPixels2 = Dips.dipsToIntPixels(38.0f, context);
        int dipsToIntPixels3 = Dips.dipsToIntPixels(16.0f, context);
        CtaButtonDrawable ctaButtonDrawable = new CtaButtonDrawable(context);
        this.f59636a = ctaButtonDrawable;
        setImageDrawable(ctaButtonDrawable);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dipsToIntPixels, dipsToIntPixels2);
        this.f59637b = layoutParams;
        layoutParams.setMargins(dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3);
        layoutParams.addRule(12);
        layoutParams.addRule(11);
        m6359c();
    }

    /* renamed from: c */
    private void m6359c() {
        if (!this.f59641f) {
            setVisibility(8);
        } else if (!this.f59638c) {
            setVisibility(4);
        } else if (this.f59639d && this.f59640e) {
            setVisibility(8);
        } else {
            setLayoutParams(this.f59637b);
            setVisibility(0);
        }
    }

    /* renamed from: a */
    public final void m6362a() {
        this.f59638c = true;
        m6359c();
    }

    /* renamed from: a */
    public final void m6361a(String str) {
        this.f59636a.setCtaText(str);
    }

    /* renamed from: b */
    public final void m6360b() {
        this.f59638c = true;
        this.f59639d = true;
        m6359c();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m6359c();
    }
}
