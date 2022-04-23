package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzafv.class */
public final class zzafv extends zzgu implements zzaft {
    public zzafv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzaft
    /* renamed from: a */
    public final void mo16767a(zzage zzageVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzageVar);
        m12084b(1, W);
    }
}
