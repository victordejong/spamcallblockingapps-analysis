package com.applovin.mediation.nativeAds;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import com.applovin.mediation.MaxAdFormat;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/nativeAds/MaxNativeAd.class */
public class MaxNativeAd {
    private final String advertiser;
    private final String body;
    private final String callToAction;
    private final MaxAdFormat format;
    private final MaxNativeAdImage icon;
    private final View iconView;
    private final View mediaView;
    private final View optionsView;
    private final String title;

    /* loaded from: classes-dex2jar.jar:com/applovin/mediation/nativeAds/MaxNativeAd$Builder.class */
    public static class Builder {

        /* renamed from: a */
        private MaxAdFormat f5797a;

        /* renamed from: b */
        private String f5798b;

        /* renamed from: c */
        private String f5799c;

        /* renamed from: d */
        private String f5800d;

        /* renamed from: e */
        private String f5801e;

        /* renamed from: f */
        private MaxNativeAdImage f5802f;

        /* renamed from: g */
        private View f5803g;

        /* renamed from: h */
        private View f5804h;

        /* renamed from: i */
        private View f5805i;

        public MaxNativeAd build() {
            return new MaxNativeAd(this);
        }

        public Builder setAdFormat(MaxAdFormat maxAdFormat) {
            this.f5797a = maxAdFormat;
            return this;
        }

        public Builder setAdvertiser(String str) {
            this.f5799c = str;
            return this;
        }

        public Builder setBody(String str) {
            this.f5800d = str;
            return this;
        }

        public Builder setCallToAction(String str) {
            this.f5801e = str;
            return this;
        }

        public Builder setIcon(MaxNativeAdImage maxNativeAdImage) {
            this.f5802f = maxNativeAdImage;
            return this;
        }

        public Builder setIconView(View view) {
            this.f5803g = view;
            return this;
        }

        public Builder setMediaView(View view) {
            this.f5805i = view;
            return this;
        }

        public Builder setOptionsView(View view) {
            this.f5804h = view;
            return this;
        }

        public Builder setTitle(String str) {
            this.f5798b = str;
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage.class */
    public static class MaxNativeAdImage {

        /* renamed from: a */
        private Drawable f5806a;

        /* renamed from: b */
        private Uri f5807b;

        public MaxNativeAdImage(Drawable drawable) {
            this.f5806a = drawable;
        }

        public MaxNativeAdImage(Uri uri) {
            this.f5807b = uri;
        }

        public Drawable getDrawable() {
            return this.f5806a;
        }

        public Uri getUri() {
            return this.f5807b;
        }
    }

    public MaxNativeAd(Builder builder) {
        this.format = builder.f5797a;
        this.title = builder.f5798b;
        this.advertiser = builder.f5799c;
        this.body = builder.f5800d;
        this.callToAction = builder.f5801e;
        this.icon = builder.f5802f;
        this.iconView = builder.f5803g;
        this.optionsView = builder.f5804h;
        this.mediaView = builder.f5805i;
    }

    public final String getAdvertiser() {
        return this.advertiser;
    }

    public final String getBody() {
        return this.body;
    }

    public final String getCallToAction() {
        return this.callToAction;
    }

    public final MaxAdFormat getFormat() {
        return this.format;
    }

    public final MaxNativeAdImage getIcon() {
        return this.icon;
    }

    public final View getIconView() {
        return this.iconView;
    }

    public final View getMediaView() {
        return this.mediaView;
    }

    public final View getOptionsView() {
        return this.optionsView;
    }

    public final String getTitle() {
        return this.title;
    }

    public void prepareViewForInteraction(MaxNativeAdView maxNativeAdView) {
    }
}
