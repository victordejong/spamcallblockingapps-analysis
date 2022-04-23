package com.amazonaws.util;

import com.amazonaws.metrics.MetricType;
import com.amazonaws.metrics.RequestMetricType;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/AWSRequestMetrics.class */
public class AWSRequestMetrics {

    /* renamed from: a  reason: collision with root package name */
    protected final TimingInfo f6898a;

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
        RetryPauseTime,
        ServiceEndpoint,
        ServiceName,
        StatusCode
    }

    public AWSRequestMetrics() {
        this.f6898a = TimingInfo.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AWSRequestMetrics(TimingInfo timingInfo) {
        this.f6898a = timingInfo;
    }

    public final TimingInfo a() {
        return this.f6898a;
    }

    public void a(MetricType metricType) {
    }

    public void a(MetricType metricType, long j) {
    }

    public void a(MetricType metricType, Object obj) {
    }

    public void b() {
    }

    public void b(MetricType metricType) {
    }

    public void c(MetricType metricType) {
    }
}
