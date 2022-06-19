package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import p078c.p084c.p085a.p086a.p088b.p091c.BinderC1848b;
/* renamed from: com.google.android.gms.common.internal.u0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/u0.class */
public abstract class AbstractBinderC6180u0 extends BinderC1848b implements AbstractC6183v0 {
    /* renamed from: D0 */
    public static AbstractC6183v0 m16916D0(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
        return queryLocalInterface instanceof AbstractC6183v0 ? (AbstractC6183v0) queryLocalInterface : new C6173t0(iBinder);
    }
}
