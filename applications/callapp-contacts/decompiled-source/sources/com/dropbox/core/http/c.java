package com.dropbox.core.http;

import java.io.Closeable;
import java.io.IOException;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/c.class */
final class c {

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/c$a.class */
    public static final class a implements Closeable {

        /* renamed from: a  reason: collision with root package name */
        final PipedInputStream f17797a;

        /* renamed from: b  reason: collision with root package name */
        final PipedOutputStream f17798b;

        public a() {
            PipedInputStream pipedInputStream = new PipedInputStream(5242880);
            this.f17797a = pipedInputStream;
            try {
                this.f17798b = new PipedOutputStream(pipedInputStream);
            } catch (IOException e) {
                throw new IllegalStateException("Unable to create piped stream for async upload request.");
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            try {
                this.f17798b.close();
            } catch (IOException e) {
            }
            try {
                this.f17797a.close();
            } catch (IOException e2) {
            }
        }
    }

    c() {
    }
}
