package com.applovin.impl.sdk.nativeAd;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.net.Uri;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.applovin.impl.adview.AppLovinTouchToClickListener;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.C1583R;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/nativeAd/AppLovinOptionsView.class */
public class AppLovinOptionsView extends FrameLayout implements AppLovinTouchToClickListener.OnClickListener {
    private final Uri privacyDestinationUri;
    private final C1408l sdk;

    public AppLovinOptionsView(AppLovinNativeAdImpl appLovinNativeAdImpl, C1408l c1408l, Context context) {
        super(context);
        this.sdk = c1408l;
        this.privacyDestinationUri = appLovinNativeAdImpl.getPrivacyDestinationUri();
        setBackgroundColor(-16777216);
        setAlpha(0.2f);
        ImageView imageView = new ImageView(getContext());
        imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        Uri privacyIconUri = appLovinNativeAdImpl.getPrivacyIconUri();
        if (privacyIconUri != null) {
            imageView.setImageURI(privacyIconUri);
        } else {
            imageView.setImageResource(C1583R.C1585drawable.privacy_icon);
        }
        addView(imageView);
        setOnTouchListener(new AppLovinTouchToClickListener(c1408l, C1314b.f4732aN, context, this));
    }

    @Override // com.applovin.impl.adview.AppLovinTouchToClickListener.OnClickListener
    public void onClick(View view, PointF pointF) {
        Utils.openUri(this.sdk.m5532K(), this.privacyDestinationUri, this.sdk);
    }
}
