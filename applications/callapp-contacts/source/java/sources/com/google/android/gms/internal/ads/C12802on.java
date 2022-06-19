package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.on */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/on.class */
public final class C12802on extends dvb implements AbstractC12800ol {
    public C12802on(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12800ol
    /* renamed from: a */
    public final void mo14297a(AbstractC12769nh abstractC12769nh) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12769nh);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12800ol
    /* renamed from: a */
    public final void mo14296a(zzvh zzvhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzvhVar);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12800ol
    /* renamed from: a */
    public final void mo14295a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(2, zzdp);
    }
}
