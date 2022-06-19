package com.google.android.gms.maps.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate.class */
public interface ICameraUpdateFactoryDelegate extends IInterface {
    /* renamed from: G0 */
    IObjectWrapper m38698G0(CameraPosition cameraPosition) throws RemoteException;

    /* renamed from: Q0 */
    IObjectWrapper m38697Q0(LatLng latLng, float f) throws RemoteException;

    /* renamed from: X0 */
    IObjectWrapper m38696X0(LatLng latLng) throws RemoteException;
}
