package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzccq.class */
public final class zzccq extends zzadj implements zzccs {
    public zzccq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzb(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzc(zzbdg zzbdgVar, zzccz zzcczVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzbdgVar);
        zzadl.zzf(zza, zzcczVar);
        zzbj(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzd(zzbdg zzbdgVar, zzccz zzcczVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzbdgVar);
        zzadl.zzf(zza, zzcczVar);
        zzbj(14, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zze(zzccv zzccvVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzccvVar);
        zzbj(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzf(zzbgt zzbgtVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbgtVar);
        zzbj(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final Bundle zzg() throws RemoteException {
        Parcel zzbi = zzbi(9, zza());
        Bundle bundle = (Bundle) zzadl.zzc(zzbi, Bundle.CREATOR);
        zzbi.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzh(zzcdg zzcdgVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzcdgVar);
        zzbj(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final boolean zzi() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final String zzj() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzk(IObjectWrapper iObjectWrapper, boolean z) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final zzccp zzl() throws RemoteException {
        zzccn zzccnVar;
        Parcel zzbi = zzbi(11, zza());
        IBinder readStrongBinder = zzbi.readStrongBinder();
        if (readStrongBinder == null) {
            zzccnVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
            zzccnVar = queryLocalInterface instanceof zzccp ? (zzccp) queryLocalInterface : new zzccn(readStrongBinder);
        }
        zzbi.recycle();
        return zzccnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final zzbgz zzm() throws RemoteException {
        Parcel zzbi = zzbi(12, zza());
        zzbgz zzb = zzbgy.zzb(zzbi.readStrongBinder());
        zzbi.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzn(zzbgw zzbgwVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbgwVar);
        zzbj(13, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzo(boolean z) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzb(zza, z);
        zzbj(15, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzp(zzcda zzcdaVar) throws RemoteException {
        throw null;
    }
}
