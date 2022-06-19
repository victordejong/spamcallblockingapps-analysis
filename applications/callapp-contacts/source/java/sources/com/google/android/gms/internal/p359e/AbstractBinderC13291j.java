package com.google.android.gms.internal.p359e;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.e.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/e/j.class */
public abstract class AbstractBinderC13291j extends BinderC13287f implements AbstractC13290i {
    /* renamed from: a */
    public static AbstractC13290i m13486a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
        return queryLocalInterface instanceof AbstractC13290i ? (AbstractC13290i) queryLocalInterface : new C13292k(iBinder);
    }
}
