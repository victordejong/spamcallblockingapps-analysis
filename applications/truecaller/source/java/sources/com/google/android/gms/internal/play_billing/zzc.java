package com.google.android.gms.internal.play_billing;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/play_billing/zzc.class */
public abstract class zzc extends zzf implements zzd {
    public static zzd zzn(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.android.vending.billing.IInAppBillingService");
        return queryLocalInterface instanceof zzd ? (zzd) queryLocalInterface : new zzb(iBinder);
    }
}
