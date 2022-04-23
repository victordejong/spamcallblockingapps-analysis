package com.amazonaws.metrics;
/* loaded from: classes-dex2jar.jar:com/amazonaws/metrics/MetricCollector.class */
public abstract class MetricCollector {

    /* renamed from: a  reason: collision with root package name */
    public static final MetricCollector f6673a = new MetricCollector() { // from class: com.amazonaws.metrics.MetricCollector.1
        @Override // com.amazonaws.metrics.MetricCollector
        public final RequestMetricCollector a() {
            return RequestMetricCollector.f6675a;
        }

        @Override // com.amazonaws.metrics.MetricCollector
        public final ServiceMetricCollector b() {
            return ServiceMetricCollector.f6676a;
        }
    };

    /* loaded from: classes-dex2jar.jar:com/amazonaws/metrics/MetricCollector$Factory.class */
    public interface Factory {
        MetricCollector a();
    }

    public abstract RequestMetricCollector a();

    public abstract ServiceMetricCollector b();
}
