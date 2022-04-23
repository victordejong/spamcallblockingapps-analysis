package com.google.api.client.http;

import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/f.class */
public final class f implements j {
    @Override // com.google.api.client.http.j
    public final long getLength() throws IOException {
        return 0L;
    }

    @Override // com.google.api.client.http.j
    public final String getType() {
        return null;
    }

    @Override // com.google.api.client.http.j
    public final boolean retrySupported() {
        return true;
    }

    @Override // com.google.api.client.http.j, com.google.api.client.a.ad
    public final void writeTo(OutputStream outputStream) throws IOException {
        outputStream.flush();
    }
}
