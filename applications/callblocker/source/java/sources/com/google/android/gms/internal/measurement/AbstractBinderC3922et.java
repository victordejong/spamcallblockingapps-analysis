package com.google.android.gms.internal.measurement;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.measurement.et */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/et.class */
public abstract class AbstractBinderC3922et extends BinderC3803as implements AbstractC3831bt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.measurement.bt] */
    /* renamed from: a */
    public static AbstractC3831bt m5589a(IBinder iBinder) {
        C3890du c3890du;
        if (iBinder == null) {
            c3890du = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            c3890du = queryLocalInterface instanceof AbstractC3831bt ? (AbstractC3831bt) queryLocalInterface : new C3890du(iBinder);
        }
        return c3890du;
    }
}
