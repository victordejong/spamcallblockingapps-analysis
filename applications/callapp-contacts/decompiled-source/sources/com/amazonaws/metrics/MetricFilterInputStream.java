package com.amazonaws.metrics;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/amazonaws/metrics/MetricFilterInputStream.class */
public class MetricFilterInputStream extends SdkFilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final ByteThroughputHelper f6674a;

    public MetricFilterInputStream(ThroughputMetricType throughputMetricType, InputStream inputStream) {
        super(inputStream);
        this.f6674a = new ByteThroughputHelper(throughputMetricType);
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f6674a.b();
        this.in.close();
        abortIfNeeded();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, com.amazonaws.internal.MetricAware
    public final boolean isMetricActivated() {
        return true;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        abortIfNeeded();
        long a2 = this.f6674a.a();
        int read = this.in.read(bArr, i, i2);
        if (read > 0) {
            this.f6674a.a(read, a2);
        }
        return read;
    }
}
