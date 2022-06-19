package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.ads.fx */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fx.class */
public abstract class AbstractBinderC6494fx extends BinderC6649k2 implements AbstractC6531gx {
    /* renamed from: E6 */
    public static AbstractC6531gx m15029E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
        return queryLocalInterface instanceof AbstractC6531gx ? (AbstractC6531gx) queryLocalInterface : new C6457ex(iBinder);
    }
}
