package com.amazonaws.util;

import com.amazonaws.metrics.ServiceMetricType;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/AWSServiceMetrics.class */
public enum AWSServiceMetrics implements ServiceMetricType {
    HttpClientGetConnectionTime("HttpClient");
    
    private final String serviceName;

    AWSServiceMetrics(String str) {
        this.serviceName = str;
    }

    public final String getServiceName() {
        return this.serviceName;
    }
}
