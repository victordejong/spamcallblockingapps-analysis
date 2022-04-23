package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzapd.class */
public final class zzapd extends zzgu implements zzapb {
    public zzapd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzapb
    /* renamed from: a */
    public final void mo16492a(zzanu zzanuVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzanuVar);
        m12084b(1, W);
    }

    @Override // com.google.android.gms.internal.ads.zzapb
    /* renamed from: a */
    public final void mo16491a(zzva zzvaVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzvaVar);
        m12084b(3, W);
    }

    @Override // com.google.android.gms.internal.ads.zzapb
    /* renamed from: b */
    public final void mo16490b(String str) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        m12084b(2, W);
    }
}
