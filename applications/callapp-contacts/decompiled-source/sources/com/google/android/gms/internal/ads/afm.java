package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/afm.class */
public abstract class afm extends dvd implements afn {
    public static afn a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.measurement.IMeasurementManager");
        return queryLocalInterface instanceof afn ? (afn) queryLocalInterface : new afo(iBinder);
    }
}
