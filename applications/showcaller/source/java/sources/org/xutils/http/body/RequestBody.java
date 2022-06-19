package org.xutils.http.body;

import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:org/xutils/http/body/RequestBody.class */
public interface RequestBody {
    long getContentLength();

    String getContentType();

    void setContentType(String str);

    void writeTo(OutputStream outputStream);
}
