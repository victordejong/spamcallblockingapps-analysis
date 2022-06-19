package com.google.android.gms.internal.ads;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/crc.class */
public abstract class crc<V> extends coz implements Future<V> {
    /* renamed from: b */
    public abstract Future<? extends V> mo10788a();

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return mo10788a().cancel(z);
    }

    @Override // java.util.concurrent.Future
    public V get() {
        return mo10788a().get();
    }

    @Override // java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) {
        return mo10788a().get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return mo10788a().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return mo10788a().isDone();
    }
}
