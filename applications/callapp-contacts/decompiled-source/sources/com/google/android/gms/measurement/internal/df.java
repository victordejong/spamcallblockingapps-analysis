package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/df.class */
public interface df extends IInterface {
    List<zzkl> a(zzp zzpVar, boolean z) throws RemoteException;

    List<zzaa> a(String str, String str2, zzp zzpVar) throws RemoteException;

    List<zzaa> a(String str, String str2, String str3) throws RemoteException;

    List<zzkl> a(String str, String str2, String str3, boolean z) throws RemoteException;

    List<zzkl> a(String str, String str2, boolean z, zzp zzpVar) throws RemoteException;

    void a(long j, String str, String str2, String str3) throws RemoteException;

    void a(Bundle bundle, zzp zzpVar) throws RemoteException;

    void a(zzaa zzaaVar) throws RemoteException;

    void a(zzaa zzaaVar, zzp zzpVar) throws RemoteException;

    void a(zzas zzasVar, zzp zzpVar) throws RemoteException;

    void a(zzas zzasVar, String str) throws RemoteException;

    void a(zzkl zzklVar, zzp zzpVar) throws RemoteException;

    void a(zzp zzpVar) throws RemoteException;

    void b(zzp zzpVar) throws RemoteException;

    byte[] b(zzas zzasVar, String str) throws RemoteException;

    String c(zzp zzpVar) throws RemoteException;

    void d(zzp zzpVar) throws RemoteException;

    void e(zzp zzpVar) throws RemoteException;
}
