package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.RewardItem;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzawa.class */
public final class zzawa implements RewardItem {
    private final zzavl zzdzk;

    public zzawa(zzavl zzavlVar) {
        this.zzdzk = zzavlVar;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final int getAmount() {
        zzavl zzavlVar = this.zzdzk;
        if (zzavlVar == null) {
            return 0;
        }
        try {
            return zzavlVar.getAmount();
        } catch (RemoteException e) {
            zzazk.zzd("Could not forward getAmount to RewardItem", e);
            return 0;
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final String getType() {
        zzavl zzavlVar = this.zzdzk;
        if (zzavlVar == null) {
            return null;
        }
        try {
            return zzavlVar.getType();
        } catch (RemoteException e) {
            zzazk.zzd("Could not forward getType to RewardItem", e);
            return null;
        }
    }
}
