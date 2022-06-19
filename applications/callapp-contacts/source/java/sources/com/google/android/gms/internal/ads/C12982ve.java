package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.RewardItem;
/* renamed from: com.google.android.gms.internal.ads.ve */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ve.class */
public final class C12982ve implements RewardItem {

    /* renamed from: a */
    private final AbstractC12962ul f49903a;

    public C12982ve(AbstractC12962ul abstractC12962ul) {
        this.f49903a = abstractC12962ul;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final int getAmount() {
        AbstractC12962ul abstractC12962ul = this.f49903a;
        if (abstractC12962ul == null) {
            return 0;
        }
        try {
            return abstractC12962ul.mo14075b();
        } catch (RemoteException e) {
            C13088za.zzd("Could not forward getAmount to RewardItem", e);
            return 0;
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final String getType() {
        AbstractC12962ul abstractC12962ul = this.f49903a;
        if (abstractC12962ul == null) {
            return null;
        }
        try {
            return abstractC12962ul.mo14076a();
        } catch (RemoteException e) {
            C13088za.zzd("Could not forward getType to RewardItem", e);
            return null;
        }
    }
}
