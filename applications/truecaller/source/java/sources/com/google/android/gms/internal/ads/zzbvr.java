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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbvr.class */
public final class zzbvr extends zzadj implements IInterface {
    public zzbvr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
    }

    public final String zze() throws RemoteException {
        Parcel zzbi = zzbi(2, zza());
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    public final List zzf() throws RemoteException {
        Parcel zzbi = zzbi(3, zza());
        ArrayList zzg = zzadl.zzg(zzbi);
        zzbi.recycle();
        return zzg;
    }

    public final String zzg() throws RemoteException {
        Parcel zzbi = zzbi(4, zza());
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    public final zzbmh zzh() throws RemoteException {
        Parcel zzbi = zzbi(5, zza());
        zzbmh zzg = zzbmg.zzg(zzbi.readStrongBinder());
        zzbi.recycle();
        return zzg;
    }

    public final String zzi() throws RemoteException {
        Parcel zzbi = zzbi(6, zza());
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    public final double zzj() throws RemoteException {
        Parcel zzbi = zzbi(7, zza());
        double readDouble = zzbi.readDouble();
        zzbi.recycle();
        return readDouble;
    }

    public final String zzk() throws RemoteException {
        Parcel zzbi = zzbi(8, zza());
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    public final String zzl() throws RemoteException {
        Parcel zzbi = zzbi(9, zza());
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    public final void zzm() throws RemoteException {
        zzbj(10, zza());
    }

    public final void zzn(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(11, zza);
    }

    public final void zzo(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(12, zza);
    }

    public final boolean zzp() throws RemoteException {
        Parcel zzbi = zzbi(13, zza());
        boolean zza = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza;
    }

    public final boolean zzq() throws RemoteException {
        Parcel zzbi = zzbi(14, zza());
        boolean zza = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza;
    }

    public final Bundle zzr() throws RemoteException {
        Parcel zzbi = zzbi(15, zza());
        Bundle bundle = (Bundle) zzadl.zzc(zzbi, Bundle.CREATOR);
        zzbi.recycle();
        return bundle;
    }

    public final void zzs(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(16, zza);
    }

    public final zzbhc zzt() throws RemoteException {
        Parcel zzbi = zzbi(17, zza());
        zzbhc zzb = zzbhb.zzb(zzbi.readStrongBinder());
        zzbi.recycle();
        return zzb;
    }

    public final IObjectWrapper zzu() throws RemoteException {
        return C22128a.m8608j1(zzbi(18, zza()));
    }

    public final zzblz zzv() throws RemoteException {
        Parcel zzbi = zzbi(19, zza());
        zzblz zzj = zzbly.zzj(zzbi.readStrongBinder());
        zzbi.recycle();
        return zzj;
    }

    public final IObjectWrapper zzw() throws RemoteException {
        return C22128a.m8608j1(zzbi(20, zza()));
    }

    public final IObjectWrapper zzx() throws RemoteException {
        return C22128a.m8608j1(zzbi(21, zza()));
    }

    public final void zzy(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzf(zza, iObjectWrapper2);
        zzadl.zzf(zza, iObjectWrapper3);
        zzbj(22, zza);
    }
}
