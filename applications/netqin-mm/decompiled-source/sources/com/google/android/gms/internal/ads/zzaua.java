package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaua.class */
public final class zzaua extends zzgu implements zzaub {
    public zzaua(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
    }

    @Override // com.google.android.gms.internal.ads.zzaub
    /* renamed from: a */
    public final void mo16342a(zzatw zzatwVar, String str, String str2) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzatwVar);
        W.writeString(str);
        W.writeString(str2);
        m12084b(2, W);
    }
}
