package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbve.class */
public final class zzbve extends zzadj implements zzbvg {
    public zzbve(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzbvg
    public final zzbvj zzb(String str) throws RemoteException {
        zzbvh zzbvhVar;
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzbi = zzbi(1, zza);
        IBinder readStrongBinder = zzbi.readStrongBinder();
        if (readStrongBinder == null) {
            zzbvhVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            zzbvhVar = queryLocalInterface instanceof zzbvj ? (zzbvj) queryLocalInterface : new zzbvh(readStrongBinder);
        }
        zzbi.recycle();
        return zzbvhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvg
    public final boolean zzc(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzbi = zzbi(2, zza);
        boolean zza2 = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzbvg
    public final boolean zzd(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzbi = zzbi(4, zza);
        boolean zza2 = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzbvg
    public final zzbxn zzf(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzbi = zzbi(3, zza);
        zzbxn zzb = zzbxm.zzb(zzbi.readStrongBinder());
        zzbi.recycle();
        return zzb;
    }
}
