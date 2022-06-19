package com.yanzhenjie.nohttp;

import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/Network.class */
public interface Network extends Closeable {
    OutputStream getOutputStream();

    int getResponseCode();

    Map<String, List<String>> getResponseHeaders();

    InputStream getServerStream(int i, Headers headers);
}
