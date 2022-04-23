package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardItem;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ua.class */
public final class ua implements RewardItem {

    /* renamed from: a  reason: collision with root package name */
    private final tp f28412a;

    public ua(tp tpVar) {
        this.f28412a = tpVar;
    }

    @Override // com.google.android.gms.ads.reward.RewardItem
    public final int getAmount() {
        tp tpVar = this.f28412a;
        if (tpVar == null) {
            return 0;
        }
        try {
            return tpVar.b();
        } catch (RemoteException e) {
            za.zzd("Could not forward getAmount to RewardItem", e);
            return 0;
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardItem
    public final String getType() {
        tp tpVar = this.f28412a;
        if (tpVar == null) {
            return null;
        }
        try {
            return tpVar.a();
        } catch (RemoteException e) {
            za.zzd("Could not forward getType to RewardItem", e);
            return null;
        }
    }
}
