package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qp0.class */
public abstract class qp0 extends BinderC6649k2 implements rp0 {
    /* renamed from: E6 */
    public static rp0 m11829E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.measurement.IMeasurementManager");
        return queryLocalInterface instanceof rp0 ? (rp0) queryLocalInterface : new pp0(iBinder);
    }
}
