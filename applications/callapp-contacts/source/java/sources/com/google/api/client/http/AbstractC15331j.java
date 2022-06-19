package com.google.api.client.http;

import com.google.api.client.p379a.AbstractC15211ad;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.google.api.client.http.j */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/j.class */
public interface AbstractC15331j extends AbstractC15211ad {
    long getLength() throws IOException;

    String getType();

    boolean retrySupported();

    @Override // com.google.api.client.p379a.AbstractC15211ad
    void writeTo(OutputStream outputStream) throws IOException;
}
