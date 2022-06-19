package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzawl.class */
public final class zzawl extends zzavq {
    private FullScreenContentCallback zzbuw;
    private OnUserEarnedRewardListener zzdzu;

    @Override // com.google.android.gms.internal.ads.zzavr
    public final void onRewardedAdClosed() {
        FullScreenContentCallback fullScreenContentCallback = this.zzbuw;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdDismissedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavr
    public final void onRewardedAdFailedToShow(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzavr
    public final void onRewardedAdOpened() {
        FullScreenContentCallback fullScreenContentCallback = this.zzbuw;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdShowedFullScreenContent();
        }
    }

    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        this.zzbuw = fullScreenContentCallback;
    }

    public final void zza(OnUserEarnedRewardListener onUserEarnedRewardListener) {
        this.zzdzu = onUserEarnedRewardListener;
    }

    @Override // com.google.android.gms.internal.ads.zzavr
    public final void zza(zzavl zzavlVar) {
        OnUserEarnedRewardListener onUserEarnedRewardListener = this.zzdzu;
        if (onUserEarnedRewardListener != null) {
            onUserEarnedRewardListener.onUserEarnedReward(new zzawa(zzavlVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavr
    public final void zzi(zzvg zzvgVar) {
        FullScreenContentCallback fullScreenContentCallback = this.zzbuw;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdFailedToShowFullScreenContent(zzvgVar.zzqb());
        }
    }
}
