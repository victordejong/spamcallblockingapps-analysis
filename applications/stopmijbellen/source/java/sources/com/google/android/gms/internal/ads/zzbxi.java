package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbxi.class */
public final class zzbxi extends zzaoj implements zzbxk {
    public zzbxi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzA(zzbfd zzbfdVar, String str, String str2) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzB(IObjectWrapper iObjectWrapper, zzbfd zzbfdVar, String str, zzbxn zzbxnVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzd(zza, zzbfdVar);
        zza.writeString(str);
        zzaol.zzf(zza, zzbxnVar);
        zzbt(32, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzC(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzD() throws RemoteException {
        zzbt(8, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzE() throws RemoteException {
        zzbt(9, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzF(boolean z) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzc(zza, z);
        zzbt(25, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzG() throws RemoteException {
        zzbt(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzH(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(37, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzI(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(30, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzJ() throws RemoteException {
        zzbt(12, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final boolean zzK() throws RemoteException {
        Parcel zzbs = zzbs(22, zza());
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final boolean zzL() throws RemoteException {
        Parcel zzbs = zzbs(13, zza());
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final zzbxs zzM() throws RemoteException {
        zzbxs zzbxsVar;
        Parcel zzbs = zzbs(15, zza());
        IBinder readStrongBinder = zzbs.readStrongBinder();
        if (readStrongBinder == null) {
            zzbxsVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            zzbxsVar = queryLocalInterface instanceof zzbxs ? (zzbxs) queryLocalInterface : new zzbxs(readStrongBinder);
        }
        zzbs.recycle();
        return zzbxsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final zzbxt zzN() throws RemoteException {
        zzbxt zzbxtVar;
        Parcel zzbs = zzbs(16, zza());
        IBinder readStrongBinder = zzbs.readStrongBinder();
        if (readStrongBinder == null) {
            zzbxtVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            zzbxtVar = queryLocalInterface instanceof zzbxt ? (zzbxt) queryLocalInterface : new zzbxt(readStrongBinder);
        }
        zzbs.recycle();
        return zzbxtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final Bundle zze() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final Bundle zzf() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final Bundle zzg() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final zzbiz zzh() throws RemoteException {
        Parcel zzbs = zzbs(26, zza());
        zzbiz zzb = zzbiy.zzb(zzbs.readStrongBinder());
        zzbs.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final zzbpc zzi() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final zzbxq zzj() throws RemoteException {
        zzbxo zzbxoVar;
        Parcel zzbs = zzbs(36, zza());
        IBinder readStrongBinder = zzbs.readStrongBinder();
        if (readStrongBinder == null) {
            zzbxoVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
            zzbxoVar = queryLocalInterface instanceof zzbxq ? (zzbxq) queryLocalInterface : new zzbxo(readStrongBinder);
        }
        zzbs.recycle();
        return zzbxoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final zzbxw zzk() throws RemoteException {
        zzbxu zzbxuVar;
        Parcel zzbs = zzbs(27, zza());
        IBinder readStrongBinder = zzbs.readStrongBinder();
        if (readStrongBinder == null) {
            zzbxuVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            zzbxuVar = queryLocalInterface instanceof zzbxw ? (zzbxw) queryLocalInterface : new zzbxu(readStrongBinder);
        }
        zzbs.recycle();
        return zzbxuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final zzcab zzl() throws RemoteException {
        Parcel zzbs = zzbs(33, zza());
        zzcab zzcabVar = (zzcab) zzaol.zza(zzbs, zzcab.CREATOR);
        zzbs.recycle();
        return zzcabVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final zzcab zzm() throws RemoteException {
        Parcel zzbs = zzbs(34, zza());
        zzcab zzcabVar = (zzcab) zzaol.zza(zzbs, zzcab.CREATOR);
        zzbs.recycle();
        return zzcabVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final IObjectWrapper zzn() throws RemoteException {
        return C0033h.m8887j(zzbs(2, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzo() throws RemoteException {
        zzbt(5, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzp(IObjectWrapper iObjectWrapper, zzbfd zzbfdVar, String str, zzcer zzcerVar, String str2) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzd(zza, zzbfdVar);
        zza.writeString(null);
        zzaol.zzf(zza, zzcerVar);
        zza.writeString(str2);
        zzbt(10, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzq(IObjectWrapper iObjectWrapper, zzbtr zzbtrVar, List<zzbtx> list) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzf(zza, zzbtrVar);
        zza.writeTypedList(list);
        zzbt(31, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzr(IObjectWrapper iObjectWrapper, zzcer zzcerVar, List<String> list) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzf(zza, zzcerVar);
        zza.writeStringList(list);
        zzbt(23, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzs(zzbfd zzbfdVar, String str) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbfdVar);
        zza.writeString(str);
        zzbt(11, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzt(IObjectWrapper iObjectWrapper, zzbfi zzbfiVar, zzbfd zzbfdVar, String str, zzbxn zzbxnVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzu(IObjectWrapper iObjectWrapper, zzbfi zzbfiVar, zzbfd zzbfdVar, String str, String str2, zzbxn zzbxnVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzd(zza, zzbfiVar);
        zzaol.zzd(zza, zzbfdVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzaol.zzf(zza, zzbxnVar);
        zzbt(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzv(IObjectWrapper iObjectWrapper, zzbfi zzbfiVar, zzbfd zzbfdVar, String str, String str2, zzbxn zzbxnVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzd(zza, zzbfiVar);
        zzaol.zzd(zza, zzbfdVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzaol.zzf(zza, zzbxnVar);
        zzbt(35, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzw(IObjectWrapper iObjectWrapper, zzbfd zzbfdVar, String str, zzbxn zzbxnVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzx(IObjectWrapper iObjectWrapper, zzbfd zzbfdVar, String str, String str2, zzbxn zzbxnVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzd(zza, zzbfdVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzaol.zzf(zza, zzbxnVar);
        zzbt(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzy(IObjectWrapper iObjectWrapper, zzbfd zzbfdVar, String str, String str2, zzbxn zzbxnVar, zzbnw zzbnwVar, List<String> list) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzd(zza, zzbfdVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzaol.zzf(zza, zzbxnVar);
        zzaol.zzd(zza, zzbnwVar);
        zza.writeStringList(list);
        zzbt(14, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzz(IObjectWrapper iObjectWrapper, zzbfd zzbfdVar, String str, zzbxn zzbxnVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzd(zza, zzbfdVar);
        zza.writeString(str);
        zzaol.zzf(zza, zzbxnVar);
        zzbt(28, zza);
    }
}
