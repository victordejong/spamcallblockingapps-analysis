package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfkt.class */
public final class zzfkt {
    @SuppressLint({"StaticFieldLeak"})
    private static final zzfkt zza = new zzfkt();
    private Context zzb;

    private zzfkt() {
    }

    public static zzfkt zzb() {
        return zza;
    }

    public final Context zza() {
        return this.zzb;
    }

    public final void zzc(Context context) {
        this.zzb = context != null ? context.getApplicationContext() : null;
    }
}
