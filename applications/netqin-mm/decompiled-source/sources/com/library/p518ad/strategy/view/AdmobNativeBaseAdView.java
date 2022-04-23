package com.library.p518ad.strategy.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.ads.formats.MediaView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAdView;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeAppInstallAdView;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.formats.NativeContentAdView;
import com.library.p518ad.core.AbstractAdView;
import java.util.List;
import p131c.p396i.p397a.p406i.p416g.C6611a;
/* renamed from: com.library.ad.strategy.view.AdmobNativeBaseAdView */
/* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/view/AdmobNativeBaseAdView.class */
public abstract class AdmobNativeBaseAdView extends AbstractAdView<Pair<NativeAppInstallAd, NativeContentAd>> {
    public NativeAdView mAdView;

    public AdmobNativeBaseAdView(Context context) {
        super(context, "AM");
    }

    public AdmobNativeBaseAdView(Context context, AttributeSet attributeSet) {
        super(context, "AM", attributeSet);
    }

    public void loadBigImage(ImageView imageView, Drawable drawable) {
        if (drawable != null && imageView != null && imageView.getVisibility() == 0) {
            new C6611a(imageView).m20373a(drawable);
        }
    }

    public void loadIconImage(ImageView imageView, Drawable drawable) {
        if (drawable != null && imageView != null) {
            imageView.setImageDrawable(drawable);
        }
    }

    public void onBindData(Pair<NativeAppInstallAd, NativeContentAd> pair) {
        NativeAppInstallAd nativeAppInstallAd = (NativeAppInstallAd) pair.first;
        NativeContentAd nativeContentAd = (NativeContentAd) pair.second;
        if (nativeAppInstallAd != null || nativeContentAd != null) {
            boolean z = nativeAppInstallAd != null;
            String str = "isAppInstallAd:" + z;
            if (z) {
                this.mAdView = new NativeAppInstallAdView(getContext());
                View.inflate(getContext(), getLayoutId(), this.mAdView);
                populateAppInstallAdView(nativeAppInstallAd, (NativeAppInstallAdView) this.mAdView);
            } else {
                this.mAdView = new NativeContentAdView(getContext());
                View.inflate(getContext(), getLayoutId(), this.mAdView);
                populateContentAdView(nativeContentAd, (NativeContentAdView) this.mAdView);
            }
            removeAllViews();
            addView(this.mAdView);
        }
    }

    public void populateAppInstallAdView(NativeAppInstallAd nativeAppInstallAd, NativeAppInstallAdView nativeAppInstallAdView) {
        TextView textView = (TextView) getView(titleId(), nativeAppInstallAdView);
        TextView textView2 = (TextView) getView(bodyId(), nativeAppInstallAdView);
        ImageView imageView = (ImageView) getView(iconId(), nativeAppInstallAdView);
        TextView textView3 = (TextView) getView(buttonId(), nativeAppInstallAdView);
        ImageView imageView2 = (ImageView) getView(imageId(), nativeAppInstallAdView);
        ViewGroup viewGroup = (ViewGroup) getView(imageContainerId(), nativeAppInstallAdView);
        if (viewGroup != null) {
            MediaView mediaView = new MediaView(getContext());
            viewGroup.addView(mediaView);
            nativeAppInstallAdView.setMediaView(mediaView);
        } else if (imageView2 != null) {
            nativeAppInstallAdView.setImageView(imageView2);
        }
        if (textView != null) {
            nativeAppInstallAdView.setHeadlineView(textView);
            textView.setText(nativeAppInstallAd.mo16826d());
        }
        if (textView2 != null) {
            nativeAppInstallAdView.setBodyView(textView2);
            textView2.setText(nativeAppInstallAd.mo16828b());
        }
        if (textView3 != null) {
            nativeAppInstallAdView.setCallToActionView(textView3);
            textView3.setText(nativeAppInstallAd.mo16827c());
        }
        if (!(imageView == null || nativeAppInstallAd.mo16825e() == null)) {
            nativeAppInstallAdView.setIconView(imageView);
            loadIconImage(imageView, nativeAppInstallAd.mo16825e().getDrawable());
        }
        List<NativeAd.Image> f = nativeAppInstallAd.mo16824f();
        if (f != null) {
            loadBigImage(imageView2, f.size() > 0 ? f.get(0).getDrawable() : null);
        }
        nativeAppInstallAdView.setNativeAd(nativeAppInstallAd);
    }

    public void populateContentAdView(NativeContentAd nativeContentAd, NativeContentAdView nativeContentAdView) {
        TextView textView = (TextView) getView(titleId(), nativeContentAdView);
        TextView textView2 = (TextView) getView(bodyId(), nativeContentAdView);
        ImageView imageView = (ImageView) getView(iconId(), nativeContentAdView);
        TextView textView3 = (TextView) getView(buttonId(), nativeContentAdView);
        ImageView imageView2 = (ImageView) getView(imageId(), nativeContentAdView);
        ViewGroup viewGroup = (ViewGroup) getView(imageContainerId(), nativeContentAdView);
        nativeContentAdView.setCallToActionView(textView3);
        if (viewGroup != null) {
            MediaView mediaView = new MediaView(getContext());
            viewGroup.addView(mediaView);
            nativeContentAdView.setMediaView(mediaView);
        } else if (imageView2 != null) {
            nativeContentAdView.setImageView(imageView2);
        }
        if (textView != null) {
            nativeContentAdView.setHeadlineView(textView);
            textView.setText(nativeContentAd.mo16814e());
        }
        if (textView2 != null) {
            nativeContentAdView.setBodyView(textView2);
            textView2.setText(nativeContentAd.mo16816c());
        }
        if (textView3 != null) {
            textView3.setText(nativeContentAd.mo16815d());
        }
        List<NativeAd.Image> f = nativeContentAd.mo16813f();
        loadBigImage(imageView2, f.size() > 0 ? f.get(0).getDrawable() : null);
        NativeAd.Image g = nativeContentAd.mo16812g();
        if (g != null && imageView != null) {
            nativeContentAdView.setLogoView(imageView);
            loadIconImage(imageView, g.getDrawable());
            nativeContentAdView.getLogoView().setVisibility(0);
        } else if (imageView != null) {
            imageView.setVisibility(8);
        }
        nativeContentAdView.setNativeAd(nativeContentAd);
    }
}
