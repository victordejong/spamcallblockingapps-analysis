package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdCallback;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzawb.class */
public final class zzawb extends RewardedAd {
    private final Context zzaad;
    private final String zzbut;
    private FullScreenContentCallback zzbuw;
    private OnPaidEventListener zzckr;
    private final zzavm zzdzl;
    private final zzawl zzdzm = new zzawl();
    private final zzawd zzdzn = new zzawd();
    private OnAdMetadataChangedListener zzdzo;

    public zzawb(Context context, String str) {
        this.zzaad = context.getApplicationContext();
        this.zzbut = str;
        this.zzdzl = zzwr.zzqo().zzc(context, str, new zzanf());
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final Bundle getAdMetadata() {
        try {
            return this.zzdzl.getAdMetadata();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return new Bundle();
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final String getAdUnitId() {
        return this.zzbut;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.zzbuw;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final String getMediationAdapterClassName() {
        try {
            return this.zzdzl.getMediationAdapterClassName();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return "";
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final OnAdMetadataChangedListener getOnAdMetadataChangedListener() {
        return this.zzdzo;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.zzckr;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final ResponseInfo getResponseInfo() {
        zzyx zzyxVar;
        try {
            zzyxVar = this.zzdzl.zzki();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            zzyxVar = null;
        }
        return ResponseInfo.zza(zzyxVar);
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final RewardItem getRewardItem() {
        try {
            zzavl zzrv = this.zzdzl.zzrv();
            if (zzrv != null) {
                return new zzawa(zzrv);
            }
            return null;
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final boolean isLoaded() {
        try {
            return this.zzdzl.isLoaded();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        this.zzbuw = fullScreenContentCallback;
        this.zzdzm.setFullScreenContentCallback(fullScreenContentCallback);
        this.zzdzn.setFullScreenContentCallback(fullScreenContentCallback);
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setImmersiveMode(boolean z) {
        try {
            this.zzdzl.setImmersiveMode(z);
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setOnAdMetadataChangedListener(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        try {
            this.zzdzo = onAdMetadataChangedListener;
            this.zzdzl.zza(new zzaam(onAdMetadataChangedListener));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.zzckr = onPaidEventListener;
            this.zzdzl.zza(new zzaap(onPaidEventListener));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        try {
            this.zzdzl.zza(new zzawh(serverSideVerificationOptions));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void show(Activity activity, OnUserEarnedRewardListener onUserEarnedRewardListener) {
        this.zzdzm.zza(onUserEarnedRewardListener);
        if (activity == null) {
            zzazk.zzex("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            this.zzdzl.zza(this.zzdzm);
            this.zzdzl.zze(ObjectWrapper.wrap(activity));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void show(Activity activity, RewardedAdCallback rewardedAdCallback) {
        this.zzdzn.zza(rewardedAdCallback);
        try {
            this.zzdzl.zza(this.zzdzn);
            this.zzdzl.zze(ObjectWrapper.wrap(activity));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void show(Activity activity, RewardedAdCallback rewardedAdCallback, boolean z) {
        this.zzdzn.zza(rewardedAdCallback);
        try {
            this.zzdzl.zza(this.zzdzn);
            this.zzdzl.zza(ObjectWrapper.wrap(activity), z);
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void zza(zzzk zzzkVar, RewardedAdLoadCallback rewardedAdLoadCallback) {
        try {
            this.zzdzl.zza(zzvq.zza(this.zzaad, zzzkVar), new zzawe(rewardedAdLoadCallback, this));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }
}
