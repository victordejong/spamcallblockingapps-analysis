package com.netqin.p525cm.p526ad.admob;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.ads.formats.MediaView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAdView;
import p131c.p396i.p397a.p398e.AbstractViewTreeObserver$OnScrollChangedListenerC6512e;
import p131c.p431l.p432a.p468n.C6860r;
/* renamed from: com.netqin.cm.ad.admob.BaseAdMobAdvanceNativeView */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/ad/admob/BaseAdMobAdvanceNativeView.class */
public abstract class BaseAdMobAdvanceNativeView extends AbstractViewTreeObserver$OnScrollChangedListenerC6512e<UnifiedNativeAd> {
    public UnifiedNativeAdView mAdView;

    public BaseAdMobAdvanceNativeView(Context context) {
        super(context, "AM");
    }

    public BaseAdMobAdvanceNativeView(Context context, AttributeSet attributeSet) {
        super(context, "AM", attributeSet);
    }

    private void populateUnifiedNativeAdView(UnifiedNativeAd unifiedNativeAd, UnifiedNativeAdView unifiedNativeAdView) {
        TextView textView = (TextView) findViewById(2131230796);
        TextView textView2 = (TextView) findViewById(2131230789);
        ImageView imageView = (ImageView) findViewById(2131230799);
        TextView textView3 = (TextView) findViewById(2131230790);
        ViewGroup viewGroup = (ViewGroup) findViewById(2131230794);
        if (viewGroup != null) {
            MediaView mediaView = new MediaView(getContext());
            unifiedNativeAdView.setMediaView(mediaView);
            viewGroup.addView(mediaView);
        }
        unifiedNativeAdView.setCallToActionView(textView3);
        if (textView != null) {
            unifiedNativeAdView.setHeadlineView(textView);
            textView.setText(unifiedNativeAd.mo16790e());
        }
        if (textView2 != null) {
            unifiedNativeAdView.setBodyView(textView2);
            textView2.setText(unifiedNativeAd.mo16792c());
        }
        if (textView3 != null) {
            textView3.setText(unifiedNativeAd.mo16791d());
        }
        NativeAd.Image f = unifiedNativeAd.mo16789f();
        if (f != null && imageView != null) {
            unifiedNativeAdView.setIconView(imageView);
            loadIconImage(imageView, f.getDrawable());
            unifiedNativeAdView.getIconView().setVisibility(0);
        } else if (imageView != null) {
            imageView.setVisibility(8);
        }
        unifiedNativeAdView.setNativeAd(unifiedNativeAd);
    }

    @Override // p131c.p396i.p397a.p398e.AbstractViewTreeObserver$OnScrollChangedListenerC6512e
    public void clearAdData() {
        UnifiedNativeAdView unifiedNativeAdView = this.mAdView;
        if (unifiedNativeAdView != null) {
            unifiedNativeAdView.m18033a();
            this.mAdView = null;
        }
    }

    public ViewGroup getAdChoicesContainer() {
        return (ViewGroup) findViewById(2131230791);
    }

    public abstract int getViewId();

    @Override // p131c.p396i.p397a.p398e.AbstractViewTreeObserver$OnScrollChangedListenerC6512e
    public int[] layoutIds() {
        return new int[]{getViewId()};
    }

    public void loadIconImage(ImageView imageView, Drawable drawable) {
        if (drawable != null && imageView != null) {
            imageView.setImageDrawable(drawable);
        }
    }

    public void onBindData(UnifiedNativeAd unifiedNativeAd) {
        removeAllViews();
        this.mAdView = new UnifiedNativeAdView(getContext());
        View.inflate(getContext(), getLayoutId(), this);
        populateUnifiedNativeAdView(unifiedNativeAd, this.mAdView);
        ViewGroup adChoicesContainer = getAdChoicesContainer();
        if (adChoicesContainer == null) {
            adChoicesContainer = this;
        } else {
            ViewGroup.LayoutParams layoutParams = adChoicesContainer.getLayoutParams();
            layoutParams.width = C6860r.m19547a(50.0f);
            adChoicesContainer.setLayoutParams(layoutParams);
        }
        adChoicesContainer.addView(this.mAdView);
    }
}
