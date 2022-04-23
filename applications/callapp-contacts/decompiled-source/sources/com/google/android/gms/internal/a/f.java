package com.google.android.gms.internal.a;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/a/f.class */
public abstract class f extends b implements e {
    public static e a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        return queryLocalInterface instanceof e ? (e) queryLocalInterface : new g(iBinder);
    }
}
