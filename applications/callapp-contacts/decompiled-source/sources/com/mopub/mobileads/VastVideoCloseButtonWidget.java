package com.mopub.mobileads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.base.R;
import com.mopub.mobileads.resource.DrawableConstants;
import com.mopub.network.Networking;
import com.mopub.volley.toolbox.ImageLoader;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastVideoCloseButtonWidget.class */
public class VastVideoCloseButtonWidget extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    TextView f34294a;

    /* renamed from: b  reason: collision with root package name */
    ImageView f34295b;

    /* renamed from: c  reason: collision with root package name */
    final ImageLoader f34296c;

    /* renamed from: d  reason: collision with root package name */
    boolean f34297d;
    private final int e;
    private final int f;
    private final int g;
    private final int h;

    public VastVideoCloseButtonWidget(Context context) {
        super(context);
        setId(View.generateViewId());
        int dipsToIntPixels = Dips.dipsToIntPixels(6.0f, context);
        this.e = dipsToIntPixels;
        int dipsToIntPixels2 = Dips.dipsToIntPixels(5.0f, context);
        this.g = dipsToIntPixels2;
        int dipsToIntPixels3 = Dips.dipsToIntPixels(50.0f, context);
        this.h = dipsToIntPixels3;
        int dipsToIntPixels4 = Dips.dipsToIntPixels(BitmapDescriptorFactory.HUE_RED, context);
        this.f = dipsToIntPixels4;
        this.f34296c = Networking.getImageLoader(context);
        ImageView imageView = new ImageView(getContext());
        this.f34295b = imageView;
        imageView.setId(View.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dipsToIntPixels3, dipsToIntPixels3);
        layoutParams.addRule(11);
        this.f34295b.setImageDrawable(b.a(getContext(), R.drawable.ic_mopub_skip_button));
        this.f34295b.setPadding(dipsToIntPixels2, dipsToIntPixels2 + dipsToIntPixels, dipsToIntPixels2 + dipsToIntPixels, dipsToIntPixels2);
        addView(this.f34295b, layoutParams);
        TextView textView = new TextView(getContext());
        this.f34294a = textView;
        textView.setSingleLine();
        this.f34294a.setEllipsize(TextUtils.TruncateAt.END);
        this.f34294a.setTextColor(-1);
        this.f34294a.setTextSize(20.0f);
        this.f34294a.setTypeface(DrawableConstants.CloseButton.TEXT_TYPEFACE);
        this.f34294a.setText("");
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(15);
        layoutParams2.addRule(0, this.f34295b.getId());
        this.f34294a.setPadding(0, dipsToIntPixels, 0, 0);
        layoutParams2.setMargins(0, 0, dipsToIntPixels4, 0);
        addView(this.f34294a, layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, dipsToIntPixels3);
        layoutParams3.addRule(11);
        setLayoutParams(layoutParams3);
    }
}
