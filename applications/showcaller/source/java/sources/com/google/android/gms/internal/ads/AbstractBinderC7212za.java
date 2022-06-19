package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.ads.za */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/za.class */
public abstract class AbstractBinderC7212za extends BinderC6649k2 implements AbstractC6286ab {
    /* renamed from: E6 */
    public static AbstractC6286ab m8475E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.clearcut.IClearcut");
        return queryLocalInterface instanceof AbstractC6286ab ? (AbstractC6286ab) queryLocalInterface : new C7175ya(iBinder);
    }
}
