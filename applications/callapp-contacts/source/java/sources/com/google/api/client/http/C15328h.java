package com.google.api.client.http;

import com.google.api.client.p379a.AbstractC15211ad;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;
/* renamed from: com.google.api.client.http.h */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/h.class */
public final class C15328h implements AbstractC15332k {
    @Override // com.google.api.client.http.AbstractC15332k
    /* renamed from: a */
    public final String mo9102a() {
        return "gzip";
    }

    @Override // com.google.api.client.http.AbstractC15332k
    /* renamed from: a */
    public final void mo9101a(AbstractC15211ad abstractC15211ad, OutputStream outputStream) throws IOException {
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(new BufferedOutputStream(outputStream) { // from class: com.google.api.client.http.h.1
            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() throws IOException {
                try {
                    flush();
                } catch (IOException e) {
                }
            }
        });
        abstractC15211ad.writeTo(gZIPOutputStream);
        gZIPOutputStream.close();
    }
}
