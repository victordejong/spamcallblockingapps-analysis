package com.amazonaws.metrics;
/* loaded from: classes-dex2jar.jar:com/amazonaws/metrics/SimpleMetricType.class */
public abstract class SimpleMetricType implements MetricType {
    public final boolean equals(Object obj) {
        if (!(obj instanceof MetricType)) {
            return false;
        }
        return name().equals(((MetricType) obj).name());
    }

    public final int hashCode() {
        return name().hashCode();
    }

    @Override // com.amazonaws.metrics.MetricType
    public abstract String name();

    public final String toString() {
        return name();
    }
}
