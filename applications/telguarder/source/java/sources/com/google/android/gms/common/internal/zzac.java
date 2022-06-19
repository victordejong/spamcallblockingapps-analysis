package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.zzn;
import com.google.android.gms.common.zzq;
import com.google.android.gms.common.zzs;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zza;
import com.google.android.gms.internal.common.zzc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzac.class */
public final class zzac extends zza implements zzae {
    public zzac(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
    }

    @Override // com.google.android.gms.common.internal.zzae
    public final boolean zze(zzs zzsVar, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzc.zzd(zza, zzsVar);
        zzc.zzf(zza, iObjectWrapper);
        Parcel zzB = zzB(5, zza);
        boolean zza2 = zzc.zza(zzB);
        zzB.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.common.internal.zzae
    public final zzq zzf(zzn zznVar) throws RemoteException {
        Parcel zza = zza();
        zzc.zzd(zza, zznVar);
        Parcel zzB = zzB(6, zza);
        zzq zzqVar = (zzq) zzc.zzc(zzB, zzq.CREATOR);
        zzB.recycle();
        return zzqVar;
    }

    @Override // com.google.android.gms.common.internal.zzae
    public final boolean zzg() throws RemoteException {
        Parcel zzB = zzB(7, zza());
        boolean zza = zzc.zza(zzB);
        zzB.recycle();
        return zza;
    }
}
