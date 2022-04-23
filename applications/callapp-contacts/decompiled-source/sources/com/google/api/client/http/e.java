package com.google.api.client.http;

import com.google.common.io.a;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/e.class */
final class e extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private boolean f31803a = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(InputStream inputStream) {
        super(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (!this.f31803a && this.in != null) {
            try {
                a.a(this);
                ((FilterInputStream) this).in.close();
            } finally {
                this.f31803a = true;
            }
        }
    }
}
