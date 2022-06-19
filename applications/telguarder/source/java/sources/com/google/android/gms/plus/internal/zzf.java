package com.google.android.gms.plus.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.internal.ICancelToken;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/plus/internal/zzf.class */
public interface zzf extends IInterface {
    String getAccountName() throws RemoteException;

    ICancelToken zza(zzb zzbVar, int i, int i2, int i3, String str) throws RemoteException;

    void zza() throws RemoteException;

    void zza(zzb zzbVar) throws RemoteException;

    void zza(zzb zzbVar, List<String> list) throws RemoteException;
}
