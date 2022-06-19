package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.WeakHashMap;
import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdy.class */
public final class zzcdy {
    private final WeakHashMap<Context, zzcdx> zza = new WeakHashMap<>();

    public final Future<zzcdv> zzb(Context context) {
        return zzcjm.zza.zzb(new zzcdw(this, context));
    }
}
