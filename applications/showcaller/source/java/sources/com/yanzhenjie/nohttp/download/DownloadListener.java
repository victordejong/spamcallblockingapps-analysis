package com.yanzhenjie.nohttp.download;

import com.yanzhenjie.nohttp.Headers;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/download/DownloadListener.class */
public interface DownloadListener {
    void onCancel(int i);

    void onDownloadError(int i, Exception exc);

    void onFinish(int i, String str);

    void onProgress(int i, int i2, long j, long j2);

    void onStart(int i, boolean z, long j, Headers headers, long j2);
}
