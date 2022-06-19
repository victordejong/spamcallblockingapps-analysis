package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbhs.class */
public final class zzbhs extends zzaoj implements zzbhu {
    public zzbhs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzbhg zzb(IObjectWrapper iObjectWrapper, String str, zzbxh zzbxhVar, int i) throws RemoteException {
        zzbhe zzbheVar;
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zza.writeString(str);
        zzaol.zzf(zza, zzbxhVar);
        zza.writeInt(214106000);
        Parcel zzbs = zzbs(3, zza);
        IBinder readStrongBinder = zzbs.readStrongBinder();
        if (readStrongBinder == null) {
            zzbheVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            zzbheVar = queryLocalInterface instanceof zzbhg ? (zzbhg) queryLocalInterface : new zzbhe(readStrongBinder);
        }
        zzbs.recycle();
        return zzbheVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzbhk zzc(IObjectWrapper iObjectWrapper, zzbfi zzbfiVar, String str, zzbxh zzbxhVar, int i) throws RemoteException {
        zzbhi zzbhiVar;
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzd(zza, zzbfiVar);
        zza.writeString(str);
        zzaol.zzf(zza, zzbxhVar);
        zza.writeInt(214106000);
        Parcel zzbs = zzbs(13, zza);
        IBinder readStrongBinder = zzbs.readStrongBinder();
        if (readStrongBinder == null) {
            zzbhiVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzbhiVar = queryLocalInterface instanceof zzbhk ? (zzbhk) queryLocalInterface : new zzbhi(readStrongBinder);
        }
        zzbs.recycle();
        return zzbhiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzbhk zzd(IObjectWrapper iObjectWrapper, zzbfi zzbfiVar, String str, zzbxh zzbxhVar, int i) throws RemoteException {
        zzbhi zzbhiVar;
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzd(zza, zzbfiVar);
        zza.writeString(str);
        zzaol.zzf(zza, zzbxhVar);
        zza.writeInt(214106000);
        Parcel zzbs = zzbs(1, zza);
        IBinder readStrongBinder = zzbs.readStrongBinder();
        if (readStrongBinder == null) {
            zzbhiVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzbhiVar = queryLocalInterface instanceof zzbhk ? (zzbhk) queryLocalInterface : new zzbhi(readStrongBinder);
        }
        zzbs.recycle();
        return zzbhiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzbhk zze(IObjectWrapper iObjectWrapper, zzbfi zzbfiVar, String str, zzbxh zzbxhVar, int i) throws RemoteException {
        zzbhi zzbhiVar;
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzd(zza, zzbfiVar);
        zza.writeString(str);
        zzaol.zzf(zza, zzbxhVar);
        zza.writeInt(214106000);
        Parcel zzbs = zzbs(2, zza);
        IBinder readStrongBinder = zzbs.readStrongBinder();
        if (readStrongBinder == null) {
            zzbhiVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzbhiVar = queryLocalInterface instanceof zzbhk ? (zzbhk) queryLocalInterface : new zzbhi(readStrongBinder);
        }
        zzbs.recycle();
        return zzbhiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzbhk zzf(IObjectWrapper iObjectWrapper, zzbfi zzbfiVar, String str, int i) throws RemoteException {
        zzbhi zzbhiVar;
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzd(zza, zzbfiVar);
        zza.writeString(str);
        zza.writeInt(214106000);
        Parcel zzbs = zzbs(10, zza);
        IBinder readStrongBinder = zzbs.readStrongBinder();
        if (readStrongBinder == null) {
            zzbhiVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzbhiVar = queryLocalInterface instanceof zzbhk ? (zzbhk) queryLocalInterface : new zzbhi(readStrongBinder);
        }
        zzbs.recycle();
        return zzbhiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzbib zzg(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        zzbhz zzbhzVar;
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zza.writeInt(214106000);
        Parcel zzbs = zzbs(9, zza);
        IBinder readStrongBinder = zzbs.readStrongBinder();
        if (readStrongBinder == null) {
            zzbhzVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            zzbhzVar = queryLocalInterface instanceof zzbib ? (zzbib) queryLocalInterface : new zzbhz(readStrongBinder);
        }
        zzbs.recycle();
        return zzbhzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzbom zzh(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzf(zza, iObjectWrapper2);
        Parcel zzbs = zzbs(5, zza);
        zzbom zzbJ = zzbol.zzbJ(zzbs.readStrongBinder());
        zzbs.recycle();
        return zzbJ;
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzbos zzi(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzf(zza, iObjectWrapper2);
        zzaol.zzf(zza, iObjectWrapper3);
        Parcel zzbs = zzbs(11, zza);
        zzbos zze = zzbor.zze(zzbs.readStrongBinder());
        zzbs.recycle();
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzbsr zzj(IObjectWrapper iObjectWrapper, zzbxh zzbxhVar, int i, zzbso zzbsoVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzf(zza, zzbxhVar);
        zza.writeInt(214106000);
        zzaol.zzf(zza, zzbsoVar);
        Parcel zzbs = zzbs(16, zza);
        zzbsr zzb = zzbsq.zzb(zzbs.readStrongBinder());
        zzbs.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzcbg zzk(IObjectWrapper iObjectWrapper, zzbxh zzbxhVar, int i) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzf(zza, zzbxhVar);
        zza.writeInt(214106000);
        Parcel zzbs = zzbs(15, zza);
        zzcbg zzb = zzcbf.zzb(zzbs.readStrongBinder());
        zzbs.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzcbs zzl(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        Parcel zzbs = zzbs(8, zza);
        zzcbs zzF = zzcbr.zzF(zzbs.readStrongBinder());
        zzbs.recycle();
        return zzF;
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzcej zzm(IObjectWrapper iObjectWrapper, zzbxh zzbxhVar, int i) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzcez zzn(IObjectWrapper iObjectWrapper, String str, zzbxh zzbxhVar, int i) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zza.writeString(str);
        zzaol.zzf(zza, zzbxhVar);
        zza.writeInt(214106000);
        Parcel zzbs = zzbs(12, zza);
        zzcez zzq = zzcey.zzq(zzbs.readStrongBinder());
        zzbs.recycle();
        return zzq;
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzcht zzo(IObjectWrapper iObjectWrapper, zzbxh zzbxhVar, int i) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzf(zza, zzbxhVar);
        zza.writeInt(214106000);
        Parcel zzbs = zzbs(14, zza);
        zzcht zzb = zzchs.zzb(zzbs.readStrongBinder());
        zzbs.recycle();
        return zzb;
    }
}
