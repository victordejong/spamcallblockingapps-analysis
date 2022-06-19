package com.amazonaws.metrics;
/* loaded from: classes-dex2jar.jar:com/amazonaws/metrics/ByteThroughputProvider.class */
public abstract class ByteThroughputProvider {

    /* renamed from: a */
    private long f12125a;

    /* renamed from: b */
    private int f12126b;

    /* renamed from: c */
    private final ThroughputMetricType f12127c;

    public ByteThroughputProvider(ThroughputMetricType throughputMetricType) {
        this.f12127c = throughputMetricType;
    }

    /* renamed from: a */
    public void mo38574a(int i, long j) {
        this.f12126b += i;
        this.f12125a += System.nanoTime() - j;
    }

    /* renamed from: c */
    public final int m38573c() {
        return this.f12126b;
    }

    /* renamed from: d */
    public final long m38572d() {
        return this.f12125a;
    }

    /* renamed from: e */
    public final void m38571e() {
        this.f12126b = 0;
        this.f12125a = 0L;
    }

    public String toString() {
        return String.format("providerId=%s, throughputType=%s, byteCount=%d, duration=%d", super.toString(), this.f12127c, Integer.valueOf(this.f12126b), Long.valueOf(this.f12125a));
    }
}
