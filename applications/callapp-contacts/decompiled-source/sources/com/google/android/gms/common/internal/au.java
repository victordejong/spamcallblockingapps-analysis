package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.c.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/au.class */
public abstract class au extends b implements av {
    public static av a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
        return queryLocalInterface instanceof av ? (av) queryLocalInterface : new at(iBinder);
    }
}
