package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbvh.class */
public final class zzbvh extends zzadj implements zzbvj {
    public zzbvh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzA(boolean z) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzb(zza, z);
        zzbj(25, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final zzbhc zzB() throws RemoteException {
        Parcel zzbi = zzbi(26, zza());
        zzbhc zzb = zzbhb.zzb(zzbi.readStrongBinder());
        zzbi.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final zzbvv zzC() throws RemoteException {
        zzbvt zzbvtVar;
        Parcel zzbi = zzbi(27, zza());
        IBinder readStrongBinder = zzbi.readStrongBinder();
        if (readStrongBinder == null) {
            zzbvtVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            zzbvtVar = queryLocalInterface instanceof zzbvv ? (zzbvv) queryLocalInterface : new zzbvt(readStrongBinder);
        }
        zzbi.recycle();
        return zzbvtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzD(IObjectWrapper iObjectWrapper, zzbdg zzbdgVar, String str, zzbvm zzbvmVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzd(zza, zzbdgVar);
        zza.writeString(str);
        zzadl.zzf(zza, zzbvmVar);
        zzbj(28, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzE(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(30, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzF(IObjectWrapper iObjectWrapper, zzbrp zzbrpVar, List<zzbrv> list) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzf(zza, zzbrpVar);
        zza.writeTypedList(list);
        zzbj(31, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzG(IObjectWrapper iObjectWrapper, zzbdg zzbdgVar, String str, zzbvm zzbvmVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzd(zza, zzbdgVar);
        zza.writeString(str);
        zzadl.zzf(zza, zzbvmVar);
        zzbj(32, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final zzbya zzH() throws RemoteException {
        Parcel zzbi = zzbi(33, zza());
        zzbya zzbyaVar = (zzbya) zzadl.zzc(zzbi, zzbya.CREATOR);
        zzbi.recycle();
        return zzbyaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final zzbya zzI() throws RemoteException {
        Parcel zzbi = zzbi(34, zza());
        zzbya zzbyaVar = (zzbya) zzadl.zzc(zzbi, zzbya.CREATOR);
        zzbi.recycle();
        return zzbyaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzJ(IObjectWrapper iObjectWrapper, zzbdl zzbdlVar, zzbdg zzbdgVar, String str, String str2, zzbvm zzbvmVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzd(zza, zzbdlVar);
        zzadl.zzd(zza, zzbdgVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzadl.zzf(zza, zzbvmVar);
        zzbj(35, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final zzbvp zzK() throws RemoteException {
        zzbvn zzbvnVar;
        Parcel zzbi = zzbi(36, zza());
        IBinder readStrongBinder = zzbi.readStrongBinder();
        if (readStrongBinder == null) {
            zzbvnVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
            zzbvnVar = queryLocalInterface instanceof zzbvp ? (zzbvp) queryLocalInterface : new zzbvn(readStrongBinder);
        }
        zzbi.recycle();
        return zzbvnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzL(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(37, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final zzbvr zzM() throws RemoteException {
        zzbvr zzbvrVar;
        Parcel zzbi = zzbi(15, zza());
        IBinder readStrongBinder = zzbi.readStrongBinder();
        if (readStrongBinder == null) {
            zzbvrVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            zzbvrVar = queryLocalInterface instanceof zzbvr ? (zzbvr) queryLocalInterface : new zzbvr(readStrongBinder);
        }
        zzbi.recycle();
        return zzbvrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final zzbvs zzN() throws RemoteException {
        zzbvs zzbvsVar;
        Parcel zzbi = zzbi(16, zza());
        IBinder readStrongBinder = zzbi.readStrongBinder();
        if (readStrongBinder == null) {
            zzbvsVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            zzbvsVar = queryLocalInterface instanceof zzbvs ? (zzbvs) queryLocalInterface : new zzbvs(readStrongBinder);
        }
        zzbi.recycle();
        return zzbvsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zze(IObjectWrapper iObjectWrapper, zzbdl zzbdlVar, zzbdg zzbdgVar, String str, zzbvm zzbvmVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final IObjectWrapper zzf() throws RemoteException {
        return C22128a.m8608j1(zzbi(2, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzg(IObjectWrapper iObjectWrapper, zzbdg zzbdgVar, String str, zzbvm zzbvmVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzh() throws RemoteException {
        zzbj(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzi() throws RemoteException {
        zzbj(5, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzj(IObjectWrapper iObjectWrapper, zzbdl zzbdlVar, zzbdg zzbdgVar, String str, String str2, zzbvm zzbvmVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzd(zza, zzbdlVar);
        zzadl.zzd(zza, zzbdgVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzadl.zzf(zza, zzbvmVar);
        zzbj(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzk(IObjectWrapper iObjectWrapper, zzbdg zzbdgVar, String str, String str2, zzbvm zzbvmVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzd(zza, zzbdgVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzadl.zzf(zza, zzbvmVar);
        zzbj(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzl() throws RemoteException {
        zzbj(8, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzm() throws RemoteException {
        zzbj(9, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzn(IObjectWrapper iObjectWrapper, zzbdg zzbdgVar, String str, zzcck zzcckVar, String str2) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzd(zza, zzbdgVar);
        zza.writeString(null);
        zzadl.zzf(zza, zzcckVar);
        zza.writeString(str2);
        zzbj(10, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzo(zzbdg zzbdgVar, String str) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzbdgVar);
        zza.writeString(str);
        zzbj(11, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzp() throws RemoteException {
        zzbj(12, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final boolean zzq() throws RemoteException {
        Parcel zzbi = zzbi(13, zza());
        boolean zza = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzr(IObjectWrapper iObjectWrapper, zzbdg zzbdgVar, String str, String str2, zzbvm zzbvmVar, zzblv zzblvVar, List<String> list) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzd(zza, zzbdgVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzadl.zzf(zza, zzbvmVar);
        zzadl.zzd(zza, zzblvVar);
        zza.writeStringList(list);
        zzbj(14, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final Bundle zzs() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final Bundle zzt() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final Bundle zzu() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzv(zzbdg zzbdgVar, String str, String str2) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzw(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final boolean zzx() throws RemoteException {
        Parcel zzbi = zzbi(22, zza());
        boolean zza = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzy(IObjectWrapper iObjectWrapper, zzcck zzcckVar, List<String> list) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzf(zza, zzcckVar);
        zza.writeStringList(list);
        zzbj(23, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final zzbnb zzz() throws RemoteException {
        throw null;
    }
}
