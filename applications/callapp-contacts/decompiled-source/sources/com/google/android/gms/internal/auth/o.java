package com.google.android.gms.internal.auth;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth/o.class */
public abstract class o extends k implements n {
    public static n a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.auth.IAuthManagerService");
        return queryLocalInterface instanceof n ? (n) queryLocalInterface : new p(iBinder);
    }
}
