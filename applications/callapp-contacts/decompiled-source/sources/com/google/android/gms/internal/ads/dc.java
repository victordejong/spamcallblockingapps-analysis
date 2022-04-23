package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dc.class */
public final class dc {

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicReference<da> f26714b = new AtomicReference<>();

    /* renamed from: a  reason: collision with root package name */
    static final AtomicBoolean f26713a = new AtomicBoolean();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static da a() {
        return f26714b.get();
    }

    public static void a(da daVar) {
        f26714b.set(daVar);
    }
}
