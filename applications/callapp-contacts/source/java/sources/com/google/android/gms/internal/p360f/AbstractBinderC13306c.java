package com.google.android.gms.internal.p360f;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.f.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/f/c.class */
public abstract class AbstractBinderC13306c extends BinderC13309f implements AbstractC13307d {
    /* renamed from: a */
    public static AbstractC13307d m13368a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.android.vending.billing.IInAppBillingService");
        return queryLocalInterface instanceof AbstractC13307d ? (AbstractC13307d) queryLocalInterface : new C13305b(iBinder);
    }
}
