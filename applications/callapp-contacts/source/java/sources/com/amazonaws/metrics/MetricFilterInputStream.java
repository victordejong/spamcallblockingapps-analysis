package com.amazonaws.metrics;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/amazonaws/metrics/MetricFilterInputStream.class */
public class MetricFilterInputStream extends SdkFilterInputStream {

    /* renamed from: a */
    private final ByteThroughputHelper f12129a;

    public MetricFilterInputStream(ThroughputMetricType throughputMetricType, InputStream inputStream) {
        super(inputStream);
        this.f12129a = new ByteThroughputHelper(throughputMetricType);
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f12129a.m38575b();
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
        long m38576a = this.f12129a.m38576a();
        int read = this.in.read(bArr, i, i2);
        if (read > 0) {
            this.f12129a.mo38574a(read, m38576a);
        }
        return read;
    }
}
