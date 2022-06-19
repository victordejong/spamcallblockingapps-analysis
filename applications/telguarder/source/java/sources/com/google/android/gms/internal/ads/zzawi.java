package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.RewardItem;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzawi.class */
public final class zzawi extends zzavk {
    private final String type;
    private final int zzdzc;

    public zzawi(RewardItem rewardItem) {
        this(rewardItem != null ? rewardItem.getType() : "", rewardItem != null ? rewardItem.getAmount() : 1);
    }

    public zzawi(zzavj zzavjVar) {
        this(zzavjVar != null ? zzavjVar.type : "", zzavjVar != null ? zzavjVar.zzdzc : 1);
    }

    public zzawi(String str, int i) {
        this.type = str;
        this.zzdzc = i;
    }

    @Override // com.google.android.gms.internal.ads.zzavl
    public final int getAmount() throws RemoteException {
        return this.zzdzc;
    }

    @Override // com.google.android.gms.internal.ads.zzavl
    public final String getType() throws RemoteException {
        return this.type;
    }
}
