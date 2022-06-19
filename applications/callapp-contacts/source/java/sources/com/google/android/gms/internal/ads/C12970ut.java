package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.ut */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ut.class */
public final class C12970ut extends dvb implements AbstractC12968ur {
    public C12970ut(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12968ur
    /* renamed from: a */
    public final void mo14082a() throws RemoteException {
        zzb(1, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12968ur
    /* renamed from: a */
    public final void mo14081a(int i) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeInt(i);
        zzb(4, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12968ur
    /* renamed from: a */
    public final void mo14080a(AbstractC12962ul abstractC12962ul) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12962ul);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12968ur
    /* renamed from: a */
    public final void mo14079a(zzvh zzvhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzvhVar);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12968ur
    /* renamed from: b */
    public final void mo14078b() throws RemoteException {
        zzb(2, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12968ur
    /* renamed from: c */
    public final void mo14077c() throws RemoteException {
        zzb(6, zzdp());
    }
}
