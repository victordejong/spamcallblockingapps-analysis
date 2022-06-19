package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mb0.class */
public abstract class mb0 extends BinderC6649k2 implements nb0 {
    /* renamed from: E6 */
    public static nb0 m13309E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
        return queryLocalInterface instanceof nb0 ? (nb0) queryLocalInterface : new lb0(iBinder);
    }
}
