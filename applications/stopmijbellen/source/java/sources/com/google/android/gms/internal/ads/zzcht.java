package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcht.class */
public interface zzcht extends IInterface {
    void zze(IObjectWrapper iObjectWrapper, zzchx zzchxVar, zzchq zzchqVar) throws RemoteException;

    void zzf(zzcco zzccoVar) throws RemoteException;

    void zzg(IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzh(IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzi(List<Uri> list, IObjectWrapper iObjectWrapper, zzcch zzcchVar) throws RemoteException;

    void zzj(List<Uri> list, IObjectWrapper iObjectWrapper, zzcch zzcchVar) throws RemoteException;
}
