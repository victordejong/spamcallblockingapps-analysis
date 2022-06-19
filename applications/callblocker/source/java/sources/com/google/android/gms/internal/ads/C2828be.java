package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.internal.ads.be */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/be.class */
public final class C2828be {

    /* renamed from: b */
    private static final AtomicReference<AbstractC2825bb> f11056b = new AtomicReference<>();

    /* renamed from: a */
    static final AtomicBoolean f11055a = new AtomicBoolean();

    /* renamed from: a */
    public static AbstractC2825bb m12046a() {
        return f11056b.get();
    }

    /* renamed from: a */
    public static void m12045a(AbstractC2825bb abstractC2825bb) {
        f11056b.set(abstractC2825bb);
    }
}
