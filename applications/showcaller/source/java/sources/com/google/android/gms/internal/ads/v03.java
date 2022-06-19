package com.google.android.gms.internal.ads;

import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/v03.class */
final class v03<V> extends d03<V> implements ScheduledFuture<V>, r03 {

    /* renamed from: e */
    private final ScheduledFuture<?> f31039e;

    public v03(r03<V> r03Var, ScheduledFuture<?> scheduledFuture) {
        super(r03Var);
        this.f31039e = scheduledFuture;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean cancel = mo15973f().cancel(z);
        if (cancel) {
            this.f31039e.cancel(z);
        }
        return cancel;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Delayed delayed) {
        return this.f31039e.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.f31039e.getDelay(timeUnit);
    }
}
