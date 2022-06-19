package com.google.android.gms.internal.appset;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.appset.zza;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/appset/zzg.class */
public final class zzg extends zza implements IInterface {
    public zzg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.appset.internal.IAppSetService");
    }

    public final void zzc(zza zzaVar, zzf zzfVar) throws RemoteException {
        Parcel zza = zza();
        zzc.zzb(zza, zzaVar);
        zzc.zzc(zza, zzfVar);
        zzb(1, zza);
    }
}
