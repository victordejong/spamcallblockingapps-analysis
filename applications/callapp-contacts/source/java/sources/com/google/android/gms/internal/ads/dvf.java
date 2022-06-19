package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dvf.class */
public abstract class dvf extends dvd implements dvg {
    /* renamed from: a */
    public static dvg m15670a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.clearcut.IClearcut");
        return queryLocalInterface instanceof dvg ? (dvg) queryLocalInterface : new dvh(iBinder);
    }
}
