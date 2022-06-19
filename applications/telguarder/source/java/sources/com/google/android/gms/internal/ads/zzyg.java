package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzyg.class */
public interface zzyg extends IInterface {
    String getVersionString() throws RemoteException;

    void initialize() throws RemoteException;

    void setAppMuted(boolean z) throws RemoteException;

    void setAppVolume(float f) throws RemoteException;

    void zza(zzaao zzaaoVar) throws RemoteException;

    void zza(zzajk zzajkVar) throws RemoteException;

    void zza(zzane zzaneVar) throws RemoteException;

    void zza(String str, IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzb(IObjectWrapper iObjectWrapper, String str) throws RemoteException;

    void zzcd(String str) throws RemoteException;

    void zzce(String str) throws RemoteException;

    float zzra() throws RemoteException;

    boolean zzrb() throws RemoteException;

    List<zzajh> zzrc() throws RemoteException;

    void zzrd() throws RemoteException;
}
