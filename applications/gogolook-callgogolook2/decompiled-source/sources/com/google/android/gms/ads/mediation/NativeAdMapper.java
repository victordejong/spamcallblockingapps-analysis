package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.VideoController;
import java.util.Map;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7354p0;
@AbstractC7354p0
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/NativeAdMapper.class */
public class NativeAdMapper {
    public View mAdChoicesContent;
    public Bundle mExtras = new Bundle();
    public boolean mOverrideClickHandling;
    public boolean mOverrideImpressionRecording;
    public VideoController zzawr;
    public View zzdji;
    public boolean zzdjj;

    public View getAdChoicesContent() {
        return this.mAdChoicesContent;
    }

    public final Bundle getExtras() {
        return this.mExtras;
    }

    public final boolean getOverrideClickHandling() {
        return this.mOverrideClickHandling;
    }

    public final boolean getOverrideImpressionRecording() {
        return this.mOverrideImpressionRecording;
    }

    public final VideoController getVideoController() {
        return this.zzawr;
    }

    public void handleClick(View view) {
    }

    public boolean hasVideoContent() {
        return this.zzdjj;
    }

    public void recordImpression() {
    }

    public void setAdChoicesContent(View view) {
        this.mAdChoicesContent = view;
    }

    public final void setExtras(Bundle bundle) {
        this.mExtras = bundle;
    }

    public void setHasVideoContent(boolean z) {
        this.zzdjj = z;
    }

    public void setMediaView(View view) {
        this.zzdji = view;
    }

    public final void setOverrideClickHandling(boolean z) {
        this.mOverrideClickHandling = z;
    }

    public final void setOverrideImpressionRecording(boolean z) {
        this.mOverrideImpressionRecording = z;
    }

    @Deprecated
    public void trackView(View view) {
    }

    public void trackViews(View view, Map<String, View> map, Map<String, View> map2) {
    }

    public void untrackView(View view) {
    }

    public final void zza(VideoController videoController) {
        this.zzawr = videoController;
    }

    public final View zzxr() {
        return this.zzdji;
    }
}
