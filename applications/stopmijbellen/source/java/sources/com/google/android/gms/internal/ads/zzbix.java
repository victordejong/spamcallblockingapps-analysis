package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbix.class */
public final class zzbix extends zzaoj implements zzbiz {
    public zzbix(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoController");
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final float zze() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final float zzf() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final float zzg() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final int zzh() throws RemoteException {
        Parcel zzbs = zzbs(5, zza());
        int readInt = zzbs.readInt();
        zzbs.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final zzbjc zzi() throws RemoteException {
        zzbja zzbjaVar;
        Parcel zzbs = zzbs(11, zza());
        IBinder readStrongBinder = zzbs.readStrongBinder();
        if (readStrongBinder == null) {
            zzbjaVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
            zzbjaVar = queryLocalInterface instanceof zzbjc ? (zzbjc) queryLocalInterface : new zzbja(readStrongBinder);
        }
        zzbs.recycle();
        return zzbjaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final void zzj(boolean z) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzc(zza, z);
        zzbt(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final void zzk() throws RemoteException {
        zzbt(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final void zzl() throws RemoteException {
        zzbt(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final void zzm(zzbjc zzbjcVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbjcVar);
        zzbt(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final void zzn() throws RemoteException {
        zzbt(13, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final boolean zzo() throws RemoteException {
        Parcel zzbs = zzbs(12, zza());
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final boolean zzp() throws RemoteException {
        Parcel zzbs = zzbs(10, zza());
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final boolean zzq() throws RemoteException {
        Parcel zzbs = zzbs(4, zza());
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }
}
