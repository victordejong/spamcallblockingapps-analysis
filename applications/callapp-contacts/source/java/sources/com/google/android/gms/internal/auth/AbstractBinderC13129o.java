package com.google.android.gms.internal.auth;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.auth.o */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth/o.class */
public abstract class AbstractBinderC13129o extends BinderC13125k implements AbstractC13128n {
    /* renamed from: a */
    public static AbstractC13128n m13617a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.auth.IAuthManagerService");
        return queryLocalInterface instanceof AbstractC13128n ? (AbstractC13128n) queryLocalInterface : new C13130p(iBinder);
    }
}
