package com.google.android.gms.ads.internal.util;

import android.graphics.Bitmap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.ads.internal.util.z0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/z0.class */
public final class C5754z0 {

    /* renamed from: a */
    final Map<Integer, Bitmap> f18604a = new ConcurrentHashMap();

    /* renamed from: b */
    private final AtomicInteger f18605b = new AtomicInteger(0);

    /* renamed from: a */
    public final Bitmap m17908a(Integer num) {
        return this.f18604a.get(num);
    }
}
