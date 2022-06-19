package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzhb.class */
public interface zzhb extends IInterface {
    void log() throws RemoteException;

    void zza(IObjectWrapper iObjectWrapper, String str) throws RemoteException;

    void zza(IObjectWrapper iObjectWrapper, String str, String str2) throws RemoteException;

    void zza(int[] iArr) throws RemoteException;

    void zzc(byte[] bArr) throws RemoteException;

    void zzs(int i) throws RemoteException;

    void zzt(int i) throws RemoteException;
}
