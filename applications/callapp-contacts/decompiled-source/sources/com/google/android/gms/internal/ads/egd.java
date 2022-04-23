package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/egd.class */
public final class egd extends dvb implements egb {
    /* JADX INFO: Access modifiers changed from: package-private */
    public egd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // com.google.android.gms.internal.ads.egb
    public final ekw a() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        ekw zzc = ekv.zzc(zza.readStrongBinder());
        zza.recycle();
        return zzc;
    }

    @Override // com.google.android.gms.internal.ads.egb
    public final void a(b bVar, egi egiVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, egiVar);
        zzb(4, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.egb
    public final void a(egh eghVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, eghVar);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.egb
    public final void a(emd emdVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, emdVar);
        zzb(7, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.egb
    public final void a(boolean z) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, z);
        zzb(6, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.egb
    public final emj b() throws RemoteException {
        Parcel zza = zza(5, zzdp());
        emj a2 = emi.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }
}
