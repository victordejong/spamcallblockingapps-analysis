package com.yanzhenjie.nohttp.download;

import com.yanzhenjie.nohttp.NoHttp;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/download/SyncDownloadExecutor.class */
public enum SyncDownloadExecutor {
    INSTANCE,
    AsyncRequestExecutor;
    
    private Downloader mDownloader = new Downloader(NoHttp.getInitializeConfig().getNetworkExecutor());

    SyncDownloadExecutor() {
    }

    public void execute(int i, DownloadRequest downloadRequest, DownloadListener downloadListener) {
        this.mDownloader.download(i, downloadRequest, downloadListener);
    }
}
