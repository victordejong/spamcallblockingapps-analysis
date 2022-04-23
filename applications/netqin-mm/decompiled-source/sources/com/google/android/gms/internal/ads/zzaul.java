package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardItem;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaul.class */
public final class zzaul implements RewardItem {

    /* renamed from: a */
    public final zzatw f24523a;

    public zzaul(zzatw zzatwVar) {
        this.f24523a = zzatwVar;
    }

    @Override // com.google.android.gms.ads.reward.RewardItem
    public final String getType() {
        zzatw zzatwVar = this.f24523a;
        if (zzatwVar == null) {
            return null;
        }
        try {
            return zzatwVar.getType();
        } catch (RemoteException e) {
            zzbbq.m15853c("Could not forward getType to RewardItem", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardItem
    /* renamed from: y */
    public final int mo16337y() {
        zzatw zzatwVar = this.f24523a;
        if (zzatwVar == null) {
            return 0;
        }
        try {
            return zzatwVar.mo16345y();
        } catch (RemoteException e) {
            zzbbq.m15853c("Could not forward getAmount to RewardItem", e);
            return 0;
        }
    }
}
