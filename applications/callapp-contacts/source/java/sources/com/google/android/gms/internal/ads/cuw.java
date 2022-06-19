package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cuw.class */
public abstract class cuw extends dvd implements cut {
    /* renamed from: a */
    public static cut m17196a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.omid.IOmid");
        return queryLocalInterface instanceof cut ? (cut) queryLocalInterface : new cuv(iBinder);
    }
}
