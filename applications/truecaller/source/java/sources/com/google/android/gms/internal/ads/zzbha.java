package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbha.class */
public final class zzbha extends zzadj implements zzbhc {
    public zzbha(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoController");
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final void zze() throws RemoteException {
        zzbj(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final void zzf() throws RemoteException {
        zzbj(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final void zzg(boolean z) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzb(zza, z);
        zzbj(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final boolean zzh() throws RemoteException {
        Parcel zzbi = zzbi(4, zza());
        boolean zza = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final int zzi() throws RemoteException {
        Parcel zzbi = zzbi(5, zza());
        int readInt = zzbi.readInt();
        zzbi.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final float zzj() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final float zzk() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final void zzl(zzbhf zzbhfVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbhfVar);
        zzbj(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final float zzm() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final boolean zzn() throws RemoteException {
        Parcel zzbi = zzbi(10, zza());
        boolean zza = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final zzbhf zzo() throws RemoteException {
        zzbhd zzbhdVar;
        Parcel zzbi = zzbi(11, zza());
        IBinder readStrongBinder = zzbi.readStrongBinder();
        if (readStrongBinder == null) {
            zzbhdVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
            zzbhdVar = queryLocalInterface instanceof zzbhf ? (zzbhf) queryLocalInterface : new zzbhd(readStrongBinder);
        }
        zzbi.recycle();
        return zzbhdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final boolean zzp() throws RemoteException {
        Parcel zzbi = zzbi(12, zza());
        boolean zza = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final void zzq() throws RemoteException {
        zzbj(13, zza());
    }
}
