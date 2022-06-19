package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.internal.ads.dc */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dc.class */
public final class C12320dc {

    /* renamed from: b */
    private static final AtomicReference<AbstractC12298da> f46933b = new AtomicReference<>();

    /* renamed from: a */
    static final AtomicBoolean f46932a = new AtomicBoolean();

    /* renamed from: a */
    public static AbstractC12298da m16888a() {
        return f46933b.get();
    }

    /* renamed from: a */
    public static void m16887a(AbstractC12298da abstractC12298da) {
        f46933b.set(abstractC12298da);
    }
}
