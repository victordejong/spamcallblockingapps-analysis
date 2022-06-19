package com.yanzhenjie.nohttp.download;

import com.yanzhenjie.nohttp.Logger;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/download/DownloadDispatcher.class */
class DownloadDispatcher extends Thread {
    private static final ThreadFactory THREAD_FACTORY = new ThreadFactory() { // from class: com.yanzhenjie.nohttp.download.DownloadDispatcher.1
        private final AtomicInteger mCount = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "Download #" + this.mCount.getAndIncrement());
        }
    };
    private final BlockingQueue<Work<? extends DownloadRequest>> mQueue;
    private final Executor mExecutor = Executors.newCachedThreadPool(THREAD_FACTORY);
    private boolean mQuit = false;

    public DownloadDispatcher(BlockingQueue<Work<? extends DownloadRequest>> blockingQueue) {
        this.mQueue = blockingQueue;
    }

    public void quit() {
        this.mQuit = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (!this.mQuit) {
            try {
                Work<? extends DownloadRequest> take = this.mQueue.take();
                synchronized (this) {
                    take.setLock(this);
                    this.mExecutor.execute(take);
                    try {
                        wait();
                    } catch (InterruptedException e) {
                    }
                }
            } catch (InterruptedException e2) {
                if (this.mQuit) {
                    Logger.m558w("Queue exit, stop blocking.");
                    return;
                }
                Logger.m566e((Throwable) e2);
            }
        }
    }
}
