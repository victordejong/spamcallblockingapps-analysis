package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.ads.on */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/on.class */
public final class BinderC3387on extends dkl implements AbstractC3388oo {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.oo] */
    /* renamed from: a */
    public static AbstractC3388oo m7358a(IBinder iBinder) {
        C3390oq c3390oq;
        if (iBinder == null) {
            c3390oq = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
            c3390oq = queryLocalInterface instanceof AbstractC3388oo ? (AbstractC3388oo) queryLocalInterface : new C3390oq(iBinder);
        }
        return c3390oq;
    }
}
