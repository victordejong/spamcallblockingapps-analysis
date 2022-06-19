package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzffx.class */
public abstract class zzffx extends zzadk implements zzffy {
    public static zzffy zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.omid.IOmid");
        return queryLocalInterface instanceof zzffy ? (zzffy) queryLocalInterface : new zzffw(iBinder);
    }
}
