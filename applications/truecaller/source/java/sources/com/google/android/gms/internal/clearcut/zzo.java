package com.google.android.gms.internal.clearcut;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.clearcut.zze;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzo.class */
public final class zzo extends zza implements zzn {
    public zzo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.clearcut.internal.IClearcutLoggerService");
    }

    @Override // com.google.android.gms.internal.clearcut.zzn
    public final void zza(zzl zzlVar, zze zzeVar) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzc.zza(obtainAndWriteInterfaceToken, zzlVar);
        zzc.zza(obtainAndWriteInterfaceToken, zzeVar);
        transactOneway(1, obtainAndWriteInterfaceToken);
    }
}
