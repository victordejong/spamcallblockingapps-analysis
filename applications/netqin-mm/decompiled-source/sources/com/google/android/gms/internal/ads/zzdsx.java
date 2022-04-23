package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdsx.class */
public abstract class zzdsx extends zzgt implements zzdsy {
    /* renamed from: a */
    public static zzdsy m13232a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.omid.IOmid");
        return queryLocalInterface instanceof zzdsy ? (zzdsy) queryLocalInterface : new zzdsz(iBinder);
    }
}
