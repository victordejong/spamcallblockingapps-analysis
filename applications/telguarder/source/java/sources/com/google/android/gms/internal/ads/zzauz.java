package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardItem;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzauz.class */
public final class zzauz implements RewardItem {
    private final zzauk zzdze;

    public zzauz(zzauk zzaukVar) {
        this.zzdze = zzaukVar;
    }

    @Override // com.google.android.gms.ads.reward.RewardItem
    public final int getAmount() {
        zzauk zzaukVar = this.zzdze;
        if (zzaukVar == null) {
            return 0;
        }
        try {
            return zzaukVar.getAmount();
        } catch (RemoteException e) {
            zzazk.zzd("Could not forward getAmount to RewardItem", e);
            return 0;
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardItem
    public final String getType() {
        zzauk zzaukVar = this.zzdze;
        if (zzaukVar == null) {
            return null;
        }
        try {
            return zzaukVar.getType();
        } catch (RemoteException e) {
            zzazk.zzd("Could not forward getType to RewardItem", e);
            return null;
        }
    }
}
