package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzdz.class */
public interface zzdz extends IInterface {
    void zzd(zzas zzasVar, zzp zzpVar) throws RemoteException;

    void zze(zzkg zzkgVar, zzp zzpVar) throws RemoteException;

    void zzf(zzp zzpVar) throws RemoteException;

    void zzg(zzas zzasVar, String str, String str2) throws RemoteException;

    void zzh(zzp zzpVar) throws RemoteException;

    List<zzkg> zzi(zzp zzpVar, boolean z) throws RemoteException;

    byte[] zzj(zzas zzasVar, String str) throws RemoteException;

    void zzk(long j, String str, String str2, String str3) throws RemoteException;

    String zzl(zzp zzpVar) throws RemoteException;

    void zzm(zzaa zzaaVar, zzp zzpVar) throws RemoteException;

    void zzn(zzaa zzaaVar) throws RemoteException;

    List<zzkg> zzo(String str, String str2, boolean z, zzp zzpVar) throws RemoteException;

    List<zzkg> zzp(String str, String str2, String str3, boolean z) throws RemoteException;

    List<zzaa> zzq(String str, String str2, zzp zzpVar) throws RemoteException;

    List<zzaa> zzr(String str, String str2, String str3) throws RemoteException;

    void zzs(zzp zzpVar) throws RemoteException;

    void zzt(Bundle bundle, zzp zzpVar) throws RemoteException;

    void zzu(zzp zzpVar) throws RemoteException;
}
