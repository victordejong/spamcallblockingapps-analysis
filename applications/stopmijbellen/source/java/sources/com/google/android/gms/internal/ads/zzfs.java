package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Handler;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfs.class */
public final class zzfs {
    private final Context zza;
    private final zzfq zzb;

    public zzfs(Context context, Handler handler, zzfr zzfrVar) {
        this.zza = context.getApplicationContext();
        this.zzb = new zzfq(this, handler, zzfrVar);
    }
}
