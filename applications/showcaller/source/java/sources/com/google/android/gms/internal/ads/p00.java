package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/p00.class */
public abstract class p00 extends BinderC6649k2 implements q00 {
    /* renamed from: E6 */
    public static q00 m12465E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
        return queryLocalInterface instanceof q00 ? (q00) queryLocalInterface : new o00(iBinder);
    }
}
