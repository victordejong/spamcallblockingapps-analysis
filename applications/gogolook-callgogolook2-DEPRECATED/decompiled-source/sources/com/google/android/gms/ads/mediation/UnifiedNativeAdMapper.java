package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;
import java.util.Map;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7354p0;
@AbstractC7354p0
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/UnifiedNativeAdMapper.class */
public class UnifiedNativeAdMapper {
    public Bundle extras = new Bundle();
    public VideoController zzboi;
    public String zzcih;
    public String zzdjm;
    public List<NativeAd.Image> zzdjn;
    public NativeAd.Image zzdjo;
    public String zzdjp;
    public String zzdjq;
    public Double zzdjr;
    public String zzdjs;
    public String zzdjt;
    public boolean zzdju;
    public View zzdjv;
    public View zzdjw;
    public Object zzdjx;
    public boolean zzdjy;
    public boolean zzdjz;

    public View getAdChoicesContent() {
        return this.zzdjv;
    }

    public final String getAdvertiser() {
        return this.zzdjq;
    }

    public final String getBody() {
        return this.zzcih;
    }

    public final String getCallToAction() {
        return this.zzdjp;
    }

    public final Bundle getExtras() {
        return this.extras;
    }

    public final String getHeadline() {
        return this.zzdjm;
    }

    public final NativeAd.Image getIcon() {
        return this.zzdjo;
    }

    public final List<NativeAd.Image> getImages() {
        return this.zzdjn;
    }

    public final boolean getOverrideClickHandling() {
        return this.zzdjz;
    }

    public final boolean getOverrideImpressionRecording() {
        return this.zzdjy;
    }

    public final String getPrice() {
        return this.zzdjt;
    }

    public final Double getStarRating() {
        return this.zzdjr;
    }

    public final String getStore() {
        return this.zzdjs;
    }

    public final VideoController getVideoController() {
        return this.zzboi;
    }

    public void handleClick(View view) {
    }

    public boolean hasVideoContent() {
        return this.zzdju;
    }

    public void recordImpression() {
    }

    public void setAdChoicesContent(View view) {
        this.zzdjv = view;
    }

    public final void setAdvertiser(String str) {
        this.zzdjq = str;
    }

    public final void setBody(String str) {
        this.zzcih = str;
    }

    public final void setCallToAction(String str) {
        this.zzdjp = str;
    }

    public final void setExtras(Bundle bundle) {
        this.extras = bundle;
    }

    public void setHasVideoContent(boolean z) {
        this.zzdju = z;
    }

    public final void setHeadline(String str) {
        this.zzdjm = str;
    }

    public final void setIcon(NativeAd.Image image) {
        this.zzdjo = image;
    }

    public final void setImages(List<NativeAd.Image> list) {
        this.zzdjn = list;
    }

    public void setMediaView(View view) {
        this.zzdjw = view;
    }

    public final void setOverrideClickHandling(boolean z) {
        this.zzdjz = z;
    }

    public final void setOverrideImpressionRecording(boolean z) {
        this.zzdjy = z;
    }

    public final void setPrice(String str) {
        this.zzdjt = str;
    }

    public final void setStarRating(Double d) {
        this.zzdjr = d;
    }

    public final void setStore(String str) {
        this.zzdjs = str;
    }

    public void trackViews(View view, Map<String, View> map, Map<String, View> map2) {
    }

    public void untrackView(View view) {
    }

    public final void zza(VideoController videoController) {
        this.zzboi = videoController;
    }

    public final Object zzbh() {
        return this.zzdjx;
    }

    public final void zzm(Object obj) {
        this.zzdjx = obj;
    }

    public final View zzxr() {
        return this.zzdjw;
    }
}
