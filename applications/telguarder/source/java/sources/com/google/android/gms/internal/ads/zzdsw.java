package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdsw.class */
public abstract class zzdsw extends zzgy implements zzdst {
    public static zzdst zzav(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.omid.IOmid");
        return queryLocalInterface instanceof zzdst ? (zzdst) queryLocalInterface : new zzdsv(iBinder);
    }
}
