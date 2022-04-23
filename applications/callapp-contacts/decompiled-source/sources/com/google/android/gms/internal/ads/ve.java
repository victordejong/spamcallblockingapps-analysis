package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.RewardItem;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ve.class */
public final class ve implements RewardItem {

    /* renamed from: a  reason: collision with root package name */
    private final ul f28425a;

    public ve(ul ulVar) {
        this.f28425a = ulVar;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final int getAmount() {
        ul ulVar = this.f28425a;
        if (ulVar == null) {
            return 0;
        }
        try {
            return ulVar.b();
        } catch (RemoteException e) {
            za.zzd("Could not forward getAmount to RewardItem", e);
            return 0;
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final String getType() {
        ul ulVar = this.f28425a;
        if (ulVar == null) {
            return null;
        }
        try {
            return ulVar.a();
        } catch (RemoteException e) {
            za.zzd("Could not forward getType to RewardItem", e);
            return null;
        }
    }
}
