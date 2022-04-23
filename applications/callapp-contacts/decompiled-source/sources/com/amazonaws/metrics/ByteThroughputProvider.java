package com.amazonaws.metrics;
/* loaded from: classes-dex2jar.jar:com/amazonaws/metrics/ByteThroughputProvider.class */
public abstract class ByteThroughputProvider {

    /* renamed from: a  reason: collision with root package name */
    private long f6670a;

    /* renamed from: b  reason: collision with root package name */
    private int f6671b;

    /* renamed from: c  reason: collision with root package name */
    private final ThroughputMetricType f6672c;

    /* JADX INFO: Access modifiers changed from: protected */
    public ByteThroughputProvider(ThroughputMetricType throughputMetricType) {
        this.f6672c = throughputMetricType;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i, long j) {
        this.f6671b += i;
        this.f6670a += System.nanoTime() - j;
    }

    public final int c() {
        return this.f6671b;
    }

    public final long d() {
        return this.f6670a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void e() {
        this.f6671b = 0;
        this.f6670a = 0L;
    }

    public String toString() {
        return String.format("providerId=%s, throughputType=%s, byteCount=%d, duration=%d", super.toString(), this.f6672c, Integer.valueOf(this.f6671b), Long.valueOf(this.f6670a));
    }
}
