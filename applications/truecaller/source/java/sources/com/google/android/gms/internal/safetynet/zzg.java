package com.google.android.gms.internal.safetynet;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.safetynet.SafeBrowsingData;
import com.google.android.gms.safetynet.zza;
import com.google.android.gms.safetynet.zzd;
import com.google.android.gms.safetynet.zzf;
import com.google.android.gms.safetynet.zzh;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/safetynet/zzg.class */
public interface zzg extends IInterface {
    void zza(Status status) throws RemoteException;

    void zza(Status status, SafeBrowsingData safeBrowsingData) throws RemoteException;

    void zza(Status status, zza zzaVar) throws RemoteException;

    void zza(Status status, zzd zzdVar) throws RemoteException;

    void zza(Status status, zzf zzfVar) throws RemoteException;

    void zza(Status status, zzh zzhVar) throws RemoteException;

    void zza(Status status, boolean z) throws RemoteException;

    void zza(String str) throws RemoteException;

    void zzb(Status status, boolean z) throws RemoteException;
}
