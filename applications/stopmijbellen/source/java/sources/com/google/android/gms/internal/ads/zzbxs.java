package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbxs.class */
public final class zzbxs extends zzaoj {
    public zzbxs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
    }

    public final double zze() throws RemoteException {
        Parcel zzbs = zzbs(7, zza());
        double readDouble = zzbs.readDouble();
        zzbs.recycle();
        return readDouble;
    }

    public final Bundle zzf() throws RemoteException {
        Parcel zzbs = zzbs(15, zza());
        Bundle bundle = (Bundle) zzaol.zza(zzbs, Bundle.CREATOR);
        zzbs.recycle();
        return bundle;
    }

    public final zzbiz zzg() throws RemoteException {
        Parcel zzbs = zzbs(17, zza());
        zzbiz zzb = zzbiy.zzb(zzbs.readStrongBinder());
        zzbs.recycle();
        return zzb;
    }

    public final zzboa zzh() throws RemoteException {
        Parcel zzbs = zzbs(19, zza());
        zzboa zzj = zzbnz.zzj(zzbs.readStrongBinder());
        zzbs.recycle();
        return zzj;
    }

    public final zzboi zzi() throws RemoteException {
        Parcel zzbs = zzbs(5, zza());
        zzboi zzg = zzboh.zzg(zzbs.readStrongBinder());
        zzbs.recycle();
        return zzg;
    }

    public final IObjectWrapper zzj() throws RemoteException {
        return C0033h.m8887j(zzbs(18, zza()));
    }

    public final IObjectWrapper zzk() throws RemoteException {
        return C0033h.m8887j(zzbs(20, zza()));
    }

    public final IObjectWrapper zzl() throws RemoteException {
        return C0033h.m8887j(zzbs(21, zza()));
    }

    public final String zzm() throws RemoteException {
        Parcel zzbs = zzbs(4, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    public final String zzn() throws RemoteException {
        Parcel zzbs = zzbs(6, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    public final String zzo() throws RemoteException {
        Parcel zzbs = zzbs(2, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    public final String zzp() throws RemoteException {
        Parcel zzbs = zzbs(9, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    public final String zzq() throws RemoteException {
        Parcel zzbs = zzbs(8, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    public final List zzr() throws RemoteException {
        Parcel zzbs = zzbs(3, zza());
        ArrayList zzb = zzaol.zzb(zzbs);
        zzbs.recycle();
        return zzb;
    }

    public final void zzs(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(11, zza);
    }

    public final void zzt() throws RemoteException {
        zzbt(10, zza());
    }

    public final void zzu(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(12, zza);
    }

    public final void zzv(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzf(zza, iObjectWrapper2);
        zzaol.zzf(zza, iObjectWrapper3);
        zzbt(22, zza);
    }

    public final void zzw(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(16, zza);
    }

    public final boolean zzx() throws RemoteException {
        Parcel zzbs = zzbs(14, zza());
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }

    public final boolean zzy() throws RemoteException {
        Parcel zzbs = zzbs(13, zza());
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }
}
