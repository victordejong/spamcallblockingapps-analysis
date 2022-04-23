package com.google.android.gms.internal.ads;

import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbz.class */
final class dbz<V> extends dbf<V> implements dbt<V>, ScheduledFuture<V> {

    /* renamed from: a  reason: collision with root package name */
    private final ScheduledFuture<?> f26712a;

    public dbz(dbt<V> dbtVar, ScheduledFuture<?> scheduledFuture) {
        super(dbtVar);
        this.f26712a = scheduledFuture;
    }

    @Override // com.google.android.gms.internal.ads.dbd, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean cancel = super.cancel(z);
        if (cancel) {
            this.f26712a.cancel(z);
        }
        return cancel;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Delayed delayed) {
        return this.f26712a.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.f26712a.getDelay(timeUnit);
    }
}
