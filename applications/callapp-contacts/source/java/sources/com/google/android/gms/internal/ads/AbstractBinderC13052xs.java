package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.ads.xs */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/xs.class */
public abstract class AbstractBinderC13052xs extends dvd implements AbstractC13053xt {
    /* renamed from: a */
    public static AbstractC13053xt m13991a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator");
        return queryLocalInterface instanceof AbstractC13053xt ? (AbstractC13053xt) queryLocalInterface : new C13054xu(iBinder);
    }
}
