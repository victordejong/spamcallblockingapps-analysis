package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/UnifiedNativeAdMapper.class */
public abstract class UnifiedNativeAdMapper {
    private String zza;
    private List<NativeAd.Image> zzb;
    private String zzc;
    private NativeAd.Image zzd;
    private String zze;
    private String zzf;
    private Double zzg;
    private String zzh;
    private String zzi;
    private VideoController zzj;
    private boolean zzk;
    private View zzl;
    private View zzm;
    private Object zzn;
    private Bundle zzo = new Bundle();
    private boolean zzp;
    private boolean zzq;
    private float zzr;

    @RecentlyNonNull
    public View getAdChoicesContent() {
        return this.zzl;
    }

    @RecentlyNonNull
    public final String getAdvertiser() {
        return this.zzf;
    }

    @RecentlyNonNull
    public final String getBody() {
        return this.zzc;
    }

    @RecentlyNonNull
    public final String getCallToAction() {
        return this.zze;
    }

    public float getCurrentTime() {
        return 0.0f;
    }

    public float getDuration() {
        return 0.0f;
    }

    @RecentlyNonNull
    public final Bundle getExtras() {
        return this.zzo;
    }

    @RecentlyNonNull
    public final String getHeadline() {
        return this.zza;
    }

    @RecentlyNonNull
    public final NativeAd.Image getIcon() {
        return this.zzd;
    }

    @RecentlyNonNull
    public final List<NativeAd.Image> getImages() {
        return this.zzb;
    }

    public float getMediaContentAspectRatio() {
        return this.zzr;
    }

    public final boolean getOverrideClickHandling() {
        return this.zzq;
    }

    public final boolean getOverrideImpressionRecording() {
        return this.zzp;
    }

    @RecentlyNonNull
    public final String getPrice() {
        return this.zzi;
    }

    @RecentlyNonNull
    public final Double getStarRating() {
        return this.zzg;
    }

    @RecentlyNonNull
    public final String getStore() {
        return this.zzh;
    }

    public void handleClick(@RecentlyNonNull View view) {
    }

    public boolean hasVideoContent() {
        return this.zzk;
    }

    public void recordImpression() {
    }

    public void setAdChoicesContent(@RecentlyNonNull View view) {
        this.zzl = view;
    }

    public final void setAdvertiser(@RecentlyNonNull String str) {
        this.zzf = str;
    }

    public final void setBody(@RecentlyNonNull String str) {
        this.zzc = str;
    }

    public final void setCallToAction(@RecentlyNonNull String str) {
        this.zze = str;
    }

    public final void setExtras(@RecentlyNonNull Bundle bundle) {
        this.zzo = bundle;
    }

    public void setHasVideoContent(boolean z) {
        this.zzk = z;
    }

    public final void setHeadline(@RecentlyNonNull String str) {
        this.zza = str;
    }

    public final void setIcon(@RecentlyNonNull NativeAd.Image image) {
        this.zzd = image;
    }

    public final void setImages(@RecentlyNonNull List<NativeAd.Image> list) {
        this.zzb = list;
    }

    public void setMediaContentAspectRatio(float f) {
        this.zzr = f;
    }

    public void setMediaView(@RecentlyNonNull View view) {
        this.zzm = view;
    }

    public final void setOverrideClickHandling(boolean z) {
        this.zzq = z;
    }

    public final void setOverrideImpressionRecording(boolean z) {
        this.zzp = z;
    }

    public final void setPrice(@RecentlyNonNull String str) {
        this.zzi = str;
    }

    public final void setStarRating(@RecentlyNonNull Double d) {
        this.zzg = d;
    }

    public final void setStore(@RecentlyNonNull String str) {
        this.zzh = str;
    }

    public void trackViews(@RecentlyNonNull View view, @RecentlyNonNull Map<String, View> map, @RecentlyNonNull Map<String, View> map2) {
    }

    public void untrackView(@RecentlyNonNull View view) {
    }

    public final void zza(@RecentlyNonNull VideoController videoController) {
        this.zzj = videoController;
    }

    public final void zzb(@RecentlyNonNull Object obj) {
        this.zzn = obj;
    }

    @RecentlyNonNull
    public final VideoController zzc() {
        return this.zzj;
    }

    @RecentlyNonNull
    public final View zzd() {
        return this.zzm;
    }

    @RecentlyNonNull
    public final Object zze() {
        return this.zzn;
    }
}
