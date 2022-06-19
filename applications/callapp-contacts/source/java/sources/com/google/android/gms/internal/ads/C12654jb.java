package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.jb */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/jb.class */
public final class C12654jb extends dvb implements AbstractC12651iz {
    public C12654jb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12651iz
    /* renamed from: a */
    public final void mo14590a(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(6, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12651iz
    /* renamed from: a */
    public final void mo14589a(AbstractC12126b abstractC12126b, AbstractC12657je abstractC12657je) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12657je);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12651iz
    /* renamed from: b */
    public final emk mo14588b() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        emk m14780a = emn.m14780a(zza.readStrongBinder());
        zza.recycle();
        return m14780a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12651iz
    /* renamed from: c */
    public final void mo14587c() throws RemoteException {
        zzb(4, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12651iz
    /* renamed from: d */
    public final AbstractC12389dq mo14586d() throws RemoteException {
        Parcel zza = zza(7, zzdp());
        AbstractC12389dq m16205a = AbstractBinderC12388dp.m16205a(zza.readStrongBinder());
        zza.recycle();
        return m16205a;
    }
}
