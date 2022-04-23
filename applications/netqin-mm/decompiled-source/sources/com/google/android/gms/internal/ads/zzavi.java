package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavi.class */
public final class zzavi extends zzgu implements zzavg {
    public zzavi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    /* renamed from: c */
    public final void mo16285c(zzva zzvaVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzvaVar);
        m12084b(3, W);
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    /* renamed from: l */
    public final void mo16284l(int i) throws RemoteException {
        Parcel W = m12086W();
        W.writeInt(i);
        m12084b(2, W);
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final void onRewardedAdLoaded() throws RemoteException {
        m12084b(1, m12086W());
    }
}
