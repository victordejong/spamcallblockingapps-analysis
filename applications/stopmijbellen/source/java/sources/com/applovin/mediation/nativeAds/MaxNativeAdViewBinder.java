package com.applovin.mediation.nativeAds;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/nativeAds/MaxNativeAdViewBinder.class */
public class MaxNativeAdViewBinder {
    public final int advertiserTextViewId;
    public final int bodyTextViewId;
    public final int callToActionButtonId;
    public final int iconContentViewId;
    public final int iconImageViewId;
    public final int layoutResourceId;
    public final View mainView;
    public final int mediaContentFrameLayoutId;
    public final int mediaContentViewGroupId;
    public final int optionsContentFrameLayoutId;
    public final int optionsContentViewGroupId;
    public final String templateType;
    public final int titleTextViewId;

    /* loaded from: classes-dex2jar.jar:com/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder.class */
    public static class Builder {

        /* renamed from: a */
        private final View f5825a;

        /* renamed from: b */
        private final int f5826b;

        /* renamed from: c */
        private int f5827c;

        /* renamed from: d */
        private int f5828d;

        /* renamed from: e */
        private int f5829e;

        /* renamed from: f */
        private int f5830f;

        /* renamed from: g */
        private int f5831g;

        /* renamed from: h */
        private int f5832h;

        /* renamed from: i */
        private int f5833i;

        /* renamed from: j */
        private int f5834j;

        /* renamed from: k */
        private int f5835k;

        /* renamed from: l */
        private int f5836l;

        /* renamed from: m */
        private String f5837m;

        public Builder(int i) {
            this(i, null);
        }

        private Builder(int i, View view) {
            this.f5827c = -1;
            this.f5828d = -1;
            this.f5829e = -1;
            this.f5830f = -1;
            this.f5831g = -1;
            this.f5832h = -1;
            this.f5833i = -1;
            this.f5834j = -1;
            this.f5835k = -1;
            this.f5836l = -1;
            this.f5826b = i;
            this.f5825a = view;
        }

        public Builder(View view) {
            this(-1, view);
        }

        public MaxNativeAdViewBinder build() {
            return new MaxNativeAdViewBinder(this.f5825a, this.f5826b, this.f5827c, this.f5828d, this.f5829e, this.f5830f, this.f5831g, this.f5832h, this.f5833i, this.f5834j, this.f5835k, this.f5836l, this.f5837m);
        }

        public Builder setAdvertiserTextViewId(int i) {
            this.f5828d = i;
            return this;
        }

        public Builder setBodyTextViewId(int i) {
            this.f5829e = i;
            return this;
        }

        public Builder setCallToActionButtonId(int i) {
            this.f5836l = i;
            return this;
        }

        @Deprecated
        public Builder setIconContentViewId(int i) {
            this.f5831g = i;
            return this;
        }

        public Builder setIconImageViewId(int i) {
            this.f5830f = i;
            return this;
        }

        @Deprecated
        public Builder setMediaContentFrameLayoutId(int i) {
            this.f5835k = i;
            return this;
        }

        public Builder setMediaContentViewGroupId(int i) {
            this.f5834j = i;
            return this;
        }

        @Deprecated
        public Builder setOptionsContentFrameLayoutId(int i) {
            this.f5833i = i;
            return this;
        }

        public Builder setOptionsContentViewGroupId(int i) {
            this.f5832h = i;
            return this;
        }

        public Builder setTemplateType(String str) {
            this.f5837m = str;
            return this;
        }

        public Builder setTitleTextViewId(int i) {
            this.f5827c = i;
            return this;
        }
    }

    private MaxNativeAdViewBinder(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, String str) {
        this.mainView = view;
        this.layoutResourceId = i;
        this.titleTextViewId = i2;
        this.advertiserTextViewId = i3;
        this.bodyTextViewId = i4;
        this.iconImageViewId = i5;
        this.iconContentViewId = i6;
        this.optionsContentViewGroupId = i7;
        this.optionsContentFrameLayoutId = i8;
        this.mediaContentViewGroupId = i9;
        this.mediaContentFrameLayoutId = i10;
        this.callToActionButtonId = i11;
        this.templateType = str;
    }
}
