package com.google.android.gms.ads.formats;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import p081h.p203i.p204a.p224e.p259j.p260a.C7452x1;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/formats/NativeContentAdView.class */
public final class NativeContentAdView extends NativeAdView {
    public NativeContentAdView(Context context) {
        super(context);
    }

    public NativeContentAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NativeContentAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public NativeContentAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public final View getAdvertiserView() {
        return super.zzq(NativeContentAd.ASSET_ADVERTISER);
    }

    public final View getBodyView() {
        return super.zzq(NativeContentAd.ASSET_BODY);
    }

    public final View getCallToActionView() {
        return super.zzq(NativeContentAd.ASSET_CALL_TO_ACTION);
    }

    public final View getHeadlineView() {
        return super.zzq(NativeContentAd.ASSET_HEADLINE);
    }

    public final View getImageView() {
        return super.zzq(NativeContentAd.ASSET_IMAGE);
    }

    public final View getLogoView() {
        return super.zzq(NativeContentAd.ASSET_LOGO);
    }

    public final MediaView getMediaView() {
        View zzq = super.zzq(NativeContentAd.ASSET_MEDIA_VIDEO);
        if (zzq instanceof MediaView) {
            return (MediaView) zzq;
        }
        if (zzq == null) {
            return null;
        }
        C7452x1.m20572b("View is not an instance of MediaView");
        return null;
    }

    public final void setAdvertiserView(View view) {
        super.zza(NativeContentAd.ASSET_ADVERTISER, view);
    }

    public final void setBodyView(View view) {
        super.zza(NativeContentAd.ASSET_BODY, view);
    }

    public final void setCallToActionView(View view) {
        super.zza(NativeContentAd.ASSET_CALL_TO_ACTION, view);
    }

    public final void setHeadlineView(View view) {
        super.zza(NativeContentAd.ASSET_HEADLINE, view);
    }

    public final void setImageView(View view) {
        super.zza(NativeContentAd.ASSET_IMAGE, view);
    }

    public final void setLogoView(View view) {
        super.zza(NativeContentAd.ASSET_LOGO, view);
    }

    public final void setMediaView(MediaView mediaView) {
        super.zza(NativeContentAd.ASSET_MEDIA_VIDEO, mediaView);
    }
}
