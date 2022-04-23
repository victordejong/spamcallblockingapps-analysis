package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.maps.a.a;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.RuntimeRemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static a f29362a;

    private b() {
    }

    public static a a(LatLng latLng, float f) {
        try {
            return new a(((a) o.a(f29362a, "CameraUpdateFactory is not initialized")).a(latLng, f));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
