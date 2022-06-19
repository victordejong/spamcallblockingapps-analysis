package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbhe.class */
public final class zzbhe extends zzaoj implements zzbhg {
    public zzbhe(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final zzbhd zze() throws RemoteException {
        zzbhb zzbhbVar;
        Parcel zzbs = zzbs(1, zza());
        IBinder readStrongBinder = zzbs.readStrongBinder();
        if (readStrongBinder == null) {
            zzbhbVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
            zzbhbVar = queryLocalInterface instanceof zzbhd ? (zzbhd) queryLocalInterface : new zzbhb(readStrongBinder);
        }
        zzbs.recycle();
        return zzbhbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final void zzf(zzbpg zzbpgVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final void zzg(zzbpj zzbpjVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final void zzh(String str, zzbpp zzbppVar, zzbpm zzbpmVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzaol.zzf(zza, zzbppVar);
        zzaol.zzf(zza, zzbpmVar);
        zzbt(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final void zzi(zzbui zzbuiVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final void zzj(zzbpt zzbptVar, zzbfi zzbfiVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbptVar);
        zzaol.zzd(zza, zzbfiVar);
        zzbt(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final void zzk(zzbpw zzbpwVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbpwVar);
        zzbt(10, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final void zzl(zzbgx zzbgxVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbgxVar);
        zzbt(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final void zzm(AdManagerAdViewOptions adManagerAdViewOptions) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, adManagerAdViewOptions);
        zzbt(15, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final void zzn(zzbtz zzbtzVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final void zzo(zzbnw zzbnwVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbnwVar);
        zzbt(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final void zzp(PublisherAdViewOptions publisherAdViewOptions) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhg
    public final void zzq(zzbhv zzbhvVar) throws RemoteException {
        throw null;
    }
}
