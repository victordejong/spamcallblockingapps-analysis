package com.amazonaws.metrics;
/* loaded from: classes-dex2jar.jar:com/amazonaws/metrics/ServiceMetricCollector.class */
public abstract class ServiceMetricCollector {
    public static final ServiceMetricCollector NONE = new ServiceMetricCollector() { // from class: com.amazonaws.metrics.ServiceMetricCollector.1
        @Override // com.amazonaws.metrics.ServiceMetricCollector
        public void collectByteThroughput(ByteThroughputProvider byteThroughputProvider) {
        }
    };

    public abstract void collectByteThroughput(ByteThroughputProvider byteThroughputProvider);
}
