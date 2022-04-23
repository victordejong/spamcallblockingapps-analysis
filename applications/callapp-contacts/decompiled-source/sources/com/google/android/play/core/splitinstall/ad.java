package com.google.android.play.core.splitinstall;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/ad.class */
public final class ad {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicReference<ac> f31485a = new AtomicReference<>(null);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ac a() {
        return f31485a.get();
    }

    public static void a(ac acVar) {
        f31485a.compareAndSet(null, acVar);
    }
}
