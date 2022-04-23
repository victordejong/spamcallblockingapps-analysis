package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/mediation/UnifiedNativeAdMapper.class */
public class UnifiedNativeAdMapper {
    private Bundle extras = new Bundle();
    private VideoController zzcks;
    private String zzdxg;
    private String zzexa;
    private List<NativeAd.Image> zzexb;
    private NativeAd.Image zzexc;
    private String zzexd;
    private String zzexf;
    private String zzexg;
    private View zzexh;
    private boolean zzexi;
    private String zzexk;
    private Double zzexl;
    private View zzexm;
    private Object zzexn;
    private boolean zzexo;
    private boolean zzexp;
    private float zzexq;

    public View getAdChoicesContent() {
        return this.zzexm;
    }

    public final String getAdvertiser() {
        return this.zzexk;
    }

    public final String getBody() {
        return this.zzdxg;
    }

    public final String getCallToAction() {
        return this.zzexd;
    }

    public float getCurrentTime() {
        return BitmapDescriptorFactory.HUE_RED;
    }

    public float getDuration() {
        return BitmapDescriptorFactory.HUE_RED;
    }

    public final Bundle getExtras() {
        return this.extras;
    }

    public final String getHeadline() {
        return this.zzexa;
    }

    public final NativeAd.Image getIcon() {
        return this.zzexc;
    }

    public final List<NativeAd.Image> getImages() {
        return this.zzexb;
    }

    public float getMediaContentAspectRatio() {
        return this.zzexq;
    }

    public final boolean getOverrideClickHandling() {
        return this.zzexp;
    }

    public final boolean getOverrideImpressionRecording() {
        return this.zzexo;
    }

    public final String getPrice() {
        return this.zzexg;
    }

    public final Double getStarRating() {
        return this.zzexl;
    }

    public final String getStore() {
        return this.zzexf;
    }

    public final VideoController getVideoController() {
        return this.zzcks;
    }

    public void handleClick(View view) {
    }

    public boolean hasVideoContent() {
        return this.zzexi;
    }

    public void recordImpression() {
    }

    public void setAdChoicesContent(View view) {
        this.zzexm = view;
    }

    public final void setAdvertiser(String str) {
        this.zzexk = str;
    }

    public final void setBody(String str) {
        this.zzdxg = str;
    }

    public final void setCallToAction(String str) {
        this.zzexd = str;
    }

    public final void setExtras(Bundle bundle) {
        this.extras = bundle;
    }

    public void setHasVideoContent(boolean z) {
        this.zzexi = z;
    }

    public final void setHeadline(String str) {
        this.zzexa = str;
    }

    public final void setIcon(NativeAd.Image image) {
        this.zzexc = image;
    }

    public final void setImages(List<NativeAd.Image> list) {
        this.zzexb = list;
    }

    public void setMediaContentAspectRatio(float f) {
        this.zzexq = f;
    }

    public void setMediaView(View view) {
        this.zzexh = view;
    }

    public final void setOverrideClickHandling(boolean z) {
        this.zzexp = z;
    }

    public final void setOverrideImpressionRecording(boolean z) {
        this.zzexo = z;
    }

    public final void setPrice(String str) {
        this.zzexg = str;
    }

    public final void setStarRating(Double d2) {
        this.zzexl = d2;
    }

    public final void setStore(String str) {
        this.zzexf = str;
    }

    public void trackViews(View view, Map<String, View> map, Map<String, View> map2) {
    }

    public void untrackView(View view) {
    }

    public final void zza(VideoController videoController) {
        this.zzcks = videoController;
    }

    public final View zzafo() {
        return this.zzexh;
    }

    public final Object zzka() {
        return this.zzexn;
    }

    public final void zzm(Object obj) {
        this.zzexn = obj;
    }
}
