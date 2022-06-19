package com.google.android.gms.internal.auth;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.auth.m */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/m.class */
public abstract class AbstractBinderC7268m extends BinderC7265j implements AbstractC7267l {
    /* renamed from: c0 */
    public static AbstractC7267l m7825c0(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.auth.IAuthManagerService");
        return queryLocalInterface instanceof AbstractC7267l ? (AbstractC7267l) queryLocalInterface : new C7269n(iBinder);
    }
}
