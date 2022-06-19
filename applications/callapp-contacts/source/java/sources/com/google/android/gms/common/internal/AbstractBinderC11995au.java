package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.p357c.BinderC13162b;
/* renamed from: com.google.android.gms.common.internal.au */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/au.class */
public abstract class AbstractBinderC11995au extends BinderC13162b implements AbstractC11996av {
    /* renamed from: a */
    public static AbstractC11996av m19220a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
        return queryLocalInterface instanceof AbstractC11996av ? (AbstractC11996av) queryLocalInterface : new C11994at(iBinder);
    }
}
