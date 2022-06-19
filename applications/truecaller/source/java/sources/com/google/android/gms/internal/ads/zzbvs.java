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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbvs.class */
public final class zzbvs extends zzadj implements IInterface {
    public zzbvs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
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

    public final String zzj() throws RemoteException {
        Parcel zzbi = zzbi(7, zza());
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    public final void zzk() throws RemoteException {
        zzbj(8, zza());
    }

    public final void zzl(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(9, zza);
    }

    public final void zzm(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(10, zza);
    }

    public final boolean zzn() throws RemoteException {
        Parcel zzbi = zzbi(11, zza());
        boolean zza = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza;
    }

    public final boolean zzo() throws RemoteException {
        Parcel zzbi = zzbi(12, zza());
        boolean zza = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza;
    }

    public final Bundle zzp() throws RemoteException {
        Parcel zzbi = zzbi(13, zza());
        Bundle bundle = (Bundle) zzadl.zzc(zzbi, Bundle.CREATOR);
        zzbi.recycle();
        return bundle;
    }

    public final void zzq(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(14, zza);
    }

    public final IObjectWrapper zzr() throws RemoteException {
        return C22128a.m8608j1(zzbi(15, zza()));
    }

    public final zzbhc zzs() throws RemoteException {
        Parcel zzbi = zzbi(16, zza());
        zzbhc zzb = zzbhb.zzb(zzbi.readStrongBinder());
        zzbi.recycle();
        return zzb;
    }

    public final zzblz zzt() throws RemoteException {
        Parcel zzbi = zzbi(19, zza());
        zzblz zzj = zzbly.zzj(zzbi.readStrongBinder());
        zzbi.recycle();
        return zzj;
    }

    public final IObjectWrapper zzu() throws RemoteException {
        return C22128a.m8608j1(zzbi(20, zza()));
    }

    public final IObjectWrapper zzv() throws RemoteException {
        return C22128a.m8608j1(zzbi(21, zza()));
    }

    public final void zzw(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzf(zza, iObjectWrapper2);
        zzadl.zzf(zza, iObjectWrapper3);
        zzbj(22, zza);
    }
}
