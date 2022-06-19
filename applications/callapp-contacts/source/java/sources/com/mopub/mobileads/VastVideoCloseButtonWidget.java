package com.mopub.mobileads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.C0790b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.base.C16855R;
import com.mopub.mobileads.resource.DrawableConstants;
import com.mopub.network.Networking;
import com.mopub.volley.toolbox.ImageLoader;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastVideoCloseButtonWidget.class */
public class VastVideoCloseButtonWidget extends RelativeLayout {

    /* renamed from: a */
    TextView f59517a;

    /* renamed from: b */
    ImageView f59518b;

    /* renamed from: c */
    final ImageLoader f59519c;

    /* renamed from: d */
    boolean f59520d;

    /* renamed from: e */
    private final int f59521e;

    /* renamed from: f */
    private final int f59522f;

    /* renamed from: g */
    private final int f59523g;

    /* renamed from: h */
    private final int f59524h;

    public VastVideoCloseButtonWidget(Context context) {
        super(context);
        setId(View.generateViewId());
        int dipsToIntPixels = Dips.dipsToIntPixels(6.0f, context);
        this.f59521e = dipsToIntPixels;
        int dipsToIntPixels2 = Dips.dipsToIntPixels(5.0f, context);
        this.f59523g = dipsToIntPixels2;
        int dipsToIntPixels3 = Dips.dipsToIntPixels(50.0f, context);
        this.f59524h = dipsToIntPixels3;
        int dipsToIntPixels4 = Dips.dipsToIntPixels(BitmapDescriptorFactory.HUE_RED, context);
        this.f59522f = dipsToIntPixels4;
        this.f59519c = Networking.getImageLoader(context);
        ImageView imageView = new ImageView(getContext());
        this.f59518b = imageView;
        imageView.setId(View.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dipsToIntPixels3, dipsToIntPixels3);
        layoutParams.addRule(11);
        this.f59518b.setImageDrawable(C0790b.m44502a(getContext(), C16855R.C16856drawable.ic_mopub_skip_button));
        this.f59518b.setPadding(dipsToIntPixels2, dipsToIntPixels2 + dipsToIntPixels, dipsToIntPixels2 + dipsToIntPixels, dipsToIntPixels2);
        addView(this.f59518b, layoutParams);
        TextView textView = new TextView(getContext());
        this.f59517a = textView;
        textView.setSingleLine();
        this.f59517a.setEllipsize(TextUtils.TruncateAt.END);
        this.f59517a.setTextColor(-1);
        this.f59517a.setTextSize(20.0f);
        this.f59517a.setTypeface(DrawableConstants.CloseButton.TEXT_TYPEFACE);
        this.f59517a.setText("");
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(15);
        layoutParams2.addRule(0, this.f59518b.getId());
        this.f59517a.setPadding(0, dipsToIntPixels, 0, 0);
        layoutParams2.setMargins(0, 0, dipsToIntPixels4, 0);
        addView(this.f59517a, layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, dipsToIntPixels3);
        layoutParams3.addRule(11);
        setLayoutParams(layoutParams3);
    }
}
