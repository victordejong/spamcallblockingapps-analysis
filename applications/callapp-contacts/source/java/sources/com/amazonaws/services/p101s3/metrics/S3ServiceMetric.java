package com.amazonaws.services.p101s3.metrics;

import com.amazonaws.metrics.ServiceMetricType;
import com.amazonaws.metrics.SimpleMetricType;
import com.amazonaws.metrics.ThroughputMetricType;
/* renamed from: com.amazonaws.services.s3.metrics.S3ServiceMetric */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/metrics/S3ServiceMetric.class */
public class S3ServiceMetric extends SimpleMetricType implements ServiceMetricType {

    /* renamed from: a */
    public static final S3ThroughputMetric f12450a;

    /* renamed from: b */
    public static final S3ServiceMetric f12451b;

    /* renamed from: c */
    public static final S3ThroughputMetric f12452c;

    /* renamed from: d */
    public static final S3ServiceMetric f12453d;

    /* renamed from: e */
    private static final S3ServiceMetric[] f12454e;

    /* renamed from: f */
    private final String f12455f;

    /* renamed from: com.amazonaws.services.s3.metrics.S3ServiceMetric$S3ThroughputMetric */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric.class */
    public static abstract class S3ThroughputMetric extends S3ServiceMetric implements ThroughputMetricType {
        private S3ThroughputMetric(String str) {
            super(str);
        }
    }

    static {
        S3ThroughputMetric s3ThroughputMetric = new S3ThroughputMetric(m38299a("DownloadThroughput")) { // from class: com.amazonaws.services.s3.metrics.S3ServiceMetric.1
        };
        f12450a = s3ThroughputMetric;
        S3ServiceMetric s3ServiceMetric = new S3ServiceMetric(m38299a("DownloadByteCount"));
        f12451b = s3ServiceMetric;
        S3ThroughputMetric s3ThroughputMetric2 = new S3ThroughputMetric(m38299a("UploadThroughput")) { // from class: com.amazonaws.services.s3.metrics.S3ServiceMetric.2
        };
        f12452c = s3ThroughputMetric2;
        S3ServiceMetric s3ServiceMetric2 = new S3ServiceMetric(m38299a("UploadByteCount"));
        f12453d = s3ServiceMetric2;
        f12454e = new S3ServiceMetric[]{s3ThroughputMetric, s3ServiceMetric, s3ThroughputMetric2, s3ServiceMetric2};
    }

    private S3ServiceMetric(String str) {
        this.f12455f = str;
    }

    /* renamed from: a */
    private static final String m38299a(String str) {
        return "S3".concat(String.valueOf(str));
    }

    /* renamed from: a */
    public static S3ServiceMetric[] m38300a() {
        return (S3ServiceMetric[]) f12454e.clone();
    }

    @Override // com.amazonaws.metrics.SimpleMetricType, com.amazonaws.metrics.MetricType
    public String name() {
        return this.f12455f;
    }
}
