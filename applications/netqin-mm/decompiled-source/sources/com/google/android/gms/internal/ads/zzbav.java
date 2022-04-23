package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbav.class */
public final class zzbav {

    /* renamed from: a */
    public Map<Integer, Bitmap> f24717a = new ConcurrentHashMap();

    public zzbav() {
        new AtomicInteger(0);
    }

    /* renamed from: a */
    public final Bitmap m15932a(Integer num) {
        return this.f24717a.get(num);
    }
}
