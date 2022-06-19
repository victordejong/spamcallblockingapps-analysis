package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcex.class */
public final class zzcex extends zzaoj implements zzcez {
    public zzcex(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final Bundle zzb() throws RemoteException {
        Parcel zzbs = zzbs(9, zza());
        Bundle bundle = (Bundle) zzaol.zza(zzbs, Bundle.CREATOR);
        zzbs.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final zzbiw zzc() throws RemoteException {
        Parcel zzbs = zzbs(12, zza());
        zzbiw zzb = zzbiv.zzb(zzbs.readStrongBinder());
        zzbs.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final zzcew zzd() throws RemoteException {
        zzceu zzceuVar;
        Parcel zzbs = zzbs(11, zza());
        IBinder readStrongBinder = zzbs.readStrongBinder();
        if (readStrongBinder == null) {
            zzceuVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
            zzceuVar = queryLocalInterface instanceof zzcew ? (zzcew) queryLocalInterface : new zzceu(readStrongBinder);
        }
        zzbs.recycle();
        return zzceuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final String zze() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzf(zzbfd zzbfdVar, zzcfg zzcfgVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbfdVar);
        zzaol.zzf(zza, zzcfgVar);
        zzbt(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzg(zzbfd zzbfdVar, zzcfg zzcfgVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbfdVar);
        zzaol.zzf(zza, zzcfgVar);
        zzbt(14, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzh(boolean z) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzc(zza, z);
        zzbt(15, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzi(zzbiq zzbiqVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbiqVar);
        zzbt(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzj(zzbit zzbitVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbitVar);
        zzbt(13, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzk(zzcfc zzcfcVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzcfcVar);
        zzbt(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzl(zzcfn zzcfnVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzcfnVar);
        zzbt(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzm(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzn(IObjectWrapper iObjectWrapper, boolean z) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final boolean zzo() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzp(zzcfh zzcfhVar) throws RemoteException {
        throw null;
    }
}
