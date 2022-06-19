package com.google.android.gms.internal.p134a;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.a.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/a/f.class */
public abstract class AbstractBinderC2757f extends BinderC2753b implements AbstractC2756e {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.a.e] */
    /* renamed from: a */
    public static AbstractC2756e m13765a(IBinder iBinder) {
        C2758g c2758g;
        if (iBinder == null) {
            c2758g = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            c2758g = queryLocalInterface instanceof AbstractC2756e ? (AbstractC2756e) queryLocalInterface : new C2758g(iBinder);
        }
        return c2758g;
    }
}
