package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzapo.class */
public final class zzapo extends zzgu implements zzapm {
    public zzapo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzapm
    /* renamed from: a */
    public final void mo13750a(String str) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        m12084b(2, W);
    }

    @Override // com.google.android.gms.internal.ads.zzapm
    /* renamed from: i */
    public final void mo13749i(zzva zzvaVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzvaVar);
        m12084b(3, W);
    }

    @Override // com.google.android.gms.internal.ads.zzapm
    /* renamed from: x */
    public final void mo13748x(String str) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        m12084b(1, W);
    }
}
