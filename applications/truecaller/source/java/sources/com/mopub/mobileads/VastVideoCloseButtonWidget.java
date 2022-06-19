package com.mopub.mobileads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.base.C2684R;
import com.mopub.mobileads.resource.DrawableConstants;
import com.mopub.network.Networking;
import com.mopub.volley.toolbox.ImageLoader;
import p1727n3.p1807k.p1809b.C26467a;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoCloseButtonWidget.class */
public class VastVideoCloseButtonWidget extends RelativeLayout {

    /* renamed from: a */
    public TextView f8900a;

    /* renamed from: b */
    public ImageView f8901b;

    /* renamed from: c */
    public final ImageLoader f8902c;

    /* renamed from: d */
    public boolean f8903d;

    /* renamed from: e */
    public final int f8904e;

    /* renamed from: f */
    public final int f8905f;

    /* renamed from: g */
    public final int f8906g;

    /* renamed from: h */
    public final int f8907h;

    public VastVideoCloseButtonWidget(Context context) {
        super(context);
        setId(View.generateViewId());
        int dipsToIntPixels = Dips.dipsToIntPixels(6.0f, context);
        this.f8904e = dipsToIntPixels;
        int dipsToIntPixels2 = Dips.dipsToIntPixels(5.0f, context);
        this.f8906g = dipsToIntPixels2;
        int dipsToIntPixels3 = Dips.dipsToIntPixels(50.0f, context);
        this.f8907h = dipsToIntPixels3;
        int dipsToIntPixels4 = Dips.dipsToIntPixels(0.0f, context);
        this.f8905f = dipsToIntPixels4;
        this.f8902c = Networking.getImageLoader(context);
        ImageView imageView = new ImageView(getContext());
        this.f8901b = imageView;
        imageView.setId(View.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dipsToIntPixels3, dipsToIntPixels3);
        layoutParams.addRule(11);
        ImageView imageView2 = this.f8901b;
        Context context2 = getContext();
        int i = C2684R.C2685drawable.ic_mopub_skip_button;
        Object obj = C26467a.f74235a;
        imageView2.setImageDrawable(C26467a.C26470c.m1789b(context2, i));
        int i2 = dipsToIntPixels2 + dipsToIntPixels;
        this.f8901b.setPadding(dipsToIntPixels2, i2, i2, dipsToIntPixels2);
        addView(this.f8901b, layoutParams);
        TextView textView = new TextView(getContext());
        this.f8900a = textView;
        textView.setSingleLine();
        this.f8900a.setEllipsize(TextUtils.TruncateAt.END);
        this.f8900a.setTextColor(-1);
        this.f8900a.setTextSize(20.0f);
        this.f8900a.setTypeface(DrawableConstants.CloseButton.TEXT_TYPEFACE);
        this.f8900a.setText("");
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(15);
        layoutParams2.addRule(0, this.f8901b.getId());
        this.f8900a.setPadding(0, dipsToIntPixels, 0, 0);
        layoutParams2.setMargins(0, 0, dipsToIntPixels4, 0);
        addView(this.f8900a, layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, dipsToIntPixels3);
        layoutParams3.addRule(11);
        setLayoutParams(layoutParams3);
    }

    @Deprecated
    @VisibleForTesting
    public ImageView getImageView() {
        return this.f8901b;
    }

    @Deprecated
    @VisibleForTesting
    public TextView getTextView() {
        return this.f8900a;
    }

    @Deprecated
    @VisibleForTesting
    public void setImageView(ImageView imageView) {
        this.f8901b = imageView;
    }

    public void setOnTouchListenerToContent(View.OnTouchListener onTouchListener) {
        this.f8901b.setOnTouchListener(onTouchListener);
        this.f8900a.setOnTouchListener(onTouchListener);
    }
}
