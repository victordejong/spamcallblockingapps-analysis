package com.google.android.exoplayer2.util;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/x.class */
public final class x extends BufferedOutputStream {

    /* renamed from: a  reason: collision with root package name */
    private boolean f22342a;

    public x(OutputStream outputStream) {
        super(outputStream);
    }

    public x(OutputStream outputStream, int i) {
        super(outputStream, i);
    }

    public final void a(OutputStream outputStream) {
        a.b(this.f22342a);
        this.out = outputStream;
        this.count = 0;
        this.f22342a = false;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        Throwable th;
        Throwable th2;
        this.f22342a = true;
        try {
            flush();
            th = null;
        } catch (Throwable th3) {
            th = th3;
        }
        try {
            this.out.close();
            th2 = th;
        } catch (Throwable th4) {
            th2 = th4;
            th2 = th;
            if (th == null) {
            }
        }
        if (th2 != null) {
            af.a(th2);
        }
    }
}
