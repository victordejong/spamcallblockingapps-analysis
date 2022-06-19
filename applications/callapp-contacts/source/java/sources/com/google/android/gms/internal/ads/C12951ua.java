package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardItem;
/* renamed from: com.google.android.gms.internal.ads.ua */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ua.class */
public final class C12951ua implements RewardItem {

    /* renamed from: a */
    private final AbstractC12939tp f49884a;

    public C12951ua(AbstractC12939tp abstractC12939tp) {
        this.f49884a = abstractC12939tp;
    }

    @Override // com.google.android.gms.ads.reward.RewardItem
    public final int getAmount() {
        AbstractC12939tp abstractC12939tp = this.f49884a;
        if (abstractC12939tp == null) {
            return 0;
        }
        try {
            return abstractC12939tp.mo14153b();
        } catch (RemoteException e) {
            C13088za.zzd("Could not forward getAmount to RewardItem", e);
            return 0;
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardItem
    public final String getType() {
        AbstractC12939tp abstractC12939tp = this.f49884a;
        if (abstractC12939tp == null) {
            return null;
        }
        try {
            return abstractC12939tp.mo14154a();
        } catch (RemoteException e) {
            C13088za.zzd("Could not forward getType to RewardItem", e);
            return null;
        }
    }
}
