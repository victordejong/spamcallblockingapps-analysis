package org.xutils.http.body;

import org.xutils.http.ProgressHandler;
/* loaded from: classes2-dex2jar.jar:org/xutils/http/body/ProgressBody.class */
public interface ProgressBody extends RequestBody {
    void setProgressHandler(ProgressHandler progressHandler);
}
