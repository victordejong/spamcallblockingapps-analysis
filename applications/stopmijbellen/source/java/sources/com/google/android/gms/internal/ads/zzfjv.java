package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfjv.class */
public abstract class zzfjv extends zzaok implements zzfjw {
    public static zzfjw zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.omid.IOmid");
        return queryLocalInterface instanceof zzfjw ? (zzfjw) queryLocalInterface : new zzfju(iBinder);
    }
}
