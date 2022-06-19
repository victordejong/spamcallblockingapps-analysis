package com.google.android.play.core.splitinstall;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.play.core.splitinstall.j */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/splitinstall/j.class */
public final class C8563j {

    /* renamed from: a */
    private static final AtomicReference<AbstractC8562i> f38149a = new AtomicReference<>(null);

    /* renamed from: a */
    public static void m3340a(AbstractC8562i abstractC8562i) {
        f38149a.compareAndSet(null, abstractC8562i);
    }
}
