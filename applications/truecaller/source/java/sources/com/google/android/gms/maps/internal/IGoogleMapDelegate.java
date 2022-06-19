package com.google.android.gms.maps.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.maps.zzt;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.MapStyleOptions;
import com.google.android.gms.maps.model.MarkerOptions;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/internal/IGoogleMapDelegate.class */
public interface IGoogleMapDelegate extends IInterface {
    /* renamed from: B */
    zzt m38695B(MarkerOptions markerOptions) throws RemoteException;

    /* renamed from: L */
    void m38694L(zzaj zzajVar) throws RemoteException;

    /* renamed from: Y0 */
    void m38693Y0(IObjectWrapper iObjectWrapper) throws RemoteException;

    void clear() throws RemoteException;

    /* renamed from: d1 */
    boolean m38692d1(MapStyleOptions mapStyleOptions) throws RemoteException;

    /* renamed from: h0 */
    IUiSettingsDelegate m38691h0() throws RemoteException;

    /* renamed from: m0 */
    void m38690m0(zzh zzhVar) throws RemoteException;

    /* renamed from: n1 */
    void m38689n1(float f) throws RemoteException;

    /* renamed from: o */
    void m38688o(zzn zznVar) throws RemoteException;

    /* renamed from: w */
    void m38687w(IObjectWrapper iObjectWrapper) throws RemoteException;

    /* renamed from: y0 */
    CameraPosition m38686y0() throws RemoteException;

    /* renamed from: z0 */
    void m38685z0(zzab zzabVar) throws RemoteException;
}
