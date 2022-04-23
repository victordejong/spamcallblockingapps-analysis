package com.facebook.ads.internal.api;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.Keep;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/api/AdComponentView.class */
public abstract class AdComponentView extends FrameLayout {
    public AdComponentViewApi mAdComponentViewApi;
    public final AdComponentViewParentApi mAdComponentViewParentApi = new AdComponentViewParentApi() { // from class: com.facebook.ads.internal.api.AdComponentView.1
        @Override // com.facebook.ads.internal.api.AdComponentViewParentApi
        public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
            AdComponentView.super.addView(view, i, layoutParams);
        }

        @Override // com.facebook.ads.internal.api.AdComponentViewParentApi
        public void onAttachedToWindow() {
            AdComponentView.super.onAttachedToWindow();
        }

        @Override // com.facebook.ads.internal.api.AdComponentViewParentApi
        public void onDetachedFromWindow() {
            AdComponentView.super.onDetachedFromWindow();
        }

        @Override // com.facebook.ads.internal.api.AdComponentViewParentApi
        public void onMeasure(int i, int i2) {
            AdComponentView.super.onMeasure(i, i2);
        }

        @Override // com.facebook.ads.internal.api.AdComponentViewParentApi
        public void onVisibilityChanged(View view, int i) {
            AdComponentView.super.onVisibilityChanged(view, i);
        }

        @Override // com.facebook.ads.internal.api.AdComponentViewParentApi
        public void onWindowFocusChanged(boolean z) {
            AdComponentView.super.onWindowFocusChanged(z);
        }

        @Override // com.facebook.ads.internal.api.AdComponentViewParentApi
        public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
            AdComponentView.super.setLayoutParams(layoutParams);
        }

        @Override // com.facebook.ads.internal.api.AdComponentViewParentApi
        public void setMeasuredDimension(int i, int i2) {
            AdComponentView.super.setMeasuredDimension(i, i2);
        }
    };

    public AdComponentView(Context context) {
        super(context);
    }

    public AdComponentView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AdComponentView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public AdComponentView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public void attachAdComponentViewApi(AdComponentViewApiProvider adComponentViewApiProvider) {
        if (!DynamicLoaderFactory.isFallbackMode()) {
            if (this.mAdComponentViewApi == null) {
                adComponentViewApiProvider.getAdComponentViewApi().onAttachedToView(this, this.mAdComponentViewParentApi);
                this.mAdComponentViewApi = adComponentViewApiProvider.getAdComponentViewApi();
                return;
            }
            throw new IllegalStateException("AdComponentViewApi can't be attached more then once.");
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.onAttachedToWindow();
        } else {
            super.onAttachedToWindow();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.onDetachedFromWindow();
        } else {
            super.onDetachedFromWindow();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.onMeasure(i, i2);
        } else {
            super.onMeasure(i, i2);
        }
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.onVisibilityChanged(view, i);
        } else {
            super.onVisibilityChanged(view, i);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.onWindowFocusChanged(z);
        } else {
            super.onWindowFocusChanged(z);
        }
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.setLayoutParams(layoutParams);
        } else {
            super.setLayoutParams(layoutParams);
        }
    }
}
