package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.internal.ads.oy */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/oy.class */
public final class C6829oy {

    /* renamed from: a */
    private static final AtomicReference<AbstractC6792ny> f27778a = new AtomicReference<>();

    /* renamed from: b */
    static final AtomicBoolean f27779b = new AtomicBoolean();

    /* renamed from: a */
    public static AbstractC6792ny m12476a() {
        return f27778a.get();
    }

    /* renamed from: b */
    public static void m12475b(AbstractC6792ny abstractC6792ny) {
        f27778a.set(abstractC6792ny);
    }
}
