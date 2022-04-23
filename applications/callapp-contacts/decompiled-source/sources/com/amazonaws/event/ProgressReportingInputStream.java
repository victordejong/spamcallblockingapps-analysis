package com.amazonaws.event;

import com.amazonaws.internal.SdkFilterInputStream;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/amazonaws/event/ProgressReportingInputStream.class */
public class ProgressReportingInputStream extends SdkFilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    public boolean f6601a;

    /* renamed from: b  reason: collision with root package name */
    private int f6602b = PropertyFlags.UNSIGNED;

    /* renamed from: c  reason: collision with root package name */
    private final ProgressListenerCallbackExecutor f6603c;

    /* renamed from: d  reason: collision with root package name */
    private int f6604d;

    public ProgressReportingInputStream(InputStream inputStream, ProgressListenerCallbackExecutor progressListenerCallbackExecutor) {
        super(inputStream);
        this.f6603c = progressListenerCallbackExecutor;
    }

    private void a() {
        if (this.f6601a) {
            ProgressEvent progressEvent = new ProgressEvent(this.f6604d);
            progressEvent.setEventCode(4);
            this.f6604d = 0;
            this.f6603c.a(progressEvent);
        }
    }

    private void b(int i) {
        int i2 = this.f6604d + i;
        this.f6604d = i2;
        if (i2 >= this.f6602b) {
            this.f6603c.a(new ProgressEvent(i2));
            this.f6604d = 0;
        }
    }

    public final void a(int i) {
        this.f6602b = i * 1024;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        int i = this.f6604d;
        if (i > 0) {
            this.f6603c.a(new ProgressEvent(i));
            this.f6604d = 0;
        }
        super.close();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        if (read == -1) {
            a();
        } else {
            b(1);
        }
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read == -1) {
            a();
        }
        if (read != -1) {
            b(read);
        }
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        super.reset();
        ProgressEvent progressEvent = new ProgressEvent(this.f6604d);
        progressEvent.setEventCode(32);
        this.f6603c.a(progressEvent);
        this.f6604d = 0;
    }
}
