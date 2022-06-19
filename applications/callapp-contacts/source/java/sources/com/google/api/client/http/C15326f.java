package com.google.api.client.http;

import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.google.api.client.http.f */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/f.class */
public final class C15326f implements AbstractC15331j {
    @Override // com.google.api.client.http.AbstractC15331j
    public final long getLength() throws IOException {
        return 0L;
    }

    @Override // com.google.api.client.http.AbstractC15331j
    public final String getType() {
        return null;
    }

    @Override // com.google.api.client.http.AbstractC15331j
    public final boolean retrySupported() {
        return true;
    }

    @Override // com.google.api.client.http.AbstractC15331j, com.google.api.client.p379a.AbstractC15211ad
    public final void writeTo(OutputStream outputStream) throws IOException {
        outputStream.flush();
    }
}
