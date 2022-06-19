package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzm.class */
public final class zzbzm extends zzaoj implements zzbzo {
    public zzbzm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final zzbiz zze() throws RemoteException {
        Parcel zzbs = zzbs(5, zza());
        zzbiz zzb = zzbiy.zzb(zzbs.readStrongBinder());
        zzbs.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final zzcab zzf() throws RemoteException {
        Parcel zzbs = zzbs(2, zza());
        zzcab zzcabVar = (zzcab) zzaol.zza(zzbs, zzcab.CREATOR);
        zzbs.recycle();
        return zzcabVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final zzcab zzg() throws RemoteException {
        Parcel zzbs = zzbs(3, zza());
        zzcab zzcabVar = (zzcab) zzaol.zza(zzbs, zzcab.CREATOR);
        zzbs.recycle();
        return zzcabVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final void zzh(IObjectWrapper iObjectWrapper, String str, Bundle bundle, Bundle bundle2, zzbfi zzbfiVar, zzbzr zzbzrVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zza.writeString(str);
        zzaol.zzd(zza, bundle);
        zzaol.zzd(zza, bundle2);
        zzaol.zzd(zza, zzbfiVar);
        zzaol.zzf(zza, zzbzrVar);
        zzbt(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final void zzi(String str, String str2, zzbfd zzbfdVar, IObjectWrapper iObjectWrapper, zzbzc zzbzcVar, zzbxn zzbxnVar, zzbfi zzbfiVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzaol.zzd(zza, zzbfdVar);
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzf(zza, zzbzcVar);
        zzaol.zzf(zza, zzbxnVar);
        zzaol.zzd(zza, zzbfiVar);
        zzbt(13, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final void zzj(String str, String str2, zzbfd zzbfdVar, IObjectWrapper iObjectWrapper, zzbzc zzbzcVar, zzbxn zzbxnVar, zzbfi zzbfiVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzaol.zzd(zza, zzbfdVar);
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzf(zza, zzbzcVar);
        zzaol.zzf(zza, zzbxnVar);
        zzaol.zzd(zza, zzbfiVar);
        zzbt(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final void zzk(String str, String str2, zzbfd zzbfdVar, IObjectWrapper iObjectWrapper, zzbzf zzbzfVar, zzbxn zzbxnVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzaol.zzd(zza, zzbfdVar);
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzf(zza, zzbzfVar);
        zzaol.zzf(zza, zzbxnVar);
        zzbt(14, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final void zzl(String str, String str2, zzbfd zzbfdVar, IObjectWrapper iObjectWrapper, zzbzi zzbziVar, zzbxn zzbxnVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzaol.zzd(zza, zzbfdVar);
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzf(zza, zzbziVar);
        zzaol.zzf(zza, zzbxnVar);
        zzbt(18, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final void zzm(String str, String str2, zzbfd zzbfdVar, IObjectWrapper iObjectWrapper, zzbzi zzbziVar, zzbxn zzbxnVar, zzbnw zzbnwVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzaol.zzd(zza, zzbfdVar);
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzf(zza, zzbziVar);
        zzaol.zzf(zza, zzbxnVar);
        zzaol.zzd(zza, zzbnwVar);
        zzbt(22, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final void zzn(String str, String str2, zzbfd zzbfdVar, IObjectWrapper iObjectWrapper, zzbzl zzbzlVar, zzbxn zzbxnVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzaol.zzd(zza, zzbfdVar);
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzf(zza, zzbzlVar);
        zzaol.zzf(zza, zzbxnVar);
        zzbt(20, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final void zzo(String str, String str2, zzbfd zzbfdVar, IObjectWrapper iObjectWrapper, zzbzl zzbzlVar, zzbxn zzbxnVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzaol.zzd(zza, zzbfdVar);
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzf(zza, zzbzlVar);
        zzaol.zzf(zza, zzbxnVar);
        zzbt(16, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final void zzp(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzbt(19, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final boolean zzq(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        Parcel zzbs = zzbs(15, zza);
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbzo
    public final boolean zzr(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        Parcel zzbs = zzbs(17, zza);
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }
}
