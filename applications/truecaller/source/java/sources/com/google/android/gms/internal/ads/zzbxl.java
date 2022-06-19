package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbxl.class */
public final class zzbxl extends zzadj implements zzbxn {
    public zzbxl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zze(IObjectWrapper iObjectWrapper, String str, Bundle bundle, Bundle bundle2, zzbdl zzbdlVar, zzbxq zzbxqVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zza.writeString(str);
        zzadl.zzd(zza, bundle);
        zzadl.zzd(zza, bundle2);
        zzadl.zzd(zza, zzbdlVar);
        zzadl.zzf(zza, zzbxqVar);
        zzbj(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final zzbya zzf() throws RemoteException {
        Parcel zzbi = zzbi(2, zza());
        zzbya zzbyaVar = (zzbya) zzadl.zzc(zzbi, zzbya.CREATOR);
        zzbi.recycle();
        return zzbyaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final zzbya zzg() throws RemoteException {
        Parcel zzbi = zzbi(3, zza());
        zzbya zzbyaVar = (zzbya) zzadl.zzc(zzbi, zzbya.CREATOR);
        zzbi.recycle();
        return zzbyaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final zzbhc zzh() throws RemoteException {
        Parcel zzbi = zzbi(5, zza());
        zzbhc zzb = zzbhb.zzb(zzbi.readStrongBinder());
        zzbi.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzi(String str, String str2, zzbdg zzbdgVar, IObjectWrapper iObjectWrapper, zzbxb zzbxbVar, zzbvm zzbvmVar, zzbdl zzbdlVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzadl.zzd(zza, zzbdgVar);
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzf(zza, zzbxbVar);
        zzadl.zzf(zza, zzbvmVar);
        zzadl.zzd(zza, zzbdlVar);
        zzbj(13, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzj(String str, String str2, zzbdg zzbdgVar, IObjectWrapper iObjectWrapper, zzbxe zzbxeVar, zzbvm zzbvmVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzadl.zzd(zza, zzbdgVar);
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzf(zza, zzbxeVar);
        zzadl.zzf(zza, zzbvmVar);
        zzbj(14, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final boolean zzk(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        Parcel zzbi = zzbi(15, zza);
        boolean zza2 = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzl(String str, String str2, zzbdg zzbdgVar, IObjectWrapper iObjectWrapper, zzbxk zzbxkVar, zzbvm zzbvmVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzadl.zzd(zza, zzbdgVar);
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzf(zza, zzbxkVar);
        zzadl.zzf(zza, zzbvmVar);
        zzbj(16, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final boolean zzm(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        Parcel zzbi = zzbi(17, zza);
        boolean zza2 = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzn(String str, String str2, zzbdg zzbdgVar, IObjectWrapper iObjectWrapper, zzbxh zzbxhVar, zzbvm zzbvmVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzadl.zzd(zza, zzbdgVar);
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzf(zza, zzbxhVar);
        zzadl.zzf(zza, zzbvmVar);
        zzbj(18, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzo(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzbj(19, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzp(String str, String str2, zzbdg zzbdgVar, IObjectWrapper iObjectWrapper, zzbxk zzbxkVar, zzbvm zzbvmVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzadl.zzd(zza, zzbdgVar);
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzf(zza, zzbxkVar);
        zzadl.zzf(zza, zzbvmVar);
        zzbj(20, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzq(String str, String str2, zzbdg zzbdgVar, IObjectWrapper iObjectWrapper, zzbxb zzbxbVar, zzbvm zzbvmVar, zzbdl zzbdlVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzadl.zzd(zza, zzbdgVar);
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzf(zza, zzbxbVar);
        zzadl.zzf(zza, zzbvmVar);
        zzadl.zzd(zza, zzbdlVar);
        zzbj(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzr(String str, String str2, zzbdg zzbdgVar, IObjectWrapper iObjectWrapper, zzbxh zzbxhVar, zzbvm zzbvmVar, zzblv zzblvVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzadl.zzd(zza, zzbdgVar);
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzf(zza, zzbxhVar);
        zzadl.zzf(zza, zzbvmVar);
        zzadl.zzd(zza, zzblvVar);
        zzbj(22, zza);
    }
}
