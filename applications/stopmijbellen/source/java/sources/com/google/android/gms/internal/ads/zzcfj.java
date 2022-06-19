package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.RewardItem;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfj.class */
public final class zzcfj implements RewardItem {
    private final zzcew zza;

    public zzcfj(zzcew zzcewVar) {
        this.zza = zzcewVar;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final int getAmount() {
        zzcew zzcewVar = this.zza;
        if (zzcewVar != null) {
            try {
                return zzcewVar.zze();
            } catch (RemoteException e) {
                zzciz.zzk("Could not forward getAmount to RewardItem", e);
                return 0;
            }
        }
        return 0;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final String getType() {
        zzcew zzcewVar = this.zza;
        if (zzcewVar != null) {
            try {
                return zzcewVar.zzf();
            } catch (RemoteException e) {
                zzciz.zzk("Could not forward getType to RewardItem", e);
                return null;
            }
        }
        return null;
    }
}
