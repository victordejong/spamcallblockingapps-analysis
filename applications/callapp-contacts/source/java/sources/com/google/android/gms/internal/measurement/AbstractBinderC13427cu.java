package com.google.android.gms.internal.measurement;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.measurement.cu */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/cu.class */
public abstract class AbstractBinderC13427cu extends BinderC13719v implements AbstractC13454du {
    /* renamed from: a */
    public static AbstractC13454du m12929a(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
        return queryLocalInterface instanceof AbstractC13454du ? (AbstractC13454du) queryLocalInterface : new C13399bt(iBinder);
    }
}
