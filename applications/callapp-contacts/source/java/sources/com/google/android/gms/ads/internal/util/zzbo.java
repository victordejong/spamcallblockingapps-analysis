package com.google.android.gms.ads.internal.util;

import android.graphics.Bitmap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbo.class */
public final class zzbo {
    private Map<Integer, Bitmap> zzeis = new ConcurrentHashMap();
    private AtomicInteger zzeit = new AtomicInteger(0);

    public final Bitmap zza(Integer num) {
        return this.zzeis.get(num);
    }
}
