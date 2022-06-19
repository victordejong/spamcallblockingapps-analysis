package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ah0.class */
public abstract class ah0 extends BinderC6649k2 implements bh0 {
    /* renamed from: E6 */
    public static bh0 m16606E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator");
        return queryLocalInterface instanceof bh0 ? (bh0) queryLocalInterface : new zg0(iBinder);
    }
}
