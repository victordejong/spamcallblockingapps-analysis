package io.bidmachine.nativead.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RatingBar;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.bidmachine.R;
import io.bidmachine.core.Logger;
import io.bidmachine.nativead.NativeAd;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/view/NativeAdContentLayout.class */
public class NativeAdContentLayout extends NativeAdContainer {
    protected View callToActionView;
    private int callToActionViewId;
    private NativeAd currentAd;
    protected View descriptionView;
    private int descriptionViewId;
    protected View iconView;
    private int iconViewId;
    protected NativeMediaView mediaView;
    private int mediaViewId;
    protected View providerView;
    private int providerViewId;
    protected View ratingView;
    private int ratingViewId;
    protected View titleView;
    private int titleViewId;

    public NativeAdContentLayout(Context context) {
        this(context, null);
    }

    public NativeAdContentLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NativeAdContentLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.titleViewId = -1;
        this.callToActionViewId = -1;
        this.ratingViewId = -1;
        this.descriptionViewId = -1;
        this.providerViewId = -1;
        this.iconViewId = -1;
        this.mediaViewId = -1;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NativeAdContentLayout, i, 0);
            this.titleViewId = obtainStyledAttributes.getResourceId(R.styleable.NativeAdContentLayout_titleViewId, -1);
            this.callToActionViewId = obtainStyledAttributes.getResourceId(R.styleable.NativeAdContentLayout_callToActionViewId, -1);
            this.ratingViewId = obtainStyledAttributes.getResourceId(R.styleable.NativeAdContentLayout_ratingViewId, -1);
            this.descriptionViewId = obtainStyledAttributes.getResourceId(R.styleable.NativeAdContentLayout_descriptionViewId, -1);
            this.providerViewId = obtainStyledAttributes.getResourceId(R.styleable.NativeAdContentLayout_providerViewId, -1);
            this.iconViewId = obtainStyledAttributes.getResourceId(R.styleable.NativeAdContentLayout_iconViewId, -1);
            this.mediaViewId = obtainStyledAttributes.getResourceId(R.styleable.NativeAdContentLayout_mediaViewId, -1);
            obtainStyledAttributes.recycle();
        }
    }

    private Set<View> collectClickableViews(Set<View> set) {
        HashSet hashSet = new HashSet(getClickableViews());
        if (set != null) {
            try {
                hashSet.addAll(set);
            } catch (Exception e) {
                Logger.log(e);
            }
        }
        return hashSet;
    }

    @Override // io.bidmachine.nativead.view.NativeAdContainer, android.view.ViewGroup
    public /* bridge */ /* synthetic */ void addView(View view) {
        super.addView(view);
    }

    @Override // io.bidmachine.nativead.view.NativeAdContainer, android.view.ViewGroup
    public /* bridge */ /* synthetic */ void addView(View view, int i) {
        super.addView(view, i);
    }

    @Override // io.bidmachine.nativead.view.NativeAdContainer, android.view.ViewGroup
    public /* bridge */ /* synthetic */ void addView(View view, int i, int i2) {
        super.addView(view, i, i2);
    }

    @Override // io.bidmachine.nativead.view.NativeAdContainer, android.view.ViewGroup
    public /* bridge */ /* synthetic */ void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
    }

    @Override // io.bidmachine.nativead.view.NativeAdContainer, android.view.ViewGroup, android.view.ViewManager
    public /* bridge */ /* synthetic */ void addView(View view, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, layoutParams);
    }

    public void bind(NativeAd nativeAd) {
        View providerView;
        if (nativeAd != null && nativeAd.isLoaded()) {
            View view = this.titleView;
            if (view instanceof TextView) {
                ((TextView) view).setText(nativeAd.getTitle());
            }
            View view2 = this.descriptionView;
            if (view2 instanceof TextView) {
                ((TextView) view2).setText(nativeAd.getDescription());
            }
            View view3 = this.ratingView;
            if (view3 instanceof RatingBar) {
                RatingBar ratingBar = (RatingBar) view3;
                if (nativeAd.getRating() == BitmapDescriptorFactory.HUE_RED) {
                    ratingBar.setVisibility(4);
                } else {
                    ratingBar.setVisibility(0);
                    ratingBar.setStepSize(0.1f);
                    ratingBar.setRating(nativeAd.getRating());
                }
            }
            View view4 = this.callToActionView;
            if (view4 instanceof TextView) {
                ((TextView) view4).setText(nativeAd.getCallToAction());
            }
            if ((this.providerView instanceof ViewGroup) && (providerView = nativeAd.getProviderView(getContext())) != null) {
                if (providerView.getParent() != null && (providerView.getParent() instanceof ViewGroup)) {
                    ((ViewGroup) providerView.getParent()).removeView(this.providerView);
                }
                ((ViewGroup) this.providerView).addView(providerView, new ViewGroup.LayoutParams(-2, -2));
            }
        }
    }

    @Override // io.bidmachine.nativead.view.NativeAdContainer, android.view.ViewGroup, android.view.ViewParent
    public /* bridge */ /* synthetic */ void bringChildToFront(View view) {
        super.bringChildToFront(view);
    }

    public void destroy() {
        NativeAd nativeAd = this.currentAd;
        if (nativeAd != null) {
            nativeAd.destroy();
        }
    }

    public View getCallToActionView() {
        return this.callToActionView;
    }

    public Set<View> getClickableViews() {
        HashSet hashSet = new HashSet();
        View view = this.callToActionView;
        if (view != null) {
            hashSet.add(view);
        }
        return hashSet;
    }

    public View getDescriptionView() {
        return this.descriptionView;
    }

    public View getIconView() {
        return this.iconView;
    }

    public NativeMediaView getMediaView() {
        return this.mediaView;
    }

    public View getProviderView() {
        return this.providerView;
    }

    public View getRatingView() {
        return this.ratingView;
    }

    public View getTitleView() {
        return this.titleView;
    }

    public boolean isRegistered() {
        NativeAd nativeAd = this.currentAd;
        return nativeAd != null && nativeAd.isViewRegistered();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        setTitleView(findViewById(this.titleViewId));
        setCallToActionView(findViewById(this.callToActionViewId));
        setRatingView(findViewById(this.ratingViewId));
        setDescriptionView(findViewById(this.descriptionViewId));
        setProviderView(findViewById(this.providerViewId));
        setIconView(findViewById(this.iconViewId));
        setMediaView((NativeMediaView) findViewById(this.mediaViewId));
    }

    public void registerViewForInteraction(NativeAd nativeAd) {
        registerViewForInteraction(nativeAd, null);
    }

    public void registerViewForInteraction(NativeAd nativeAd, Set<View> set) {
        if (nativeAd == null || !nativeAd.isLoaded()) {
            Logger.log("Native ad is not loaded. Please load it before registering");
            return;
        }
        unregisterViewForInteraction();
        this.currentAd = nativeAd;
        nativeAd.registerView(this, getIconView(), getMediaView(), collectClickableViews(set));
    }

    @Override // io.bidmachine.nativead.view.NativeAdContainer, android.view.ViewGroup
    public /* bridge */ /* synthetic */ void removeAllViews() {
        super.removeAllViews();
    }

    @Override // io.bidmachine.nativead.view.NativeAdContainer, android.view.ViewGroup, android.view.ViewManager
    public /* bridge */ /* synthetic */ void removeView(View view) {
        super.removeView(view);
    }

    public void setCallToActionView(View view) {
        this.callToActionView = view;
    }

    public void setDescriptionView(View view) {
        this.descriptionView = view;
    }

    public void setIconView(View view) {
        this.iconView = view;
    }

    public void setMediaView(NativeMediaView nativeMediaView) {
        this.mediaView = nativeMediaView;
    }

    public void setProviderView(View view) {
        this.providerView = view;
    }

    public void setRatingView(View view) {
        this.ratingView = view;
    }

    public void setTitleView(View view) {
        this.titleView = view;
    }

    public void unregisterViewForInteraction() {
        NativeAd nativeAd = this.currentAd;
        if (nativeAd != null) {
            nativeAd.unregisterView();
        }
    }
}
