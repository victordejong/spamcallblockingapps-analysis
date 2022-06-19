package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.ads.ot */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ot.class */
public abstract class AbstractBinderC6824ot extends BinderC6649k2 implements AbstractC6861pt {
    /* renamed from: E6 */
    public static AbstractC6861pt m12533E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMuteThisAdListener");
        return queryLocalInterface instanceof AbstractC6861pt ? (AbstractC6861pt) queryLocalInterface : new C6787nt(iBinder);
    }
}
