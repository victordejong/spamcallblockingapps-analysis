package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.ads.yt */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yt.class */
public abstract class AbstractBinderC7194yt extends BinderC6649k2 implements AbstractC7231zt {
    /* renamed from: E6 */
    public static AbstractC7231zt m8687E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener");
        return queryLocalInterface instanceof AbstractC7231zt ? (AbstractC7231zt) queryLocalInterface : new C7157xt(iBinder);
    }
}
