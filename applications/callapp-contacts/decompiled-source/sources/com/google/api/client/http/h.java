package com.google.api.client.http;

import com.google.api.client.a.ad;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/h.class */
public final class h implements k {
    @Override // com.google.api.client.http.k
    public final String a() {
        return "gzip";
    }

    @Override // com.google.api.client.http.k
    public final void a(ad adVar, OutputStream outputStream) throws IOException {
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(new BufferedOutputStream(outputStream) { // from class: com.google.api.client.http.h.1
            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() throws IOException {
                try {
                    flush();
                } catch (IOException e) {
                }
            }
        });
        adVar.writeTo(gZIPOutputStream);
        gZIPOutputStream.close();
    }
}
