package com.amazonaws.metrics;
/* loaded from: classes-dex2jar.jar:com/amazonaws/metrics/MetricCollector.class */
public abstract class MetricCollector {

    /* renamed from: a */
    public static final MetricCollector f12128a = new MetricCollector() { // from class: com.amazonaws.metrics.MetricCollector.1
        @Override // com.amazonaws.metrics.MetricCollector
        /* renamed from: a */
        public final RequestMetricCollector mo38570a() {
            return RequestMetricCollector.f12130a;
        }

        @Override // com.amazonaws.metrics.MetricCollector
        /* renamed from: b */
        public final ServiceMetricCollector mo38569b() {
            return ServiceMetricCollector.f12131a;
        }
    };

    /* loaded from: classes-dex2jar.jar:com/amazonaws/metrics/MetricCollector$Factory.class */
    public interface Factory {
        /* renamed from: a */
        MetricCollector m38568a();
    }

    /* renamed from: a */
    public abstract RequestMetricCollector mo38570a();

    /* renamed from: b */
    public abstract ServiceMetricCollector mo38569b();
}
