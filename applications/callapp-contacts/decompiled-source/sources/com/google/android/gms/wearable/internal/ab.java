package com.google.android.gms.wearable.internal;

import android.util.Log;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.wearable.ChannelIOException;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/ab.class */
public final class ab extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    volatile m f30081a;

    /* renamed from: b  reason: collision with root package name */
    private final OutputStream f30082b;

    public ab(OutputStream outputStream) {
        this.f30082b = (OutputStream) o.a(outputStream);
    }

    private final IOException a(IOException iOException) {
        m mVar = this.f30081a;
        if (mVar != null) {
            Log.isLoggable("ChannelOutputStream", 2);
            iOException = new ChannelIOException("Channel closed unexpectedly before stream was finished", mVar.f30144a, mVar.f30145b);
        }
        return iOException;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        try {
            this.f30082b.close();
        } catch (IOException e) {
            throw a(e);
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        try {
            this.f30082b.flush();
        } catch (IOException e) {
            throw a(e);
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        try {
            this.f30082b.write(i);
        } catch (IOException e) {
            throw a(e);
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        try {
            this.f30082b.write(bArr);
        } catch (IOException e) {
            throw a(e);
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        try {
            this.f30082b.write(bArr, i, i2);
        } catch (IOException e) {
            throw a(e);
        }
    }
}
