package com.amazonaws.event;

import com.amazonaws.internal.SdkFilterInputStream;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/amazonaws/event/ProgressReportingInputStream.class */
public class ProgressReportingInputStream extends SdkFilterInputStream {

    /* renamed from: a */
    public boolean f12044a;

    /* renamed from: b */
    private int f12045b = PropertyFlags.UNSIGNED;

    /* renamed from: c */
    private final ProgressListenerCallbackExecutor f12046c;

    /* renamed from: d */
    private int f12047d;

    public ProgressReportingInputStream(InputStream inputStream, ProgressListenerCallbackExecutor progressListenerCallbackExecutor) {
        super(inputStream);
        this.f12046c = progressListenerCallbackExecutor;
    }

    /* renamed from: a */
    private void m38639a() {
        if (!this.f12044a) {
            return;
        }
        ProgressEvent progressEvent = new ProgressEvent(this.f12047d);
        progressEvent.setEventCode(4);
        this.f12047d = 0;
        this.f12046c.m38642a(progressEvent);
    }

    /* renamed from: b */
    private void m38637b(int i) {
        int i2 = this.f12047d + i;
        this.f12047d = i2;
        if (i2 >= this.f12045b) {
            this.f12046c.m38642a(new ProgressEvent(i2));
            this.f12047d = 0;
        }
    }

    /* renamed from: a */
    public final void m38638a(int i) {
        this.f12045b = i * 1024;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        int i = this.f12047d;
        if (i > 0) {
            this.f12046c.m38642a(new ProgressEvent(i));
            this.f12047d = 0;
        }
        super.close();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        if (read == -1) {
            m38639a();
        } else {
            m38637b(1);
        }
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read == -1) {
            m38639a();
        }
        if (read != -1) {
            m38637b(read);
        }
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        super.reset();
        ProgressEvent progressEvent = new ProgressEvent(this.f12047d);
        progressEvent.setEventCode(32);
        this.f12046c.m38642a(progressEvent);
        this.f12047d = 0;
    }
}
