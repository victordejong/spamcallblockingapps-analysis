package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajv.class */
public interface zzajv extends IInterface {
    void destroy() throws RemoteException;

    zzzc getVideoController() throws RemoteException;

    void zza(IObjectWrapper iObjectWrapper, zzajw zzajwVar) throws RemoteException;

    void zzr(IObjectWrapper iObjectWrapper) throws RemoteException;

    zzaem zzty() throws RemoteException;
}
