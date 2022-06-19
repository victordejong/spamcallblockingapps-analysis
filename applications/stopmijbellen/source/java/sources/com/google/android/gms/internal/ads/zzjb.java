package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.PowerManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzjb.class */
final class zzjb {
    private final PowerManager zza;

    public zzjb(Context context) {
        this.zza = (PowerManager) context.getApplicationContext().getSystemService("power");
    }
}
