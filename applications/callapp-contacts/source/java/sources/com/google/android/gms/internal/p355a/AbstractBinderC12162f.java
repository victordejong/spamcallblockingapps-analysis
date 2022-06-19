package com.google.android.gms.internal.p355a;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.a.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/a/f.class */
public abstract class AbstractBinderC12162f extends BinderC12158b implements AbstractC12161e {
    /* renamed from: a */
    public static AbstractC12161e m18957a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        return queryLocalInterface instanceof AbstractC12161e ? (AbstractC12161e) queryLocalInterface : new C12163g(iBinder);
    }
}
