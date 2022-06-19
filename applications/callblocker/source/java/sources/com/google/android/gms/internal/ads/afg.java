package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/afg.class */
public abstract class afg extends dkl implements afd {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.afd] */
    /* renamed from: a */
    public static afd m13410a(IBinder iBinder) {
        aff affVar;
        if (iBinder == null) {
            affVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.measurement.IMeasurementManager");
            affVar = queryLocalInterface instanceof afd ? (afd) queryLocalInterface : new aff(iBinder);
        }
        return affVar;
    }
}
