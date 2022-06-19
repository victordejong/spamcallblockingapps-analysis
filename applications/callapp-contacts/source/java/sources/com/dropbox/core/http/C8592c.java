package com.dropbox.core.http;

import java.io.Closeable;
import java.io.IOException;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;
/* renamed from: com.dropbox.core.http.c */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/c.class */
final class C8592c {

    /* renamed from: com.dropbox.core.http.c$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/c$a.class */
    public static final class C8594a implements Closeable {

        /* renamed from: a */
        final PipedInputStream f30586a;

        /* renamed from: b */
        final PipedOutputStream f30587b;

        public C8594a() {
            PipedInputStream pipedInputStream = new PipedInputStream(5242880);
            this.f30586a = pipedInputStream;
            try {
                this.f30587b = new PipedOutputStream(pipedInputStream);
            } catch (IOException e) {
                throw new IllegalStateException("Unable to create piped stream for async upload request.");
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            try {
                this.f30587b.close();
            } catch (IOException e) {
            }
            try {
                this.f30586a.close();
            } catch (IOException e2) {
            }
        }
    }

    C8592c() {
    }
}
