package com.google.android.gms.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.ads.eir;
import com.google.android.gms.internal.ads.eiy;
import com.google.android.gms.internal.ads.emv;
import com.google.android.gms.internal.ads.s;
import com.google.android.gms.internal.ads.uc;
import com.google.android.gms.internal.ads.za;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/InterstitialAd.class */
public final class InterstitialAd {
    private final emv zzadr;

    public InterstitialAd(Context context) {
        this.zzadr = new emv(context);
        o.a(context, "Context cannot be null");
    }

    public final AdListener getAdListener() {
        return this.zzadr.f27964a;
    }

    public final Bundle getAdMetadata() {
        return this.zzadr.c();
    }

    public final String getAdUnitId() {
        return this.zzadr.f27966c;
    }

    @Deprecated
    public final String getMediationAdapterClassName() {
        return this.zzadr.d();
    }

    public final ResponseInfo getResponseInfo() {
        return this.zzadr.e();
    }

    public final boolean isLoaded() {
        return this.zzadr.a();
    }

    public final boolean isLoading() {
        return this.zzadr.b();
    }

    public final void loadAd(AdRequest adRequest) {
        this.zzadr.a(adRequest.zzdt());
    }

    public final void setAdListener(AdListener adListener) {
        this.zzadr.a(adListener);
        if (adListener != null && (adListener instanceof eir)) {
            this.zzadr.a((eir) adListener);
        } else if (adListener == null) {
            this.zzadr.a((eir) null);
        }
    }

    public final void setAdMetadataListener(AdMetadataListener adMetadataListener) {
        emv emvVar = this.zzadr;
        try {
            emvVar.f27967d = adMetadataListener;
            if (emvVar.f27965b != null) {
                emvVar.f27965b.zza(adMetadataListener != null ? new eiy(adMetadataListener) : null);
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setAdUnitId(String str) {
        this.zzadr.a(str);
    }

    public final void setImmersiveMode(boolean z) {
        this.zzadr.a(z);
    }

    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        emv emvVar = this.zzadr;
        try {
            emvVar.i = onPaidEventListener;
            if (emvVar.f27965b != null) {
                emvVar.f27965b.zza(new s(onPaidEventListener));
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        emv emvVar = this.zzadr;
        try {
            emvVar.g = rewardedVideoAdListener;
            if (emvVar.f27965b != null) {
                emvVar.f27965b.zza(rewardedVideoAdListener != null ? new uc(rewardedVideoAdListener) : null);
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    public final void show() {
        this.zzadr.f();
    }

    public final void zze(boolean z) {
        this.zzadr.h = true;
    }
}
