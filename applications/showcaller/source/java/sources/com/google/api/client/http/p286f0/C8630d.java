package com.google.api.client.http.p286f0;

import com.google.api.client.util.AbstractC8735z;
import com.google.api.client.util.C8731w;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.entity.AbstractHttpEntity;
/* renamed from: com.google.api.client.http.f0.d */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/f0/d.class */
final class C8630d extends AbstractHttpEntity {

    /* renamed from: a */
    private final long f38326a;

    /* renamed from: b */
    private final AbstractC8735z f38327b;

    public C8630d(long j, AbstractC8735z abstractC8735z) {
        this.f38326a = j;
        this.f38327b = (AbstractC8735z) C8731w.m2836d(abstractC8735z);
    }

    public InputStream getContent() {
        throw new UnsupportedOperationException();
    }

    public long getContentLength() {
        return this.f38326a;
    }

    public boolean isRepeatable() {
        return false;
    }

    public boolean isStreaming() {
        return true;
    }

    public void writeTo(OutputStream outputStream) {
        if (this.f38326a != 0) {
            this.f38327b.writeTo(outputStream);
        }
    }
}
