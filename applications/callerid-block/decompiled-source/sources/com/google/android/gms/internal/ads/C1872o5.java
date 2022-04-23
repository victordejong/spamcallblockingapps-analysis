package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.internal.ads.o5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/o5.class */
public final class C1872o5 {

    /* renamed from: a */
    private static final AtomicReference<AbstractC1856n5> f7829a = new AtomicReference<>();

    static {
        new AtomicBoolean();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static AbstractC1856n5 m6344a() {
        return f7829a.get();
    }

    /* renamed from: b */
    public static void m6343b(AbstractC1856n5 n5Var) {
        f7829a.set(n5Var);
    }
}
