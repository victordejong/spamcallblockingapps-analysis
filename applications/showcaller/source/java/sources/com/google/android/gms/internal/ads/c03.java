package com.google.android.gms.internal.ads;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/c03.class */
public abstract class c03<V> extends ww2 implements Future<V> {
    /* renamed from: f */
    public abstract Future<? extends V> mo15973f();

    @Override // java.util.concurrent.Future
    public final V get() {
        return mo15973f().get();
    }

    @Override // java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) {
        return mo15973f().get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return mo15973f().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return mo15973f().isDone();
    }
}
