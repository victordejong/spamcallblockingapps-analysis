package com.yanzhenjie.nohttp.download;

import com.yanzhenjie.nohttp.CancelerManager;
import com.yanzhenjie.nohttp.HandlerDelivery;
import com.yanzhenjie.nohttp.Headers;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/download/DownloadQueue.class */
public class DownloadQueue {
    private DownloadDispatcher[] mDispatchers;
    private AtomicInteger mInteger = new AtomicInteger(1);
    private final BlockingQueue<Work<? extends DownloadRequest>> mQueue = new PriorityBlockingQueue();
    private final CancelerManager mCancelerManager = new CancelerManager();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback.class */
    public static class AsyncCallback implements DownloadListener {
        private final DownloadListener mCallback;
        private CancelerManager mCancelerManager;
        private BlockingQueue<Work<? extends DownloadRequest>> mQueue;
        private DownloadRequest mRequest;
        private Work<? extends DownloadRequest> mWork;

        public AsyncCallback(DownloadListener downloadListener) {
            this.mCallback = downloadListener;
        }

        private void removeRequest() {
            this.mCancelerManager.removeCancel(this.mRequest);
            if (this.mQueue.contains(this.mWork)) {
                this.mQueue.remove(this.mWork);
            }
        }

        @Override // com.yanzhenjie.nohttp.download.DownloadListener
        public void onCancel(final int i) {
            removeRequest();
            HandlerDelivery.getInstance().post(new Runnable() { // from class: com.yanzhenjie.nohttp.download.DownloadQueue.AsyncCallback.5
                @Override // java.lang.Runnable
                public void run() {
                    AsyncCallback.this.mCallback.onCancel(i);
                }
            });
        }

        @Override // com.yanzhenjie.nohttp.download.DownloadListener
        public void onDownloadError(final int i, final Exception exc) {
            removeRequest();
            HandlerDelivery.getInstance().post(new Runnable() { // from class: com.yanzhenjie.nohttp.download.DownloadQueue.AsyncCallback.1
                @Override // java.lang.Runnable
                public void run() {
                    AsyncCallback.this.mCallback.onDownloadError(i, exc);
                }
            });
        }

        @Override // com.yanzhenjie.nohttp.download.DownloadListener
        public void onFinish(final int i, final String str) {
            removeRequest();
            HandlerDelivery.getInstance().post(new Runnable() { // from class: com.yanzhenjie.nohttp.download.DownloadQueue.AsyncCallback.4
                @Override // java.lang.Runnable
                public void run() {
                    AsyncCallback.this.mCallback.onFinish(i, str);
                }
            });
        }

        @Override // com.yanzhenjie.nohttp.download.DownloadListener
        public void onProgress(final int i, final int i2, final long j, final long j2) {
            HandlerDelivery.getInstance().post(new Runnable() { // from class: com.yanzhenjie.nohttp.download.DownloadQueue.AsyncCallback.3
                @Override // java.lang.Runnable
                public void run() {
                    AsyncCallback.this.mCallback.onProgress(i, i2, j, j2);
                }
            });
        }

        @Override // com.yanzhenjie.nohttp.download.DownloadListener
        public void onStart(final int i, final boolean z, final long j, final Headers headers, final long j2) {
            HandlerDelivery.getInstance().post(new Runnable() { // from class: com.yanzhenjie.nohttp.download.DownloadQueue.AsyncCallback.2
                @Override // java.lang.Runnable
                public void run() {
                    AsyncCallback.this.mCallback.onStart(i, z, j, headers, j2);
                }
            });
        }

        public void setCancelerManager(CancelerManager cancelerManager) {
            this.mCancelerManager = cancelerManager;
        }

        public void setQueue(BlockingQueue<Work<? extends DownloadRequest>> blockingQueue) {
            this.mQueue = blockingQueue;
        }

        public void setRequest(DownloadRequest downloadRequest) {
            this.mRequest = downloadRequest;
        }

        public void setWork(Work<? extends DownloadRequest> work) {
            this.mWork = work;
        }
    }

    public DownloadQueue(int i) {
        this.mDispatchers = new DownloadDispatcher[i];
    }

    public void add(int i, DownloadRequest downloadRequest, DownloadListener downloadListener) {
        AsyncCallback asyncCallback = new AsyncCallback(downloadListener);
        Work<? extends DownloadRequest> work = new Work<>(new Worker(i, downloadRequest, asyncCallback), i, asyncCallback);
        work.setSequence(this.mInteger.incrementAndGet());
        asyncCallback.setQueue(this.mQueue);
        asyncCallback.setCancelerManager(this.mCancelerManager);
        asyncCallback.setWork(work);
        asyncCallback.setRequest(downloadRequest);
        downloadRequest.setCancelable(work);
        this.mCancelerManager.addCancel(downloadRequest, work);
        this.mQueue.add(work);
    }

    public void cancelAll() {
        this.mCancelerManager.cancelAll();
    }

    public void cancelBySign(Object obj) {
        this.mCancelerManager.cancel(obj);
    }

    @Deprecated
    public int size() {
        return unFinishSize();
    }

    public void start() {
        stop();
        for (int i = 0; i < this.mDispatchers.length; i++) {
            DownloadDispatcher downloadDispatcher = new DownloadDispatcher(this.mQueue);
            this.mDispatchers[i] = downloadDispatcher;
            downloadDispatcher.start();
        }
    }

    public void stop() {
        DownloadDispatcher[] downloadDispatcherArr;
        cancelAll();
        for (DownloadDispatcher downloadDispatcher : this.mDispatchers) {
            if (downloadDispatcher != null) {
                downloadDispatcher.quit();
            }
        }
    }

    public int unFinishSize() {
        return this.mCancelerManager.size();
    }

    public int unStartSize() {
        return this.mQueue.size();
    }
}
