package com.google.android.play.core.splitinstall;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.play.core.splitinstall.ad */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/ad.class */
public final class C15138ad {

    /* renamed from: a */
    private static final AtomicReference<AbstractC15137ac> f54919a = new AtomicReference<>(null);

    /* renamed from: a */
    public static AbstractC15137ac m9403a() {
        return f54919a.get();
    }

    /* renamed from: a */
    public static void m9402a(AbstractC15137ac abstractC15137ac) {
        f54919a.compareAndSet(null, abstractC15137ac);
    }
}
