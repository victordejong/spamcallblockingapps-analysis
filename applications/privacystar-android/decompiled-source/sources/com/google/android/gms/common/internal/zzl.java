package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.common.zza;
import com.google.android.gms.internal.common.zzc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzl.class */
public final class zzl extends zza implements IGmsCallbacks {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGmsCallbacks");
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void onPostInitComplete(int i, IBinder iBinder, Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zza.writeStrongBinder(iBinder);
        zzc.zza(zza, bundle);
        zzb(1, zza);
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void zza(int i, Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zzc.zza(zza, bundle);
        zzb(2, zza);
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void zza(int i, IBinder iBinder, zzb zzbVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zza.writeStrongBinder(iBinder);
        zzc.zza(zza, zzbVar);
        zzb(3, zza);
    }
}
