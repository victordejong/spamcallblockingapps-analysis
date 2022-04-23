package com.google.api.client.a;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/x.class */
public interface x {
    <T> T parseAndClose(InputStream inputStream, Charset charset, Class<T> cls) throws IOException;
}
