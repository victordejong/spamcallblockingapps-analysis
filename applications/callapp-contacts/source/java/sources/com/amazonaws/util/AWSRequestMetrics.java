package com.amazonaws.util;

import com.amazonaws.metrics.MetricType;
import com.amazonaws.metrics.RequestMetricType;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/AWSRequestMetrics.class */
public class AWSRequestMetrics {

    /* renamed from: a */
    protected final TimingInfo f12489a;

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
        this.f12489a = TimingInfo.m38225a();
    }

    public AWSRequestMetrics(TimingInfo timingInfo) {
        this.f12489a = timingInfo;
    }

    /* renamed from: a */
    public final TimingInfo m38282a() {
        return this.f12489a;
    }

    /* renamed from: a */
    public void mo38281a(MetricType metricType) {
    }

    /* renamed from: a */
    public void mo38280a(MetricType metricType, long j) {
    }

    /* renamed from: a */
    public void mo38279a(MetricType metricType, Object obj) {
    }

    /* renamed from: b */
    public void mo38277b() {
    }

    /* renamed from: b */
    public void mo38276b(MetricType metricType) {
    }

    /* renamed from: c */
    public void mo38275c(MetricType metricType) {
    }
}
