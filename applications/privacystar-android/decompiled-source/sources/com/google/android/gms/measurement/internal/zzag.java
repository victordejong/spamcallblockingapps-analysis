package com.google.android.gms.measurement.internal;

import android.os.IInterface;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzag.class */
public interface zzag extends IInterface {
    List<zzfh> zza(zzh zzhVar, boolean z) throws RemoteException;

    List<zzl> zza(String str, String str2, zzh zzhVar) throws RemoteException;

    List<zzfh> zza(String str, String str2, String str3, boolean z) throws RemoteException;

    List<zzfh> zza(String str, String str2, boolean z, zzh zzhVar) throws RemoteException;

    void zza(long j, String str, String str2, String str3) throws RemoteException;

    void zza(zzad zzadVar, zzh zzhVar) throws RemoteException;

    void zza(zzad zzadVar, String str, String str2) throws RemoteException;

    void zza(zzfh zzfhVar, zzh zzhVar) throws RemoteException;

    void zza(zzh zzhVar) throws RemoteException;

    void zza(zzl zzlVar, zzh zzhVar) throws RemoteException;

    byte[] zza(zzad zzadVar, String str) throws RemoteException;

    void zzb(zzh zzhVar) throws RemoteException;

    void zzb(zzl zzlVar) throws RemoteException;

    String zzc(zzh zzhVar) throws RemoteException;

    void zzd(zzh zzhVar) throws RemoteException;

    List<zzl> zze(String str, String str2, String str3) throws RemoteException;
}
