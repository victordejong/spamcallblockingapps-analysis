package com.google.android.gms.internal.auth_api_phone;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.internal.auth-api-phone.zzf;
import com.google.android.gms.internal.auth-api-phone.zzh;
import com.google.android.gms.internal.auth-api-phone.zzl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api_phone/zzj.class */
public interface zzj extends IInterface {
    void zza(IStatusCallback iStatusCallback) throws RemoteException;

    void zza(zzf zzfVar) throws RemoteException;

    void zza(zzl zzlVar) throws RemoteException;

    void zza(String str, zzh zzhVar) throws RemoteException;

    void zza(String str, zzl zzlVar) throws RemoteException;
}
