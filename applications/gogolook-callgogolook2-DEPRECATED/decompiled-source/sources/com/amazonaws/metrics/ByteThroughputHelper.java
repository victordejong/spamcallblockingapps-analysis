package com.amazonaws.metrics;

import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/amazonaws/metrics/ByteThroughputHelper.class */
public class ByteThroughputHelper extends ByteThroughputProvider {
    public ByteThroughputHelper(ThroughputMetricType throughputMetricType) {
        super(throughputMetricType);
    }

    @Override // com.amazonaws.metrics.ByteThroughputProvider
    public void increment(int i, long j) {
        super.increment(i, j);
    }

    public void reportMetrics() {
        if (getByteCount() > 0) {
            AwsSdkMetrics.getServiceMetricCollector().collectByteThroughput(this);
            reset();
        }
    }

    public long startTiming() {
        if (TimeUnit.NANOSECONDS.toSeconds(getDurationNano()) > 10) {
            reportMetrics();
        }
        return System.nanoTime();
    }
}
