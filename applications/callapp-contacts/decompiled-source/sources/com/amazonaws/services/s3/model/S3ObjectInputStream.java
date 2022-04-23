package com.amazonaws.services.s3.model;

import com.amazonaws.internal.MetricAware;
import com.amazonaws.internal.SdkFilterInputStream;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.metrics.AwsSdkMetrics;
import com.amazonaws.metrics.MetricFilterInputStream;
import com.amazonaws.services.s3.metrics.S3ServiceMetric;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/S3ObjectInputStream.class */
public class S3ObjectInputStream extends SdkFilterInputStream {
    private boolean eof;

    public S3ObjectInputStream(InputStream inputStream) {
        super(wrapWithByteCounting(inputStream) ? new MetricFilterInputStream(S3ServiceMetric.f6881a, inputStream) : inputStream);
    }

    private void doAbort() {
        try {
            close();
        } catch (IOException e) {
            LogFactory.a(getClass()).a("FYI", e);
        }
    }

    private static boolean wrapWithByteCounting(InputStream inputStream) {
        if (!AwsSdkMetrics.isMetricsEnabled()) {
            return false;
        }
        return !(inputStream instanceof MetricAware) || !((MetricAware) inputStream).isMetricActivated();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream
    public void abort() {
        doAbort();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int available = super.available();
        int i = available;
        if (available == 0) {
            i = 1;
        }
        return i;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        if (read == -1) {
            this.eof = true;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read == -1) {
            this.eof = true;
        }
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        super.reset();
        this.eof = false;
    }
}
