package com.google.api.client.http;

import com.google.api.client.a.o;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/a.class */
public abstract class a implements j {
    private long computedLength;
    private p mediaType;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(p pVar) {
        this.computedLength = -1L;
        this.mediaType = pVar;
    }

    public a(String str) {
        this(str == null ? null : new p(str));
    }

    public static long computeLength(j jVar) throws IOException {
        if (!jVar.retrySupported()) {
            return -1L;
        }
        return o.a(jVar);
    }

    protected long computeLength() throws IOException {
        return computeLength(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Charset getCharset() {
        p pVar = this.mediaType;
        return (pVar == null || pVar.b() == null) ? StandardCharsets.ISO_8859_1 : this.mediaType.b();
    }

    @Override // com.google.api.client.http.j
    public long getLength() throws IOException {
        if (this.computedLength == -1) {
            this.computedLength = computeLength();
        }
        return this.computedLength;
    }

    public final p getMediaType() {
        return this.mediaType;
    }

    @Override // com.google.api.client.http.j
    public String getType() {
        p pVar = this.mediaType;
        if (pVar == null) {
            return null;
        }
        return pVar.a();
    }

    @Override // com.google.api.client.http.j
    public boolean retrySupported() {
        return true;
    }

    public a setMediaType(p pVar) {
        this.mediaType = pVar;
        return this;
    }
}
