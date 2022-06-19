package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.internal.ads.xb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xb.class */
public final class C3618xb {

    /* renamed from: a */
    private Map<Integer, Bitmap> f17578a = new ConcurrentHashMap();

    /* renamed from: b */
    private AtomicInteger f17579b = new AtomicInteger(0);

    /* renamed from: a */
    public final Bitmap m6842a(Integer num) {
        return this.f17578a.get(num);
    }
}
