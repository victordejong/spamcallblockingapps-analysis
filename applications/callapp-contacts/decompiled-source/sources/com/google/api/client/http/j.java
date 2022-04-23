package com.google.api.client.http;

import com.google.api.client.a.ad;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/j.class */
public interface j extends ad {
    long getLength() throws IOException;

    String getType();

    boolean retrySupported();

    @Override // com.google.api.client.a.ad
    void writeTo(OutputStream outputStream) throws IOException;
}
