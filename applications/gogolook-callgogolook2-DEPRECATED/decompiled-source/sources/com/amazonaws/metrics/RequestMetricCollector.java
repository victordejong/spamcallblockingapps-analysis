package com.amazonaws.metrics;

import com.amazonaws.Request;
import com.amazonaws.Response;
/* loaded from: classes-dex2jar.jar:com/amazonaws/metrics/RequestMetricCollector.class */
public abstract class RequestMetricCollector {
    public static final RequestMetricCollector NONE = new RequestMetricCollector() { // from class: com.amazonaws.metrics.RequestMetricCollector.1
        @Override // com.amazonaws.metrics.RequestMetricCollector
        public void collectMetrics(Request<?> request, Response<?> response) {
        }

        @Override // com.amazonaws.metrics.RequestMetricCollector
        public boolean isEnabled() {
            return false;
        }
    };

    public abstract void collectMetrics(Request<?> request, Response<?> response);

    public abstract boolean isEnabled();
}
