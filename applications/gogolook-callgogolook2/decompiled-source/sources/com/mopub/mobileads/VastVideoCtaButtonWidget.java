package com.mopub.mobileads;

import android.content.Context;
import android.content.res.Configuration;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.CtaButtonDrawable;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoCtaButtonWidget.class */
public class VastVideoCtaButtonWidget extends ImageView {
    @NonNull

    /* renamed from: a */
    public CtaButtonDrawable f8687a;
    @NonNull

    /* renamed from: b */
    public final RelativeLayout.LayoutParams f8688b;
    @NonNull

    /* renamed from: c */
    public final RelativeLayout.LayoutParams f8689c;

    /* renamed from: d */
    public boolean f8690d;

    /* renamed from: e */
    public boolean f8691e;

    /* renamed from: f */
    public boolean f8692f;

    /* renamed from: g */
    public boolean f8693g;

    public VastVideoCtaButtonWidget(@NonNull Context context, int i, boolean z, boolean z2) {
        super(context);
        this.f8692f = z;
        this.f8693g = z2;
        setId(View.generateViewId());
        int dipsToIntPixels = Dips.dipsToIntPixels(150.0f, context);
        int dipsToIntPixels2 = Dips.dipsToIntPixels(38.0f, context);
        int dipsToIntPixels3 = Dips.dipsToIntPixels(16.0f, context);
        this.f8687a = new CtaButtonDrawable(context);
        setImageDrawable(this.f8687a);
        this.f8688b = new RelativeLayout.LayoutParams(dipsToIntPixels, dipsToIntPixels2);
        this.f8688b.setMargins(dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3);
        this.f8688b.addRule(8, i);
        this.f8688b.addRule(7, i);
        this.f8689c = new RelativeLayout.LayoutParams(dipsToIntPixels, dipsToIntPixels2);
        this.f8689c.setMargins(dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3);
        this.f8689c.addRule(12);
        this.f8689c.addRule(11);
        m30442c();
    }

    /* renamed from: a */
    public void m30445a() {
        this.f8690d = true;
        this.f8691e = true;
        m30442c();
    }

    /* renamed from: a */
    public void m30444a(@NonNull String str) {
        this.f8687a.setCtaText(str);
    }

    /* renamed from: b */
    public void m30443b() {
        this.f8690d = true;
        m30442c();
    }

    /* renamed from: c */
    public final void m30442c() {
        if (!this.f8693g) {
            setVisibility(8);
        } else if (!this.f8690d) {
            setVisibility(4);
        } else if (!this.f8691e || !this.f8692f) {
            int i = getResources().getConfiguration().orientation;
            if (i == 0) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Screen orientation undefined: CTA button widget defaulting to portrait layout");
                setLayoutParams(this.f8689c);
            } else if (i == 1) {
                setLayoutParams(this.f8689c);
            } else if (i == 2) {
                setLayoutParams(this.f8688b);
            } else if (i != 3) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unrecognized screen orientation: CTA button widget defaulting to portrait layout");
                setLayoutParams(this.f8689c);
            } else {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Screen orientation is deprecated ORIENTATION_SQUARE: CTA button widget defaulting to portrait layout");
                setLayoutParams(this.f8689c);
            }
            setVisibility(0);
        } else {
            setVisibility(8);
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m30442c();
    }
}
