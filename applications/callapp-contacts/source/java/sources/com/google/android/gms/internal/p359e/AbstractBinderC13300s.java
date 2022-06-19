package com.google.android.gms.internal.p359e;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.e.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/e/s.class */
public abstract class AbstractBinderC13300s extends BinderC13287f implements AbstractC13299r {
    /* renamed from: a */
    public static AbstractC13299r m13440a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        return queryLocalInterface instanceof AbstractC13299r ? (AbstractC13299r) queryLocalInterface : new C13301t(iBinder);
    }
}
