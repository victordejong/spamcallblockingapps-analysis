package com.google.android.gms.internal.clearcut;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.clearcut.zzc;
import com.google.android.gms.clearcut.zze;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzl.class */
public interface zzl extends IInterface {
    /* renamed from: a */
    void mo10552a(Status status, long j) throws RemoteException;

    /* renamed from: a */
    void mo10551a(Status status, zzc zzcVar) throws RemoteException;

    /* renamed from: a */
    void mo10550a(Status status, zze[] zzeVarArr) throws RemoteException;

    /* renamed from: a */
    void mo10549a(DataHolder dataHolder) throws RemoteException;

    /* renamed from: b */
    void mo10548b(Status status) throws RemoteException;

    /* renamed from: b */
    void mo10547b(Status status, long j) throws RemoteException;

    /* renamed from: b */
    void mo10546b(Status status, zzc zzcVar) throws RemoteException;

    /* renamed from: d */
    void mo10545d(Status status) throws RemoteException;

    /* renamed from: f */
    void mo10544f(Status status) throws RemoteException;
}
