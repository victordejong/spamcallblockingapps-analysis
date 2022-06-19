package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzavm.class */
public interface zzavm extends IInterface {
    Bundle getAdMetadata() throws RemoteException;

    String getMediationAdapterClassName() throws RemoteException;

    boolean isLoaded() throws RemoteException;

    void setImmersiveMode(boolean z) throws RemoteException;

    void zza(IObjectWrapper iObjectWrapper, boolean z) throws RemoteException;

    void zza(zzavr zzavrVar) throws RemoteException;

    void zza(zzavz zzavzVar) throws RemoteException;

    void zza(zzawh zzawhVar) throws RemoteException;

    void zza(zzvl zzvlVar, zzavu zzavuVar) throws RemoteException;

    void zza(zzyr zzyrVar) throws RemoteException;

    void zza(zzyw zzywVar) throws RemoteException;

    void zzb(zzvl zzvlVar, zzavu zzavuVar) throws RemoteException;

    void zze(IObjectWrapper iObjectWrapper) throws RemoteException;

    zzyx zzki() throws RemoteException;

    zzavl zzrv() throws RemoteException;
}
