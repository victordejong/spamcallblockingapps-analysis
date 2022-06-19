package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbfy.class */
public abstract class zzbfy extends zzgy implements zzbfv {
    public static zzbfv zzau(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.measurement.IMeasurementManager");
        return queryLocalInterface instanceof zzbfv ? (zzbfv) queryLocalInterface : new zzbfx(iBinder);
    }
}
