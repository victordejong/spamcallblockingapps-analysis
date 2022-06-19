package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.RewardItem;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfq.class */
public final class zzcfq extends zzcev {
    private final String zza;
    private final int zzb;

    public zzcfq(RewardItem rewardItem) {
        this(rewardItem != null ? rewardItem.getType() : "", rewardItem != null ? rewardItem.getAmount() : 1);
    }

    public zzcfq(String str, int i) {
        this.zza = str;
        this.zzb = i;
    }

    @Override // com.google.android.gms.internal.ads.zzcew
    public final int zze() throws RemoteException {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzcew
    public final String zzf() throws RemoteException {
        return this.zza;
    }
}
