package com.amazonaws.util;

import com.amazonaws.metrics.MetricType;
import com.amazonaws.metrics.RequestMetricType;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/AWSRequestMetrics.class */
public class AWSRequestMetrics {
    public final TimingInfo timingInfo;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/util/AWSRequestMetrics$Field.class */
    public enum Field implements RequestMetricType {
        AWSErrorCode,
        AWSRequestID,
        BytesProcessed,
        ClientExecuteTime,
        CredentialsRequestTime,
        Exception,
        HttpRequestTime,
        RedirectLocation,
        RequestMarshallTime,
        RequestSigningTime,
        ResponseProcessingTime,
        RequestCount,
        RetryCount,
        HttpClientRetryCount,
        HttpClientSendRequestTime,
        HttpClientReceiveResponseTime,
        HttpClientPoolAvailableCount,
        HttpClientPoolLeasedCount,
        HttpClientPoolPendingCount,
        RetryPauseTime,
        ServiceEndpoint,
        ServiceName,
        StatusCode
    }

    public AWSRequestMetrics() {
        this.timingInfo = TimingInfo.startTiming();
    }

    public AWSRequestMetrics(TimingInfo timingInfo) {
        this.timingInfo = timingInfo;
    }

    public void addProperty(MetricType metricType, Object obj) {
    }

    public void endEvent(MetricType metricType) {
    }

    public final TimingInfo getTimingInfo() {
        return this.timingInfo;
    }

    public void incrementCounter(MetricType metricType) {
    }

    public void log() {
    }

    public void setCounter(MetricType metricType, long j) {
    }

    public void startEvent(MetricType metricType) {
    }
}
