package com.google.android.exoplayer2.util;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.google.android.exoplayer2.util.x */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/x.class */
public final class C11631x extends BufferedOutputStream {

    /* renamed from: a */
    private boolean f38740a;

    public C11631x(OutputStream outputStream) {
        super(outputStream);
    }

    public C11631x(OutputStream outputStream, int i) {
        super(outputStream, i);
    }

    /* renamed from: a */
    public final void m19766a(OutputStream outputStream) {
        C11593a.m20019b(this.f38740a);
        this.out = outputStream;
        this.count = 0;
        this.f38740a = false;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        Throwable th;
        Throwable th2;
        this.f38740a = true;
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
            th2 = th;
            if (th == null) {
                th2 = th4;
            }
        }
        if (th2 != null) {
            C11599af.m19966a(th2);
        }
    }
}
