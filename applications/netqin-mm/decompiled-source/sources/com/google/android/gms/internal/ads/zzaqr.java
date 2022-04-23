package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqr.class */
public final class zzaqr extends zzgu implements zzaqp {
    public zzaqr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtils");
    }

    @Override // com.google.android.gms.internal.ads.zzaqp
    /* renamed from: b */
    public final void mo13869b(Intent intent) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, intent);
        m12084b(1, W);
    }
}
