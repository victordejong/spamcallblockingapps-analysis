package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.tt */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/tt.class */
public final class C12943tt extends dvb implements AbstractC12940tq {
    public C12943tt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12940tq
    /* renamed from: a */
    public final void mo14152a(AbstractC12939tp abstractC12939tp, String str, String str2) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12939tp);
        zzdp.writeString(str);
        zzdp.writeString(str2);
        zzb(2, zzdp);
    }
}
