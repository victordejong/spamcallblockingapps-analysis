package com.google.api.client.http;

import com.google.api.client.util.AbstractC8735z;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;
/* renamed from: com.google.api.client.http.h */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/h.class */
public class C8642h implements AbstractC8647k {

    /* renamed from: com.google.api.client.http.h$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/http/h$a.class */
    class C8643a extends BufferedOutputStream {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8643a(OutputStream outputStream) {
            super(outputStream);
            C8642h.this = r4;
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            try {
                flush();
            } catch (IOException e) {
            }
        }
    }

    @Override // com.google.api.client.http.AbstractC8647k
    /* renamed from: a */
    public void mo3160a(AbstractC8735z abstractC8735z, OutputStream outputStream) {
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(new C8643a(outputStream));
        abstractC8735z.writeTo(gZIPOutputStream);
        gZIPOutputStream.close();
    }

    @Override // com.google.api.client.http.AbstractC8647k
    public String getName() {
        return "gzip";
    }
}
