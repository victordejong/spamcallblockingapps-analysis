package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.RewardItem;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcdj.class */
public final class zzcdj extends zzcco {
    private final String zza;
    private final int zzb;

    public zzcdj(RewardItem rewardItem) {
        this(rewardItem != null ? rewardItem.getType() : "", rewardItem != null ? rewardItem.getAmount() : 1);
    }

    public zzcdj(String str, int i) {
        this.zza = str;
        this.zzb = i;
    }

    @Override // com.google.android.gms.internal.ads.zzccp
    public final String zze() throws RemoteException {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzccp
    public final int zzf() throws RemoteException {
        return this.zzb;
    }
}
