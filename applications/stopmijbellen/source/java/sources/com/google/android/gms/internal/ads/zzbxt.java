package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbxt.class */
public final class zzbxt extends zzaoj {
    public zzbxt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
    }

    public final Bundle zze() throws RemoteException {
        Parcel zzbs = zzbs(13, zza());
        Bundle bundle = (Bundle) zzaol.zza(zzbs, Bundle.CREATOR);
        zzbs.recycle();
        return bundle;
    }

    public final zzbiz zzf() throws RemoteException {
        Parcel zzbs = zzbs(16, zza());
        zzbiz zzb = zzbiy.zzb(zzbs.readStrongBinder());
        zzbs.recycle();
        return zzb;
    }

    public final zzboa zzg() throws RemoteException {
        Parcel zzbs = zzbs(19, zza());
        zzboa zzj = zzbnz.zzj(zzbs.readStrongBinder());
        zzbs.recycle();
        return zzj;
    }

    public final zzboi zzh() throws RemoteException {
        Parcel zzbs = zzbs(5, zza());
        zzboi zzg = zzboh.zzg(zzbs.readStrongBinder());
        zzbs.recycle();
        return zzg;
    }

    public final IObjectWrapper zzi() throws RemoteException {
        return C0033h.m8887j(zzbs(15, zza()));
    }

    public final IObjectWrapper zzj() throws RemoteException {
        return C0033h.m8887j(zzbs(20, zza()));
    }

    public final IObjectWrapper zzk() throws RemoteException {
        return C0033h.m8887j(zzbs(21, zza()));
    }

    public final String zzl() throws RemoteException {
        Parcel zzbs = zzbs(7, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
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

    public final List zzp() throws RemoteException {
        Parcel zzbs = zzbs(3, zza());
        ArrayList zzb = zzaol.zzb(zzbs);
        zzbs.recycle();
        return zzb;
    }

    public final void zzq(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(9, zza);
    }

    public final void zzr() throws RemoteException {
        zzbt(8, zza());
    }

    public final void zzs(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(10, zza);
    }

    public final void zzt(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzf(zza, iObjectWrapper2);
        zzaol.zzf(zza, iObjectWrapper3);
        zzbt(22, zza);
    }

    public final void zzu(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(14, zza);
    }

    public final boolean zzv() throws RemoteException {
        Parcel zzbs = zzbs(12, zza());
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }

    public final boolean zzw() throws RemoteException {
        Parcel zzbs = zzbs(11, zza());
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }
}
