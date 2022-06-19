package com.google.android.gms.wearable.internal;

import android.util.Log;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.wearable.ChannelIOException;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.google.android.gms.wearable.internal.ab */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/ab.class */
public final class C14233ab extends OutputStream {

    /* renamed from: a */
    volatile C14340m f52217a;

    /* renamed from: b */
    private final OutputStream f52218b;

    public C14233ab(OutputStream outputStream) {
        this.f52218b = (OutputStream) C12045o.m19162a(outputStream);
    }

    /* renamed from: a */
    private final IOException m11441a(IOException iOException) {
        C14340m c14340m = this.f52217a;
        if (c14340m != null) {
            Log.isLoggable("ChannelOutputStream", 2);
            iOException = new ChannelIOException("Channel closed unexpectedly before stream was finished", c14340m.f52305a, c14340m.f52306b);
        }
        return iOException;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        try {
            this.f52218b.close();
        } catch (IOException e) {
            throw m11441a(e);
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        try {
            this.f52218b.flush();
        } catch (IOException e) {
            throw m11441a(e);
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        try {
            this.f52218b.write(i);
        } catch (IOException e) {
            throw m11441a(e);
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        try {
            this.f52218b.write(bArr);
        } catch (IOException e) {
            throw m11441a(e);
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        try {
            this.f52218b.write(bArr, i, i2);
        } catch (IOException e) {
            throw m11441a(e);
        }
    }
}
