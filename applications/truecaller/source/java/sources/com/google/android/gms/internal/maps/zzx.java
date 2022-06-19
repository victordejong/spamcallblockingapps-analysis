package com.google.android.gms.internal.maps;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/maps/zzx.class */
public abstract class zzx extends zzb implements zzw {
    public static zzw zzh(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        return queryLocalInterface instanceof zzw ? (zzw) queryLocalInterface : new zzy(iBinder);
    }
}
