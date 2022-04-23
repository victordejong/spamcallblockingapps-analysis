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

    /* renamed from: a  reason: collision with root package name */
    private CtaButtonDrawable f34355a;

    /* renamed from: b  reason: collision with root package name */
    private final RelativeLayout.LayoutParams f34356b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f34357c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f34358d;
    private boolean e;
    private boolean f;

    public VideoCtaButtonWidget(Context context, boolean z, boolean z2) {
        super(context);
        this.e = z;
        this.f = z2;
        setId(View.generateViewId());
        int dipsToIntPixels = Dips.dipsToIntPixels(150.0f, context);
        int dipsToIntPixels2 = Dips.dipsToIntPixels(38.0f, context);
        int dipsToIntPixels3 = Dips.dipsToIntPixels(16.0f, context);
        CtaButtonDrawable ctaButtonDrawable = new CtaButtonDrawable(context);
        this.f34355a = ctaButtonDrawable;
        setImageDrawable(ctaButtonDrawable);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dipsToIntPixels, dipsToIntPixels2);
        this.f34356b = layoutParams;
        layoutParams.setMargins(dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3);
        layoutParams.addRule(12);
        layoutParams.addRule(11);
        c();
    }

    private void c() {
        if (!this.f) {
            setVisibility(8);
        } else if (!this.f34357c) {
            setVisibility(4);
        } else if (!this.f34358d || !this.e) {
            setLayoutParams(this.f34356b);
            setVisibility(0);
        } else {
            setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f34357c = true;
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str) {
        this.f34355a.setCtaText(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        this.f34357c = true;
        this.f34358d = true;
        c();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        c();
    }
}
