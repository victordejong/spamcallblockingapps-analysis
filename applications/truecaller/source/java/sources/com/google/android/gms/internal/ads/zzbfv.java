package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbfv.class */
public final class zzbfv extends zzadj implements zzbfx {
    public zzbfv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzbfn zzb(IObjectWrapper iObjectWrapper, zzbdl zzbdlVar, String str, zzbvg zzbvgVar, int i) throws RemoteException {
        zzbfl zzbflVar;
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzd(zza, zzbdlVar);
        zza.writeString(str);
        zzadl.zzf(zza, zzbvgVar);
        zza.writeInt(213806000);
        Parcel zzbi = zzbi(1, zza);
        IBinder readStrongBinder = zzbi.readStrongBinder();
        if (readStrongBinder == null) {
            zzbflVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzbflVar = queryLocalInterface instanceof zzbfn ? (zzbfn) queryLocalInterface : new zzbfl(readStrongBinder);
        }
        zzbi.recycle();
        return zzbflVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzbfn zzc(IObjectWrapper iObjectWrapper, zzbdl zzbdlVar, String str, zzbvg zzbvgVar, int i) throws RemoteException {
        zzbfl zzbflVar;
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzd(zza, zzbdlVar);
        zza.writeString(str);
        zzadl.zzf(zza, zzbvgVar);
        zza.writeInt(213806000);
        Parcel zzbi = zzbi(2, zza);
        IBinder readStrongBinder = zzbi.readStrongBinder();
        if (readStrongBinder == null) {
            zzbflVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzbflVar = queryLocalInterface instanceof zzbfn ? (zzbfn) queryLocalInterface : new zzbfl(readStrongBinder);
        }
        zzbi.recycle();
        return zzbflVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzbfj zzd(IObjectWrapper iObjectWrapper, String str, zzbvg zzbvgVar, int i) throws RemoteException {
        zzbfh zzbfhVar;
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zza.writeString(str);
        zzadl.zzf(zza, zzbvgVar);
        zza.writeInt(213806000);
        Parcel zzbi = zzbi(3, zza);
        IBinder readStrongBinder = zzbi.readStrongBinder();
        if (readStrongBinder == null) {
            zzbfhVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            zzbfhVar = queryLocalInterface instanceof zzbfj ? (zzbfj) queryLocalInterface : new zzbfh(readStrongBinder);
        }
        zzbi.recycle();
        return zzbfhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzbml zze(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzf(zza, iObjectWrapper2);
        Parcel zzbi = zzbi(5, zza);
        zzbml zzby = zzbmk.zzby(zzbi.readStrongBinder());
        zzbi.recycle();
        return zzby;
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzccc zzf(IObjectWrapper iObjectWrapper, zzbvg zzbvgVar, int i) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzbzq zzg(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        Parcel zzbi = zzbi(8, zza);
        zzbzq zzF = zzbzp.zzF(zzbi.readStrongBinder());
        zzbi.recycle();
        return zzF;
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzbge zzh(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        zzbgc zzbgcVar;
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zza.writeInt(213806000);
        Parcel zzbi = zzbi(9, zza);
        IBinder readStrongBinder = zzbi.readStrongBinder();
        if (readStrongBinder == null) {
            zzbgcVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            zzbgcVar = queryLocalInterface instanceof zzbge ? (zzbge) queryLocalInterface : new zzbgc(readStrongBinder);
        }
        zzbi.recycle();
        return zzbgcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzbfn zzi(IObjectWrapper iObjectWrapper, zzbdl zzbdlVar, String str, int i) throws RemoteException {
        zzbfl zzbflVar;
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzd(zza, zzbdlVar);
        zza.writeString(str);
        zza.writeInt(213806000);
        Parcel zzbi = zzbi(10, zza);
        IBinder readStrongBinder = zzbi.readStrongBinder();
        if (readStrongBinder == null) {
            zzbflVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzbflVar = queryLocalInterface instanceof zzbfn ? (zzbfn) queryLocalInterface : new zzbfl(readStrongBinder);
        }
        zzbi.recycle();
        return zzbflVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzbmr zzj(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzf(zza, iObjectWrapper2);
        zzadl.zzf(zza, iObjectWrapper3);
        Parcel zzbi = zzbi(11, zza);
        zzbmr zze = zzbmq.zze(zzbi.readStrongBinder());
        zzbi.recycle();
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzccs zzk(IObjectWrapper iObjectWrapper, String str, zzbvg zzbvgVar, int i) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zza.writeString(str);
        zzadl.zzf(zza, zzbvgVar);
        zza.writeInt(213806000);
        Parcel zzbi = zzbi(12, zza);
        zzccs zzq = zzccr.zzq(zzbi.readStrongBinder());
        zzbi.recycle();
        return zzq;
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzbfn zzl(IObjectWrapper iObjectWrapper, zzbdl zzbdlVar, String str, zzbvg zzbvgVar, int i) throws RemoteException {
        zzbfl zzbflVar;
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzd(zza, zzbdlVar);
        zza.writeString(str);
        zzadl.zzf(zza, zzbvgVar);
        zza.writeInt(213806000);
        Parcel zzbi = zzbi(13, zza);
        IBinder readStrongBinder = zzbi.readStrongBinder();
        if (readStrongBinder == null) {
            zzbflVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzbflVar = queryLocalInterface instanceof zzbfn ? (zzbfn) queryLocalInterface : new zzbfl(readStrongBinder);
        }
        zzbi.recycle();
        return zzbflVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzcfn zzm(IObjectWrapper iObjectWrapper, zzbvg zzbvgVar, int i) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzf(zza, zzbvgVar);
        zza.writeInt(213806000);
        Parcel zzbi = zzbi(14, zza);
        zzcfn zzb = zzcfm.zzb(zzbi.readStrongBinder());
        zzbi.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzbze zzn(IObjectWrapper iObjectWrapper, zzbvg zzbvgVar, int i) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzf(zza, zzbvgVar);
        zza.writeInt(213806000);
        Parcel zzbi = zzbi(15, zza);
        zzbze zzb = zzbzd.zzb(zzbi.readStrongBinder());
        zzbi.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzbqp zzo(IObjectWrapper iObjectWrapper, zzbvg zzbvgVar, int i, zzbqm zzbqmVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzf(zza, zzbvgVar);
        zza.writeInt(213806000);
        zzadl.zzf(zza, zzbqmVar);
        Parcel zzbi = zzbi(16, zza);
        zzbqp zzb = zzbqo.zzb(zzbi.readStrongBinder());
        zzbi.recycle();
        return zzb;
    }
}
