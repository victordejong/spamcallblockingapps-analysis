package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyk.class */
public final class zzyk extends zzgu implements zzyi {
    public zzyk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IOnPaidEventListener");
    }

    @Override // com.google.android.gms.internal.ads.zzyi
    /* renamed from: a */
    public final void mo11118a(zzvp zzvpVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzvpVar);
        m12084b(1, W);
    }
}
