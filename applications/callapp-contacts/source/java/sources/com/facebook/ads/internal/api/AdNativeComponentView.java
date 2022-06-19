package com.facebook.ads.internal.api;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
/* loaded from: classes3-dex2jar.jar:com/facebook/ads/internal/api/AdNativeComponentView.class */
public abstract class AdNativeComponentView extends RelativeLayout implements AdComponentView {
    public AdComponentViewApi mAdComponentViewApi;
    private final AdComponentViewParentApi mAdComponentViewParentApi = new AdComponentViewParentApi() { // from class: com.facebook.ads.internal.api.AdNativeComponentView.1
        @Override // com.facebook.ads.internal.api.AdComponentView
        public final void addView(View view) {
            AdNativeComponentView.super.addView(view);
        }

        @Override // com.facebook.ads.internal.api.AdComponentView
        public final void addView(View view, int i) {
            AdNativeComponentView.super.addView(view, i);
        }

        @Override // com.facebook.ads.internal.api.AdComponentView
        public final void addView(View view, int i, int i2) {
            AdNativeComponentView.super.addView(view, i, i2);
        }

        @Override // com.facebook.ads.internal.api.AdComponentView
        public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
            AdNativeComponentView.super.addView(view, i, layoutParams);
        }

        @Override // com.facebook.ads.internal.api.AdComponentView, android.view.ViewManager
        public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
            AdNativeComponentView.super.addView(view, layoutParams);
        }

        @Override // com.facebook.ads.internal.api.AdComponentViewParentApi
        public final void bringChildToFront(View view) {
            AdNativeComponentView.super.bringChildToFront(view);
        }

        @Override // com.facebook.ads.internal.api.AdComponentViewParentApi
        public final void onAttachedToWindow() {
            AdNativeComponentView.super.onAttachedToWindow();
        }

        @Override // com.facebook.ads.internal.api.AdComponentViewParentApi
        public final void onDetachedFromWindow() {
            AdNativeComponentView.super.onDetachedFromWindow();
        }

        @Override // com.facebook.ads.internal.api.AdComponentViewParentApi
        public final void onMeasure(int i, int i2) {
            AdNativeComponentView.super.onMeasure(i, i2);
        }

        @Override // com.facebook.ads.internal.api.AdComponentViewParentApi
        public final void onVisibilityChanged(View view, int i) {
            AdNativeComponentView.super.onVisibilityChanged(view, i);
        }

        @Override // com.facebook.ads.internal.api.AdComponentView
        public final void onWindowFocusChanged(boolean z) {
            AdNativeComponentView.super.onWindowFocusChanged(z);
        }

        @Override // com.facebook.ads.internal.api.AdComponentView
        public final void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
            AdNativeComponentView.super.setLayoutParams(layoutParams);
        }

        @Override // com.facebook.ads.internal.api.AdComponentViewParentApi
        public final void setMeasuredDimension(int i, int i2) {
            AdNativeComponentView.super.setMeasuredDimension(i, i2);
        }
    };

    public AdNativeComponentView(Context context) {
        super(context);
    }

    public AdNativeComponentView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AdNativeComponentView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public AdNativeComponentView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // android.view.ViewGroup, com.facebook.ads.internal.api.AdComponentView
    public void addView(View view) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.addView(view);
        } else {
            super.addView(view);
        }
    }

    @Override // android.view.ViewGroup, com.facebook.ads.internal.api.AdComponentView
    public void addView(View view, int i) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.addView(view, i);
        } else {
            super.addView(view, i);
        }
    }

    @Override // android.view.ViewGroup, com.facebook.ads.internal.api.AdComponentView
    public void addView(View view, int i, int i2) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.addView(view, i, i2);
        } else {
            super.addView(view, i, i2);
        }
    }

    @Override // android.view.ViewGroup, com.facebook.ads.internal.api.AdComponentView
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.addView(view, i, layoutParams);
        } else {
            super.addView(view, i, layoutParams);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager, com.facebook.ads.internal.api.AdComponentView
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.addView(view, layoutParams);
        } else {
            super.addView(view, layoutParams);
        }
    }

    public void attachAdComponentViewApi(AdComponentViewApiProvider adComponentViewApiProvider) {
        if (DynamicLoaderFactory.isFallbackMode()) {
            return;
        }
        if (this.mAdComponentViewApi != null) {
            throw new IllegalStateException("AdComponentViewApi can't be attached more then once.");
        }
        adComponentViewApiProvider.getAdComponentViewApi().onAttachedToView(this, this.mAdComponentViewParentApi);
        this.mAdComponentViewApi = adComponentViewApiProvider.getAdComponentViewApi();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void bringChildToFront(View view) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.bringChildToFront(view);
        } else {
            super.bringChildToFront(view);
        }
    }

    public abstract View getAdContentsView();

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.onAttachedToWindow();
        } else {
            super.onAttachedToWindow();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.onDetachedFromWindow();
        } else {
            super.onDetachedFromWindow();
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.onMeasure(i, i2);
        } else {
            super.onMeasure(i, i2);
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.onVisibilityChanged(view, i);
        } else {
            super.onVisibilityChanged(view, i);
        }
    }

    @Override // android.view.View, com.facebook.ads.internal.api.AdComponentView
    public void onWindowFocusChanged(boolean z) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.onWindowFocusChanged(z);
        } else {
            super.onWindowFocusChanged(z);
        }
    }

    @Override // android.view.View, com.facebook.ads.internal.api.AdComponentView
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.setLayoutParams(layoutParams);
        } else {
            super.setLayoutParams(layoutParams);
        }
    }
}
