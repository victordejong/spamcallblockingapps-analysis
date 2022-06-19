package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaxy.class */
public interface zzaxy extends IInterface {
    void zza(IObjectWrapper iObjectWrapper, zzaye zzayeVar, zzaxx zzaxxVar) throws RemoteException;

    void zza(zzasq zzasqVar) throws RemoteException;

    void zza(List<Uri> list, IObjectWrapper iObjectWrapper, zzasj zzasjVar) throws RemoteException;

    void zzan(IObjectWrapper iObjectWrapper) throws RemoteException;

    IObjectWrapper zzao(IObjectWrapper iObjectWrapper) throws RemoteException;

    IObjectWrapper zzb(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException;

    void zzb(List<Uri> list, IObjectWrapper iObjectWrapper, zzasj zzasjVar) throws RemoteException;
}
