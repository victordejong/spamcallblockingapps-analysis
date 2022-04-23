package com.google.android.gms.ads.internal.util;

import android.graphics.Bitmap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.ads.internal.util.j0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/j0.class */
public final class C1427j0 {

    /* renamed from: a */
    final Map<Integer, Bitmap> f5580a = new ConcurrentHashMap();

    public C1427j0() {
        new AtomicInteger(0);
    }

    /* renamed from: a */
    public final Bitmap m8822a(Integer num) {
        return this.f5580a.get(num);
    }
}
