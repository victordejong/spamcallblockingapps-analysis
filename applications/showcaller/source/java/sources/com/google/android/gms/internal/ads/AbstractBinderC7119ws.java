package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.ads.ws */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ws.class */
public abstract class AbstractBinderC7119ws extends BinderC6649k2 implements AbstractC7156xs {
    /* renamed from: E6 */
    public static AbstractC7156xs m9477E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
        return queryLocalInterface instanceof AbstractC7156xs ? (AbstractC7156xs) queryLocalInterface : new C7082vs(iBinder);
    }
}
