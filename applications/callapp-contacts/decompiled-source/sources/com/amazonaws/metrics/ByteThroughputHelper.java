package com.amazonaws.metrics;

import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/amazonaws/metrics/ByteThroughputHelper.class */
class ByteThroughputHelper extends ByteThroughputProvider {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ByteThroughputHelper(ThroughputMetricType throughputMetricType) {
        super(throughputMetricType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long a() {
        if (TimeUnit.NANOSECONDS.toSeconds(d()) > 10) {
            b();
        }
        return System.nanoTime();
    }

    @Override // com.amazonaws.metrics.ByteThroughputProvider
    public final void a(int i, long j) {
        super.a(i, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        if (c() > 0) {
            AwsSdkMetrics.getServiceMetricCollector();
            e();
        }
    }
}
