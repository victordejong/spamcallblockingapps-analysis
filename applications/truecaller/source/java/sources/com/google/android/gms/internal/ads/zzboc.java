package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzboc.class */
public final class zzboc extends zzadj implements zzboe {
    public zzboc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final boolean zzA() throws RemoteException {
        Parcel zzbi = zzbi(24, zza());
        boolean zza = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final void zzB(zzbgm zzbgmVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbgmVar);
        zzbj(25, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final void zzC(zzbgi zzbgiVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbgiVar);
        zzbj(26, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final void zzD() throws RemoteException {
        zzbj(27, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final void zzE() throws RemoteException {
        zzbj(28, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final zzbme zzF() throws RemoteException {
        zzbmc zzbmcVar;
        Parcel zzbi = zzbi(29, zza());
        IBinder readStrongBinder = zzbi.readStrongBinder();
        if (readStrongBinder == null) {
            zzbmcVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
            zzbmcVar = queryLocalInterface instanceof zzbme ? (zzbme) queryLocalInterface : new zzbmc(readStrongBinder);
        }
        zzbi.recycle();
        return zzbmcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final boolean zzG() throws RemoteException {
        Parcel zzbi = zzbi(30, zza());
        boolean zza = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final zzbgz zzH() throws RemoteException {
        Parcel zzbi = zzbi(31, zza());
        zzbgz zzb = zzbgy.zzb(zzbi.readStrongBinder());
        zzbi.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final void zzI(zzbgw zzbgwVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbgwVar);
        zzbj(32, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final String zze() throws RemoteException {
        Parcel zzbi = zzbi(2, zza());
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final List zzf() throws RemoteException {
        Parcel zzbi = zzbi(3, zza());
        ArrayList zzg = zzadl.zzg(zzbi);
        zzbi.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final String zzg() throws RemoteException {
        Parcel zzbi = zzbi(4, zza());
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final zzbmh zzh() throws RemoteException {
        zzbmf zzbmfVar;
        Parcel zzbi = zzbi(5, zza());
        IBinder readStrongBinder = zzbi.readStrongBinder();
        if (readStrongBinder == null) {
            zzbmfVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            zzbmfVar = queryLocalInterface instanceof zzbmh ? (zzbmh) queryLocalInterface : new zzbmf(readStrongBinder);
        }
        zzbi.recycle();
        return zzbmfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final String zzi() throws RemoteException {
        Parcel zzbi = zzbi(6, zza());
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final String zzj() throws RemoteException {
        Parcel zzbi = zzbi(7, zza());
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final double zzk() throws RemoteException {
        Parcel zzbi = zzbi(8, zza());
        double readDouble = zzbi.readDouble();
        zzbi.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final String zzl() throws RemoteException {
        Parcel zzbi = zzbi(9, zza());
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final String zzm() throws RemoteException {
        Parcel zzbi = zzbi(10, zza());
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final zzbhc zzn() throws RemoteException {
        Parcel zzbi = zzbi(11, zza());
        zzbhc zzb = zzbhb.zzb(zzbi.readStrongBinder());
        zzbi.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final String zzo() throws RemoteException {
        Parcel zzbi = zzbi(12, zza());
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final void zzp() throws RemoteException {
        zzbj(13, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final zzblz zzq() throws RemoteException {
        zzblx zzblxVar;
        Parcel zzbi = zzbi(14, zza());
        IBinder readStrongBinder = zzbi.readStrongBinder();
        if (readStrongBinder == null) {
            zzblxVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            zzblxVar = queryLocalInterface instanceof zzblz ? (zzblz) queryLocalInterface : new zzblx(readStrongBinder);
        }
        zzbi.recycle();
        return zzblxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final void zzr(Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, bundle);
        zzbj(15, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final boolean zzs(Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, bundle);
        Parcel zzbi = zzbi(16, zza);
        boolean zza2 = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final void zzt(Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, bundle);
        zzbj(17, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final IObjectWrapper zzu() throws RemoteException {
        return C22128a.m8608j1(zzbi(18, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final IObjectWrapper zzv() throws RemoteException {
        return C22128a.m8608j1(zzbi(19, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final Bundle zzw() throws RemoteException {
        Parcel zzbi = zzbi(20, zza());
        Bundle bundle = (Bundle) zzadl.zzc(zzbi, Bundle.CREATOR);
        zzbi.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final void zzx(zzbob zzbobVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbobVar);
        zzbj(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final void zzy() throws RemoteException {
        zzbj(22, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final List zzz() throws RemoteException {
        Parcel zzbi = zzbi(23, zza());
        ArrayList zzg = zzadl.zzg(zzbi);
        zzbi.recycle();
        return zzg;
    }
}
