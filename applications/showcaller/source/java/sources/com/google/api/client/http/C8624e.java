package com.google.api.client.http;

import com.google.common.p291io.C8827a;
import java.io.FilterInputStream;
import java.io.InputStream;
/* renamed from: com.google.api.client.http.e */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/e.class */
final class C8624e extends FilterInputStream {

    /* renamed from: d */
    private boolean f38318d = false;

    public C8624e(InputStream inputStream) {
        super(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f38318d || ((FilterInputStream) this).in == null) {
            return;
        }
        try {
            C8827a.m2577c(this);
            ((FilterInputStream) this).in.close();
        } finally {
            this.f38318d = true;
        }
    }
}
