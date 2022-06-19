package com.google.api.client.http;

import com.google.api.client.p379a.C15245o;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
/* renamed from: com.google.api.client.http.a */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/a.class */
public abstract class AbstractC15303a implements AbstractC15331j {
    private long computedLength;
    private C15339p mediaType;

    public AbstractC15303a(C15339p c15339p) {
        this.computedLength = -1L;
        this.mediaType = c15339p;
    }

    public AbstractC15303a(String str) {
        this(str == null ? null : new C15339p(str));
    }

    public static long computeLength(AbstractC15331j abstractC15331j) throws IOException {
        if (!abstractC15331j.retrySupported()) {
            return -1L;
        }
        return C15245o.m9214a(abstractC15331j);
    }

    protected long computeLength() throws IOException {
        return computeLength(this);
    }

    public final Charset getCharset() {
        C15339p c15339p = this.mediaType;
        return (c15339p == null || c15339p.m9065b() == null) ? StandardCharsets.ISO_8859_1 : this.mediaType.m9065b();
    }

    @Override // com.google.api.client.http.AbstractC15331j
    public long getLength() throws IOException {
        if (this.computedLength == -1) {
            this.computedLength = computeLength();
        }
        return this.computedLength;
    }

    public final C15339p getMediaType() {
        return this.mediaType;
    }

    @Override // com.google.api.client.http.AbstractC15331j
    public String getType() {
        C15339p c15339p = this.mediaType;
        if (c15339p == null) {
            return null;
        }
        return c15339p.m9069a();
    }

    @Override // com.google.api.client.http.AbstractC15331j
    public boolean retrySupported() {
        return true;
    }

    public AbstractC15303a setMediaType(C15339p c15339p) {
        this.mediaType = c15339p;
        return this;
    }
}
