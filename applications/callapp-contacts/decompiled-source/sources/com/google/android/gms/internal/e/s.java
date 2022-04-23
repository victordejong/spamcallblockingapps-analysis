package com.google.android.gms.internal.e;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/e/s.class */
public abstract class s extends f implements r {
    public static r a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        return queryLocalInterface instanceof r ? (r) queryLocalInterface : new t(iBinder);
    }
}
