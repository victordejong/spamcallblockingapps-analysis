package com.google.android.gms.ads;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7477z2;
import p081h.p203i.p204a.p224e.p259j.p260a.C7170a6;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/InterstitialAd.class */
public final class InterstitialAd {
    public final C7170a6 zzvg;

    public InterstitialAd(Context context) {
        this.zzvg = new C7170a6(context);
        C7021t.m21289a(context, "Context cannot be null");
    }

    public final AdListener getAdListener() {
        return this.zzvg.m21013a();
    }

    public final Bundle getAdMetadata() {
        return this.zzvg.m21002b();
    }

    public final String getAdUnitId() {
        return this.zzvg.m20999c();
    }

    public final String getMediationAdapterClassName() {
        return this.zzvg.m20997e();
    }

    public final boolean isLoaded() {
        return this.zzvg.m20995g();
    }

    public final boolean isLoading() {
        return this.zzvg.m20994h();
    }

    @RequiresPermission("android.permission.INTERNET")
    public final void loadAd(AdRequest adRequest) {
        this.zzvg.m21006a(adRequest.zzay());
    }

    public final void setAdListener(AdListener adListener) {
        this.zzvg.m21012a(adListener);
        if (adListener != null && (adListener instanceof AbstractC7477z2)) {
            this.zzvg.m21005a((AbstractC7477z2) adListener);
        } else if (adListener == null) {
            this.zzvg.m21005a((AbstractC7477z2) null);
        }
    }

    public final void setAdMetadataListener(AdMetadataListener adMetadataListener) {
        this.zzvg.m21008a(adMetadataListener);
    }

    public final void setAdUnitId(String str) {
        this.zzvg.m21004a(str);
    }

    public final void setImmersiveMode(boolean z) {
        this.zzvg.m21003a(z);
    }

    public final void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        this.zzvg.m21007a(rewardedVideoAdListener);
    }

    public final void show() {
        this.zzvg.m20993i();
    }

    public final void zza(boolean z) {
        this.zzvg.m21000b(true);
    }
}
