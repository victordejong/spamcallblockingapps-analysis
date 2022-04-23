package com.amazonaws.services.p017s3.model;

import com.amazonaws.internal.MetricAware;
import com.amazonaws.internal.SdkFilterInputStream;
import com.amazonaws.metrics.AwsSdkMetrics;
import com.amazonaws.metrics.MetricFilterInputStream;
import com.amazonaws.services.p017s3.metrics.S3ServiceMetric;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.logging.LogFactory;
import org.apache.http.client.methods.HttpRequestBase;
/* renamed from: com.amazonaws.services.s3.model.S3ObjectInputStream */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/S3ObjectInputStream.class */
public class S3ObjectInputStream extends SdkFilterInputStream {
    public S3ObjectInputStream(InputStream inputStream) {
        this(inputStream, null);
    }

    @Deprecated
    public S3ObjectInputStream(InputStream inputStream, HttpRequestBase httpRequestBase) {
        this(inputStream, httpRequestBase, wrapWithByteCounting(inputStream));
    }

    @Deprecated
    public S3ObjectInputStream(InputStream inputStream, HttpRequestBase httpRequestBase, boolean z) {
        super(z ? new MetricFilterInputStream(S3ServiceMetric.S3DownloadThroughput, inputStream) : inputStream);
    }

    public static boolean wrapWithByteCounting(InputStream inputStream) {
        if (!AwsSdkMetrics.isMetricsEnabled()) {
            return false;
        }
        if (inputStream instanceof MetricAware) {
            return !((MetricAware) inputStream).isMetricActivated();
        }
        return true;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream
    public void abort() {
        try {
            close();
        } catch (IOException e) {
            LogFactory.getLog(S3ObjectInputStream.class).debug("FYI", e);
        }
    }
}
