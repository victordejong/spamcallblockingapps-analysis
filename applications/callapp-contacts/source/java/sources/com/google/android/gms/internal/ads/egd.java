package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/egd.class */
public final class egd extends dvb implements egb {
    public egd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // com.google.android.gms.internal.ads.egb
    /* renamed from: a */
    public final ekw mo15080a() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        ekw zzc = ekv.zzc(zza.readStrongBinder());
        zza.recycle();
        return zzc;
    }

    @Override // com.google.android.gms.internal.ads.egb
    /* renamed from: a */
    public final void mo15079a(AbstractC12126b abstractC12126b, egi egiVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, egiVar);
        zzb(4, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.egb
    /* renamed from: a */
    public final void mo15078a(egh eghVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, eghVar);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.egb
    /* renamed from: a */
    public final void mo15077a(emd emdVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, emdVar);
        zzb(7, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.egb
    /* renamed from: a */
    public final void mo15076a(boolean z) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15673a(zzdp, z);
        zzb(6, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.egb
    /* renamed from: b */
    public final emj mo15075b() throws RemoteException {
        Parcel zza = zza(5, zzdp());
        emj m14784a = emi.m14784a(zza.readStrongBinder());
        zza.recycle();
        return m14784a;
    }
}
