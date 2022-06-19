package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzed.class */
public interface zzed extends IInterface {
    void zzd(zzas zzasVar, zzp zzpVar) throws RemoteException;

    void zze(zzkq zzkqVar, zzp zzpVar) throws RemoteException;

    void zzf(zzp zzpVar) throws RemoteException;

    void zzg(zzas zzasVar, String str, String str2) throws RemoteException;

    void zzh(zzp zzpVar) throws RemoteException;

    List<zzkq> zzi(zzp zzpVar, boolean z) throws RemoteException;

    byte[] zzj(zzas zzasVar, String str) throws RemoteException;

    void zzk(long j, String str, String str2, String str3) throws RemoteException;

    String zzl(zzp zzpVar) throws RemoteException;

    void zzm(zzaa zzaaVar, zzp zzpVar) throws RemoteException;

    void zzn(zzaa zzaaVar) throws RemoteException;

    List<zzkq> zzo(String str, String str2, boolean z, zzp zzpVar) throws RemoteException;

    List<zzkq> zzp(String str, String str2, String str3, boolean z) throws RemoteException;

    List<zzaa> zzq(String str, String str2, zzp zzpVar) throws RemoteException;

    List<zzaa> zzr(String str, String str2, String str3) throws RemoteException;

    void zzs(zzp zzpVar) throws RemoteException;

    void zzt(Bundle bundle, zzp zzpVar) throws RemoteException;

    void zzu(zzp zzpVar) throws RemoteException;
}
