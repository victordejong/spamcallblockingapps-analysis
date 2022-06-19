package com.yanzhenjie.nohttp;

import com.yanzhenjie.nohttp.able.Cancelable;
import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/Binary.class */
public interface Binary extends Cancelable {
    String getFileName();

    long getLength();

    String getMimeType();

    void onWriteBinary(OutputStream outputStream);
}
