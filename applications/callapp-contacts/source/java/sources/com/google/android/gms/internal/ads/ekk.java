package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ekk.class */
public final class ekk extends dvb implements eki {
    public ekk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override // com.google.android.gms.internal.ads.eki
    /* renamed from: a */
    public final void mo14824a() throws RemoteException {
        zzb(1, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.eki
    /* renamed from: a */
    public final void mo14823a(int i) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeInt(i);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eki
    /* renamed from: a */
    public final void mo14822a(zzvh zzvhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzvhVar);
        zzb(8, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eki
    /* renamed from: b */
    public final void mo14821b() throws RemoteException {
        zzb(3, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.eki
    /* renamed from: c */
    public final void mo14820c() throws RemoteException {
        zzb(4, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.eki
    /* renamed from: d */
    public final void mo14819d() throws RemoteException {
        zzb(5, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.eki
    /* renamed from: e */
    public final void mo14818e() throws RemoteException {
        zzb(6, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.eki
    /* renamed from: f */
    public final void mo14817f() throws RemoteException {
        zzb(7, zzdp());
    }
}
