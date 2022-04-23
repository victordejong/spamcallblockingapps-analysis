package com.google.android.gms.internal.e;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/e/p.class */
public abstract class p extends f implements o {
    public static o a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IIndoorLevelDelegate");
        return queryLocalInterface instanceof o ? (o) queryLocalInterface : new q(iBinder);
    }
}
