package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbfl.class */
public final class zzbfl extends zzadj implements zzbfn {
    public zzbfl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManager");
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbgz zzA() throws RemoteException {
        zzbgx zzbgxVar;
        Parcel zzbi = zzbi(41, zza());
        IBinder readStrongBinder = zzbi.readStrongBinder();
        if (readStrongBinder == null) {
            zzbgxVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            zzbgxVar = queryLocalInterface instanceof zzbgz ? (zzbgz) queryLocalInterface : new zzbgx(readStrongBinder);
        }
        zzbi.recycle();
        return zzbgxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final String zzB() throws RemoteException {
        Parcel zzbi = zzbi(31, zza());
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbfu zzC() throws RemoteException {
        zzbfs zzbfsVar;
        Parcel zzbi = zzbi(32, zza());
        IBinder readStrongBinder = zzbi.readStrongBinder();
        if (readStrongBinder == null) {
            zzbfsVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
            zzbfsVar = queryLocalInterface instanceof zzbfu ? (zzbfu) queryLocalInterface : new zzbfs(readStrongBinder);
        }
        zzbi.recycle();
        return zzbfsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbfa zzD() throws RemoteException {
        zzbey zzbeyVar;
        Parcel zzbi = zzbi(33, zza());
        IBinder readStrongBinder = zzbi.readStrongBinder();
        if (readStrongBinder == null) {
            zzbeyVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
            zzbeyVar = queryLocalInterface instanceof zzbfa ? (zzbfa) queryLocalInterface : new zzbey(readStrongBinder);
        }
        zzbi.recycle();
        return zzbeyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzE(zzbkg zzbkgVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzF(zzbex zzbexVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbexVar);
        zzbj(20, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzG(boolean z) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzb(zza, z);
        zzbj(22, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final boolean zzH() throws RemoteException {
        Parcel zzbi = zzbi(23, zza());
        boolean zza = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzI(zzccf zzccfVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzJ(String str) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzK(String str) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbhc zzL() throws RemoteException {
        zzbha zzbhaVar;
        Parcel zzbi = zzbi(26, zza());
        IBinder readStrongBinder = zzbi.readStrongBinder();
        if (readStrongBinder == null) {
            zzbhaVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
            zzbhaVar = queryLocalInterface instanceof zzbhc ? (zzbhc) queryLocalInterface : new zzbha(readStrongBinder);
        }
        zzbi.recycle();
        return zzbhaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzM(zzbis zzbisVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzbisVar);
        zzbj(29, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzN(zzbhg zzbhgVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzO(zzbdr zzbdrVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzbdrVar);
        zzbj(39, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzP(zzaxz zzaxzVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzaxzVar);
        zzbj(40, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzQ(boolean z) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzb(zza, z);
        zzbj(34, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzX(zzbgw zzbgwVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbgwVar);
        zzbj(42, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzY(zzbdg zzbdgVar, zzbfd zzbfdVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzbdgVar);
        zzadl.zzf(zza, zzbfdVar);
        zzbj(43, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzZ(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(44, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzaa(zzbgb zzbgbVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbgbVar);
        zzbj(45, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzab(zzbfy zzbfyVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final IObjectWrapper zzi() throws RemoteException {
        return C22128a.m8608j1(zzbi(1, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzj() throws RemoteException {
        zzbj(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final boolean zzk() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final boolean zzl(zzbdg zzbdgVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzbdgVar);
        Parcel zzbi = zzbi(4, zza);
        boolean zza2 = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzm() throws RemoteException {
        zzbj(5, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzn() throws RemoteException {
        zzbj(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzo(zzbfa zzbfaVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbfaVar);
        zzbj(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzp(zzbfu zzbfuVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbfuVar);
        zzbj(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzq(zzbfr zzbfrVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final Bundle zzr() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzs() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzt() throws RemoteException {
        zzbj(11, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbdl zzu() throws RemoteException {
        Parcel zzbi = zzbi(12, zza());
        zzbdl zzbdlVar = (zzbdl) zzadl.zzc(zzbi, zzbdl.CREATOR);
        zzbi.recycle();
        return zzbdlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzv(zzbdl zzbdlVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzbdlVar);
        zzbj(13, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzw(zzbzz zzbzzVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzx(zzcac zzcacVar, String str) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final String zzy() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final String zzz() throws RemoteException {
        throw null;
    }
}
