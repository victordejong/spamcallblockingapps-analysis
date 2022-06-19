package com.google.api.client.http;

import com.google.common.p387io.C15572a;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.google.api.client.http.e */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/e.class */
final class C15325e extends FilterInputStream {

    /* renamed from: a */
    private boolean f55329a = false;

    public C15325e(InputStream inputStream) {
        super(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f55329a || this.in == null) {
            return;
        }
        try {
            C15572a.m8639a(this);
            ((FilterInputStream) this).in.close();
        } finally {
            this.f55329a = true;
        }
    }
}
