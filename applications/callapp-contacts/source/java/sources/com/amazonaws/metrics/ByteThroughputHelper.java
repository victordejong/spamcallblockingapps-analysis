package com.amazonaws.metrics;

import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/amazonaws/metrics/ByteThroughputHelper.class */
class ByteThroughputHelper extends ByteThroughputProvider {
    public ByteThroughputHelper(ThroughputMetricType throughputMetricType) {
        super(throughputMetricType);
    }

    /* renamed from: a */
    public final long m38576a() {
        if (TimeUnit.NANOSECONDS.toSeconds(m38572d()) > 10) {
            m38575b();
        }
        return System.nanoTime();
    }

    @Override // com.amazonaws.metrics.ByteThroughputProvider
    /* renamed from: a */
    public final void mo38574a(int i, long j) {
        super.mo38574a(i, j);
    }

    /* renamed from: b */
    public final void m38575b() {
        if (m38573c() > 0) {
            AwsSdkMetrics.getServiceMetricCollector();
            m38571e();
        }
    }
}
