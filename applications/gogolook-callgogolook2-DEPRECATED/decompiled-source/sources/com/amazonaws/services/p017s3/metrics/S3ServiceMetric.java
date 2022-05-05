package com.amazonaws.services.p017s3.metrics;

import com.amazonaws.metrics.ServiceMetricType;
import com.amazonaws.metrics.SimpleMetricType;
import com.amazonaws.metrics.ThroughputMetricType;
/* renamed from: com.amazonaws.services.s3.metrics.S3ServiceMetric */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/metrics/S3ServiceMetric.class */
public class S3ServiceMetric extends SimpleMetricType implements ServiceMetricType {
    public final String name;
    public static final S3ThroughputMetric S3DownloadThroughput = new S3ThroughputMetric(metricName("DownloadThroughput")) { // from class: com.amazonaws.services.s3.metrics.S3ServiceMetric.1
    };
    public static final S3ServiceMetric S3DownloadByteCount = new S3ServiceMetric(metricName("DownloadByteCount"));
    public static final S3ThroughputMetric S3UploadThroughput = new S3ThroughputMetric(metricName("UploadThroughput")) { // from class: com.amazonaws.services.s3.metrics.S3ServiceMetric.2
    };
    public static final S3ServiceMetric S3UploadByteCount = new S3ServiceMetric(metricName("UploadByteCount"));
    public static final S3ServiceMetric[] values = {S3DownloadThroughput, S3DownloadByteCount, S3UploadThroughput, S3UploadByteCount};

    /* renamed from: com.amazonaws.services.s3.metrics.S3ServiceMetric$S3ThroughputMetric */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric.class */
    public static abstract class S3ThroughputMetric extends S3ServiceMetric implements ThroughputMetricType {
        public S3ThroughputMetric(String str) {
            super(str);
        }
    }

    public S3ServiceMetric(String str) {
        this.name = str;
    }

    public static final String metricName(String str) {
        return "S3" + str;
    }

    public static S3ServiceMetric[] values() {
        return (S3ServiceMetric[]) values.clone();
    }

    @Override // com.amazonaws.metrics.SimpleMetricType, com.amazonaws.metrics.MetricType
    public String name() {
        return this.name;
    }
}
