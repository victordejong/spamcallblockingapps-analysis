package com.google.android.gms.internal.ads_identifier;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads_identifier/zzf.class */
public abstract class zzf extends zzb implements zze {
    /* renamed from: a */
    public static zze m10893a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        return queryLocalInterface instanceof zze ? (zze) queryLocalInterface : new zzg(iBinder);
    }
}
