package com.google.android.gms.internal.ads;

import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cry.class */
final class cry<V> extends cre<V> implements crt<V>, ScheduledFuture<V> {

    /* renamed from: a */
    private final ScheduledFuture<?> f13625a;

    public cry(crt<V> crtVar, ScheduledFuture<?> scheduledFuture) {
        super(crtVar);
        this.f13625a = scheduledFuture;
    }

    @Override // com.google.android.gms.internal.ads.crc, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean cancel = super.cancel(z);
        if (cancel) {
            this.f13625a.cancel(z);
        }
        return cancel;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Delayed delayed) {
        return this.f13625a.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.f13625a.getDelay(timeUnit);
    }
}
