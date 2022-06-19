package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.RuntimeRemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/CameraUpdateFactory.class */
public final class CameraUpdateFactory {

    /* renamed from: a */
    public static ICameraUpdateFactoryDelegate f6236a;

    private CameraUpdateFactory() {
    }

    /* renamed from: a */
    public static CameraUpdate m38710a(CameraPosition cameraPosition) {
        try {
            return new CameraUpdate(m38709b().m38698G0(cameraPosition));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: b */
    public static ICameraUpdateFactoryDelegate m38709b() {
        ICameraUpdateFactoryDelegate iCameraUpdateFactoryDelegate = f6236a;
        Preconditions.m38897k(iCameraUpdateFactoryDelegate, "CameraUpdateFactory is not initialized");
        return iCameraUpdateFactoryDelegate;
    }
}
