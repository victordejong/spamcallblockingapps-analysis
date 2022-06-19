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
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfi.class */
public final class zzcfi extends RewardedAd {
    private final String zza;
    private final zzcez zzb;
    private final Context zzc;
    private final zzcfr zzd = new zzcfr();
    private OnAdMetadataChangedListener zze;
    private OnPaidEventListener zzf;
    private FullScreenContentCallback zzg;

    public zzcfi(Context context, String str) {
        this.zzc = context.getApplicationContext();
        this.zza = str;
        this.zzb = zzbgo.zza().zzp(context, str, new zzbxe());
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final Bundle getAdMetadata() {
        try {
            zzcez zzcezVar = this.zzb;
            if (zzcezVar != null) {
                return zzcezVar.zzb();
            }
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final String getAdUnitId() {
        return this.zza;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.zzg;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final OnAdMetadataChangedListener getOnAdMetadataChangedListener() {
        return this.zze;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.zzf;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final ResponseInfo getResponseInfo() {
        zzbiw zzbiwVar;
        try {
            zzcez zzcezVar = this.zzb;
            zzbiwVar = null;
            if (zzcezVar != null) {
                zzbiwVar = zzcezVar.zzc();
            }
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
            zzbiwVar = null;
        }
        return ResponseInfo.zzb(zzbiwVar);
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final RewardItem getRewardItem() {
        try {
            zzcez zzcezVar = this.zzb;
            zzcew zzd = zzcezVar != null ? zzcezVar.zzd() : null;
            return zzd == null ? RewardItem.DEFAULT_REWARD : new zzcfj(zzd);
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
            return RewardItem.DEFAULT_REWARD;
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        this.zzg = fullScreenContentCallback;
        this.zzd.zzb(fullScreenContentCallback);
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setImmersiveMode(boolean z) {
        try {
            zzcez zzcezVar = this.zzb;
            if (zzcezVar == null) {
                return;
            }
            zzcezVar.zzh(z);
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setOnAdMetadataChangedListener(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        try {
            this.zze = onAdMetadataChangedListener;
            zzcez zzcezVar = this.zzb;
            if (zzcezVar == null) {
                return;
            }
            zzcezVar.zzi(new zzbki(onAdMetadataChangedListener));
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.zzf = onPaidEventListener;
            zzcez zzcezVar = this.zzb;
            if (zzcezVar == null) {
                return;
            }
            zzcezVar.zzj(new zzbkj(onPaidEventListener));
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        if (serverSideVerificationOptions != null) {
            try {
                zzcez zzcezVar = this.zzb;
                if (zzcezVar == null) {
                    return;
                }
                zzcezVar.zzl(new zzcfn(serverSideVerificationOptions));
            } catch (RemoteException e) {
                zzciz.zzl("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void show(Activity activity, OnUserEarnedRewardListener onUserEarnedRewardListener) {
        this.zzd.zzc(onUserEarnedRewardListener);
        if (activity == null) {
            zzciz.zzj("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            zzcez zzcezVar = this.zzb;
            if (zzcezVar == null) {
                return;
            }
            zzcezVar.zzk(this.zzd);
            this.zzb.zzm(ObjectWrapper.wrap(activity));
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zza(zzbjg zzbjgVar, RewardedAdLoadCallback rewardedAdLoadCallback) {
        try {
            zzcez zzcezVar = this.zzb;
            if (zzcezVar == null) {
                return;
            }
            zzcezVar.zzf(zzbfh.zza.zza(this.zzc, zzbjgVar), new zzcfm(rewardedAdLoadCallback, this));
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }
}
