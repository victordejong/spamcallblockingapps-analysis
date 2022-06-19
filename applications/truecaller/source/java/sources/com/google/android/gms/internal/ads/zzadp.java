package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Handler;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzadp.class */
public final class zzadp {
    private final Context zza;
    private final zzadn zzb;

    public zzadp(Context context, Handler handler, zzado zzadoVar) {
        this.zza = context.getApplicationContext();
        this.zzb = new zzadn(this, handler, zzadoVar);
    }
}
