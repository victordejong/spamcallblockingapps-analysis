package com.google.android.gms.internal.maps;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/maps/zzi.class */
public abstract class zzi extends zzb implements zzh {
    public static zzh zzc(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        return queryLocalInterface instanceof zzh ? (zzh) queryLocalInterface : new zzj(iBinder);
    }
}
