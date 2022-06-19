package com.yanzhenjie.nohttp;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/OnUploadListener.class */
public interface OnUploadListener {
    void onCancel(int i);

    void onError(int i, Exception exc);

    void onFinish(int i);

    void onProgress(int i, int i2);

    void onStart(int i);
}
