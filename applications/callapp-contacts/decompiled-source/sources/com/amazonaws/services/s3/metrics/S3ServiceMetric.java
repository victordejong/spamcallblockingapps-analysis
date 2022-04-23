package com.amazonaws.services.s3.metrics;

import com.amazonaws.metrics.ServiceMetricType;
import com.amazonaws.metrics.SimpleMetricType;
import com.amazonaws.metrics.ThroughputMetricType;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/metrics/S3ServiceMetric.class */
public class S3ServiceMetric extends SimpleMetricType implements ServiceMetricType {

    /* renamed from: a  reason: collision with root package name */
    public static final S3ThroughputMetric f6881a;

    /* renamed from: b  reason: collision with root package name */
    public static final S3ServiceMetric f6882b;

    /* renamed from: c  reason: collision with root package name */
    public static final S3ThroughputMetric f6883c;

    /* renamed from: d  reason: collision with root package name */
    public static final S3ServiceMetric f6884d;
    private static final S3ServiceMetric[] e;
    private final String f;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric.class */
    public static abstract class S3ThroughputMetric extends S3ServiceMetric implements ThroughputMetricType {
        private S3ThroughputMetric(String str) {
            super(str);
        }
    }

    static {
        S3ThroughputMetric s3ThroughputMetric = new S3ThroughputMetric(a("DownloadThroughput")) { // from class: com.amazonaws.services.s3.metrics.S3ServiceMetric.1
        };
        f6881a = s3ThroughputMetric;
        S3ServiceMetric s3ServiceMetric = new S3ServiceMetric(a("DownloadByteCount"));
        f6882b = s3ServiceMetric;
        S3ThroughputMetric s3ThroughputMetric2 = new S3ThroughputMetric(a("UploadThroughput")) { // from class: com.amazonaws.services.s3.metrics.S3ServiceMetric.2
        };
        f6883c = s3ThroughputMetric2;
        S3ServiceMetric s3ServiceMetric2 = new S3ServiceMetric(a("UploadByteCount"));
        f6884d = s3ServiceMetric2;
        e = new S3ServiceMetric[]{s3ThroughputMetric, s3ServiceMetric, s3ThroughputMetric2, s3ServiceMetric2};
    }

    private S3ServiceMetric(String str) {
        this.f = str;
    }

    private static final String a(String str) {
        return "S3".concat(String.valueOf(str));
    }

    public static S3ServiceMetric[] a() {
        return (S3ServiceMetric[]) e.clone();
    }

    @Override // com.amazonaws.metrics.SimpleMetricType, com.amazonaws.metrics.MetricType
    public String name() {
        return this.f;
    }
}
