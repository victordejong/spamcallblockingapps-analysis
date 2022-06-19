package com.google.android.gms.internal.p359e;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.e.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/e/p.class */
public abstract class AbstractBinderC13297p extends BinderC13287f implements AbstractC13296o {
    /* renamed from: a */
    public static AbstractC13296o m13446a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IIndoorLevelDelegate");
        return queryLocalInterface instanceof AbstractC13296o ? (AbstractC13296o) queryLocalInterface : new C13298q(iBinder);
    }
}
