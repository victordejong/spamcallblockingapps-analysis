package com.google.android.gms.internal.measurement;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/cu.class */
public abstract class cu extends v implements du {
    public static du a(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
        return queryLocalInterface instanceof du ? (du) queryLocalInterface : new bt(iBinder);
    }
}
