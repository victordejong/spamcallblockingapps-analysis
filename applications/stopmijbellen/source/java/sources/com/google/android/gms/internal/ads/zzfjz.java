package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfjz.class */
public final class zzfjz {
    private boolean zza;

    public final void zza(Context context) {
        zzfli.zzb(context, "Application Context cannot be null");
        if (!this.zza) {
            this.zza = true;
            zzfkw.zzb().zzc(context);
            zzfkr.zza().zzc(context);
            zzflg.zzf(context);
            zzfkt.zzb().zzc(context);
        }
    }

    public final boolean zzb() {
        return this.zza;
    }
}
