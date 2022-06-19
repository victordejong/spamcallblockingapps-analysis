package com.yanzhenjie.nohttp.download;

import com.yanzhenjie.nohttp.download.DownloadRequest;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/download/Worker.class */
public class Worker<T extends DownloadRequest> implements Callable<Void> {
    private DownloadListener mListener;
    private final T mRequest;
    private int mWhat;

    public Worker(int i, T t, DownloadListener downloadListener) {
        this.mWhat = i;
        this.mRequest = t;
        this.mListener = downloadListener;
    }

    @Override // java.util.concurrent.Callable
    public Void call() {
        SyncDownloadExecutor.INSTANCE.execute(this.mWhat, this.mRequest, this.mListener);
        return null;
    }

    public T getRequest() {
        return this.mRequest;
    }
}
