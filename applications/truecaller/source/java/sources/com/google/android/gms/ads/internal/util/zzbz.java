package com.google.android.gms.ads.internal.util;

import android.graphics.Bitmap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbz.class */
public final class zzbz {
    public final Map<Integer, Bitmap> zza = new ConcurrentHashMap();
    private final AtomicInteger zzb = new AtomicInteger(0);

    public final Bitmap zza(Integer num) {
        return this.zza.get(num);
    }
}
