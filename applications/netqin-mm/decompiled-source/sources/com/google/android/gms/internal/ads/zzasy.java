package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasy.class */
public final class zzasy extends zzgu implements zzasw {
    public zzasy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    /* renamed from: a */
    public final void mo13941a(ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, parcelFileDescriptor);
        m12084b(1, W);
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    /* renamed from: a */
    public final void mo13940a(zzazy zzazyVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzazyVar);
        m12084b(2, W);
    }
}
