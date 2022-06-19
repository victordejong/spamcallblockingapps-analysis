package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/UnifiedNativeAdMapper.class */
public class UnifiedNativeAdMapper {
    private Bundle extras = new Bundle();
    private VideoController zzckl;
    private String zzdvw;
    private String zzeuu;
    private List<NativeAd.Image> zzeuv;
    private NativeAd.Image zzeuw;
    private String zzeux;
    private String zzeuz;
    private String zzeva;
    private View zzevb;
    private boolean zzevc;
    private String zzeve;
    private Double zzevf;
    private View zzevg;
    private Object zzevh;
    private boolean zzevi;
    private boolean zzevj;
    private float zzevk;

    public View getAdChoicesContent() {
        return this.zzevg;
    }

    public final String getAdvertiser() {
        return this.zzeve;
    }

    public final String getBody() {
        return this.zzdvw;
    }

    public final String getCallToAction() {
        return this.zzeux;
    }

    public float getCurrentTime() {
        return 0.0f;
    }

    public float getDuration() {
        return 0.0f;
    }

    public final Bundle getExtras() {
        return this.extras;
    }

    public final String getHeadline() {
        return this.zzeuu;
    }

    public final NativeAd.Image getIcon() {
        return this.zzeuw;
    }

    public final List<NativeAd.Image> getImages() {
        return this.zzeuv;
    }

    public float getMediaContentAspectRatio() {
        return this.zzevk;
    }

    public final boolean getOverrideClickHandling() {
        return this.zzevj;
    }

    public final boolean getOverrideImpressionRecording() {
        return this.zzevi;
    }

    public final String getPrice() {
        return this.zzeva;
    }

    public final Double getStarRating() {
        return this.zzevf;
    }

    public final String getStore() {
        return this.zzeuz;
    }

    public final VideoController getVideoController() {
        return this.zzckl;
    }

    public void handleClick(View view) {
    }

    public boolean hasVideoContent() {
        return this.zzevc;
    }

    public void recordImpression() {
    }

    public void setAdChoicesContent(View view) {
        this.zzevg = view;
    }

    public final void setAdvertiser(String str) {
        this.zzeve = str;
    }

    public final void setBody(String str) {
        this.zzdvw = str;
    }

    public final void setCallToAction(String str) {
        this.zzeux = str;
    }

    public final void setExtras(Bundle bundle) {
        this.extras = bundle;
    }

    public void setHasVideoContent(boolean z) {
        this.zzevc = z;
    }

    public final void setHeadline(String str) {
        this.zzeuu = str;
    }

    public final void setIcon(NativeAd.Image image) {
        this.zzeuw = image;
    }

    public final void setImages(List<NativeAd.Image> list) {
        this.zzeuv = list;
    }

    public void setMediaContentAspectRatio(float f) {
        this.zzevk = f;
    }

    public void setMediaView(View view) {
        this.zzevb = view;
    }

    public final void setOverrideClickHandling(boolean z) {
        this.zzevj = z;
    }

    public final void setOverrideImpressionRecording(boolean z) {
        this.zzevi = z;
    }

    public final void setPrice(String str) {
        this.zzeva = str;
    }

    public final void setStarRating(Double d) {
        this.zzevf = d;
    }

    public final void setStore(String str) {
        this.zzeuz = str;
    }

    public void trackViews(View view, Map<String, View> map, Map<String, View> map2) {
    }

    public void untrackView(View view) {
    }

    public final void zza(VideoController videoController) {
        this.zzckl = videoController;
    }

    public final View zzaet() {
        return this.zzevb;
    }

    public final Object zzjw() {
        return this.zzevh;
    }

    public final void zzm(Object obj) {
        this.zzevh = obj;
    }
}
