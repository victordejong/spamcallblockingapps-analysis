package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.oz */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/oz.class */
public final class C12814oz extends dvb implements AbstractC12812ox {
    public C12814oz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12812ox
    /* renamed from: a */
    public final void mo14289a(zzvh zzvhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzvhVar);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12812ox
    /* renamed from: a */
    public final void mo14288a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12812ox
    /* renamed from: b */
    public final void mo14287b(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(2, zzdp);
    }
}
