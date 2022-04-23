package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaew.class */
public interface zzaew extends IInterface {
    /* renamed from: C */
    String mo14238C() throws RemoteException;

    /* renamed from: a */
    String mo14237a() throws RemoteException;

    /* renamed from: a */
    void mo14236a(Bundle bundle) throws RemoteException;

    /* renamed from: b */
    boolean mo14235b(Bundle bundle) throws RemoteException;

    /* renamed from: d */
    zzadw mo14234d() throws RemoteException;

    void destroy() throws RemoteException;

    /* renamed from: e */
    String mo14233e() throws RemoteException;

    /* renamed from: e */
    void mo14232e(Bundle bundle) throws RemoteException;

    /* renamed from: f */
    String mo14231f() throws RemoteException;

    /* renamed from: g */
    String mo14230g() throws RemoteException;

    Bundle getExtras() throws RemoteException;

    zzyo getVideoController() throws RemoteException;

    /* renamed from: h */
    IObjectWrapper mo14229h() throws RemoteException;

    /* renamed from: i */
    List mo14228i() throws RemoteException;

    /* renamed from: p0 */
    zzaee mo14227p0() throws RemoteException;

    /* renamed from: v */
    IObjectWrapper mo14226v() throws RemoteException;
}
