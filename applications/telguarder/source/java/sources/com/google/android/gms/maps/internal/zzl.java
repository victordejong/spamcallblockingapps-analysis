package com.google.android.gms.maps.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.maps.model.CameraPosition;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/internal/zzl.class */
public interface zzl extends IInterface {
    void onCameraChange(CameraPosition cameraPosition) throws RemoteException;
}
