package com.google.android.gms.ads.internal.util;

import android.graphics.Bitmap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbo.class */
public final class zzbo {
    private Map<Integer, Bitmap> zzegp = new ConcurrentHashMap();
    private AtomicInteger zzegq = new AtomicInteger(0);

    public final Bitmap zza(Integer num) {
        return this.zzegp.get(num);
    }
}
