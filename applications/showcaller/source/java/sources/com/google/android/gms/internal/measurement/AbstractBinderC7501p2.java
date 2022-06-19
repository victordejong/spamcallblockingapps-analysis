package com.google.android.gms.internal.measurement;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.measurement.p2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/p2.class */
public abstract class AbstractBinderC7501p2 extends BinderC7564u implements AbstractC7502p3 {
    /* renamed from: D0 */
    public static AbstractC7502p3 m7030D0(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
        return queryLocalInterface instanceof AbstractC7502p3 ? (AbstractC7502p3) queryLocalInterface : new C7500p1(iBinder);
    }
}
