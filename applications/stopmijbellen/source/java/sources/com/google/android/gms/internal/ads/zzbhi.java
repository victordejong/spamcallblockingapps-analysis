package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbhi.class */
public final class zzbhi extends zzaoj implements zzbhk {
    public zzbhi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManager");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzA() throws RemoteException {
        zzbt(11, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzB() throws RemoteException {
        zzbt(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzC(zzbgu zzbguVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbguVar);
        zzbt(20, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzD(zzbgx zzbgxVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbgxVar);
        zzbt(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzE(zzbho zzbhoVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzF(zzbfi zzbfiVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbfiVar);
        zzbt(13, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzG(zzbhr zzbhrVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbhrVar);
        zzbt(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzH(zzazw zzazwVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzazwVar);
        zzbt(40, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzI(zzbfo zzbfoVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbfoVar);
        zzbt(39, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzJ(zzbhy zzbhyVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbhyVar);
        zzbt(45, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzK(zzbjd zzbjdVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzL(boolean z) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzc(zza, z);
        zzbt(34, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzM(zzccb zzccbVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzN(boolean z) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzc(zza, z);
        zzbt(22, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzO(zzbme zzbmeVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzP(zzbit zzbitVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbitVar);
        zzbt(42, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzQ(zzcce zzcceVar, String str) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzR(String str) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzS(zzcem zzcemVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzT(String str) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzU(zzbkq zzbkqVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbkqVar);
        zzbt(29, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzW(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(44, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzX() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final boolean zzY() throws RemoteException {
        Parcel zzbs = zzbs(23, zza());
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final boolean zzZ() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final boolean zzaa(zzbfd zzbfdVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbfdVar);
        Parcel zzbs = zzbs(4, zza);
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzab(zzbhv zzbhvVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final Bundle zzd() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbfi zzg() throws RemoteException {
        Parcel zzbs = zzbs(12, zza());
        zzbfi zzbfiVar = (zzbfi) zzaol.zza(zzbs, zzbfi.CREATOR);
        zzbs.recycle();
        return zzbfiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbgx zzi() throws RemoteException {
        zzbgv zzbgvVar;
        Parcel zzbs = zzbs(33, zza());
        IBinder readStrongBinder = zzbs.readStrongBinder();
        if (readStrongBinder == null) {
            zzbgvVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
            zzbgvVar = queryLocalInterface instanceof zzbgx ? (zzbgx) queryLocalInterface : new zzbgv(readStrongBinder);
        }
        zzbs.recycle();
        return zzbgvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbhr zzj() throws RemoteException {
        zzbhp zzbhpVar;
        Parcel zzbs = zzbs(32, zza());
        IBinder readStrongBinder = zzbs.readStrongBinder();
        if (readStrongBinder == null) {
            zzbhpVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
            zzbhpVar = queryLocalInterface instanceof zzbhr ? (zzbhr) queryLocalInterface : new zzbhp(readStrongBinder);
        }
        zzbs.recycle();
        return zzbhpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbiw zzk() throws RemoteException {
        zzbiu zzbiuVar;
        Parcel zzbs = zzbs(41, zza());
        IBinder readStrongBinder = zzbs.readStrongBinder();
        if (readStrongBinder == null) {
            zzbiuVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            zzbiuVar = queryLocalInterface instanceof zzbiw ? (zzbiw) queryLocalInterface : new zzbiu(readStrongBinder);
        }
        zzbs.recycle();
        return zzbiuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbiz zzl() throws RemoteException {
        zzbix zzbixVar;
        Parcel zzbs = zzbs(26, zza());
        IBinder readStrongBinder = zzbs.readStrongBinder();
        if (readStrongBinder == null) {
            zzbixVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
            zzbixVar = queryLocalInterface instanceof zzbiz ? (zzbiz) queryLocalInterface : new zzbix(readStrongBinder);
        }
        zzbs.recycle();
        return zzbixVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final IObjectWrapper zzn() throws RemoteException {
        return C0033h.m8887j(zzbs(1, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final String zzr() throws RemoteException {
        Parcel zzbs = zzbs(31, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final String zzs() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final String zzt() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzx() throws RemoteException {
        zzbt(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzy(zzbfd zzbfdVar, zzbha zzbhaVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbfdVar);
        zzaol.zzf(zza, zzbhaVar);
        zzbt(43, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzz() throws RemoteException {
        zzbt(5, zza());
    }
}
