package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcfn.class */
public interface zzcfn extends IInterface {
    void zze(IObjectWrapper iObjectWrapper, zzcfr zzcfrVar, zzcfk zzcfkVar) throws RemoteException;

    void zzf(IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzg(List<Uri> list, IObjectWrapper iObjectWrapper, zzcaf zzcafVar) throws RemoteException;

    void zzh(List<Uri> list, IObjectWrapper iObjectWrapper, zzcaf zzcafVar) throws RemoteException;

    void zzi(zzcam zzcamVar) throws RemoteException;

    void zzj(IObjectWrapper iObjectWrapper) throws RemoteException;
}
