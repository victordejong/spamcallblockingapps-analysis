package com.google.android.gms.internal;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/m.class */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicReference<m> f4214a = new AtomicReference<>();

    m() {
    }

    public static m a() {
        f4214a.compareAndSet(null, new m());
        return f4214a.get();
    }

    public static void b() {
    }
}
