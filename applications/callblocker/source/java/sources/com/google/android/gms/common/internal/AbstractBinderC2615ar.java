package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.p138e.BinderC3719a;
/* renamed from: com.google.android.gms.common.internal.ar */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ar.class */
public abstract class AbstractBinderC2615ar extends BinderC3719a implements AbstractC2616as {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.common.internal.as] */
    /* renamed from: a */
    public static AbstractC2616as m14116a(IBinder iBinder) {
        C2617at c2617at;
        if (iBinder == null) {
            c2617at = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
            c2617at = queryLocalInterface instanceof AbstractC2616as ? (AbstractC2616as) queryLocalInterface : new C2617at(iBinder);
        }
        return c2617at;
    }
}
