package com.google.android.gms.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.ads.BinderC12896s;
import com.google.android.gms.internal.ads.BinderC12953uc;
import com.google.android.gms.internal.ads.C13088za;
import com.google.android.gms.internal.ads.eir;
import com.google.android.gms.internal.ads.eiy;
import com.google.android.gms.internal.ads.emv;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/InterstitialAd.class */
public final class InterstitialAd {
    private final emv zzadr;

    public InterstitialAd(Context context) {
        this.zzadr = new emv(context);
        C12045o.m19161a(context, "Context cannot be null");
    }

    public final AdListener getAdListener() {
        return this.zzadr.f49236a;
    }

    public final Bundle getAdMetadata() {
        return this.zzadr.m14733c();
    }

    public final String getAdUnitId() {
        return this.zzadr.f49238c;
    }

    @Deprecated
    public final String getMediationAdapterClassName() {
        return this.zzadr.m14732d();
    }

    public final ResponseInfo getResponseInfo() {
        return this.zzadr.m14731e();
    }

    public final boolean isLoaded() {
        return this.zzadr.m14741a();
    }

    public final boolean isLoading() {
        return this.zzadr.m14735b();
    }

    public final void loadAd(AdRequest adRequest) {
        this.zzadr.m14738a(adRequest.zzdt());
    }

    public final void setAdListener(AdListener adListener) {
        this.zzadr.m14740a(adListener);
        if (adListener != null && (adListener instanceof eir)) {
            this.zzadr.m14739a((eir) adListener);
        } else if (adListener != null) {
        } else {
            this.zzadr.m14739a((eir) null);
        }
    }

    public final void setAdMetadataListener(AdMetadataListener adMetadataListener) {
        emv emvVar = this.zzadr;
        try {
            emvVar.f49239d = adMetadataListener;
            if (emvVar.f49237b == null) {
                return;
            }
            emvVar.f49237b.zza(adMetadataListener != null ? new eiy(adMetadataListener) : null);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setAdUnitId(String str) {
        this.zzadr.m14737a(str);
    }

    public final void setImmersiveMode(boolean z) {
        this.zzadr.m14736a(z);
    }

    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        emv emvVar = this.zzadr;
        try {
            emvVar.f49244i = onPaidEventListener;
            if (emvVar.f49237b == null) {
                return;
            }
            emvVar.f49237b.zza(new BinderC12896s(onPaidEventListener));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        emv emvVar = this.zzadr;
        try {
            emvVar.f49242g = rewardedVideoAdListener;
            if (emvVar.f49237b == null) {
                return;
            }
            emvVar.f49237b.zza(rewardedVideoAdListener != null ? new BinderC12953uc(rewardedVideoAdListener) : null);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    public final void show() {
        this.zzadr.m14730f();
    }

    public final void zze(boolean z) {
        this.zzadr.f49243h = true;
    }
}
