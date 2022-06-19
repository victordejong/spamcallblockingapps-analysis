package com.yanzhenjie.nohttp.download;

import com.yanzhenjie.nohttp.Priority;
import com.yanzhenjie.nohttp.able.Cancelable;
import com.yanzhenjie.nohttp.download.DownloadRequest;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/download/Work.class */
final class Work<T extends DownloadRequest> extends FutureTask<Void> implements Cancelable, Comparable<Work<? extends DownloadRequest>> {
    private final DownloadListener mCallback;
    private Object mLock;
    private int mSequence;
    private final int mWhat;
    private Worker<T> mWorker;

    public Work(Worker<T> worker, int i, DownloadListener downloadListener) {
        super(worker);
        this.mWorker = worker;
        this.mWhat = i;
        this.mCallback = downloadListener;
    }

    @Override // com.yanzhenjie.nohttp.able.Cancelable
    public void cancel() {
        cancel(true);
    }

    public int compareTo(Work<? extends DownloadRequest> work) {
        T request = this.mWorker.getRequest();
        DownloadRequest request2 = work.mWorker.getRequest();
        Priority priority = request.getPriority();
        Priority priority2 = request2.getPriority();
        return priority == priority2 ? this.mSequence - work.mSequence : priority2.ordinal() - priority.ordinal();
    }

    @Override // java.util.concurrent.FutureTask
    protected void done() {
        try {
            get();
        } catch (CancellationException e) {
            this.mCallback.onCancel(this.mWhat);
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (isCancelled()) {
                this.mCallback.onCancel(this.mWhat);
            } else if (cause == null || !(cause instanceof Exception)) {
                this.mCallback.onDownloadError(this.mWhat, new Exception(cause));
            } else {
                this.mCallback.onDownloadError(this.mWhat, (Exception) cause);
            }
        } catch (Exception e3) {
            if (isCancelled()) {
                this.mCallback.onCancel(this.mWhat);
            } else {
                this.mCallback.onDownloadError(this.mWhat, e3);
            }
        }
    }

    @Override // com.yanzhenjie.nohttp.able.Cancelable
    public boolean isCanceled() {
        return isCancelled();
    }

    @Override // java.util.concurrent.FutureTask, java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        Object obj = this.mLock;
        if (obj != null) {
            synchronized (obj) {
                super.run();
                this.mLock.notify();
            }
            return;
        }
        throw new IllegalStateException("The lock is null.");
    }

    public void setLock(Object obj) {
        if (this.mLock == null) {
            this.mLock = obj;
            return;
        }
        throw new IllegalStateException("The lock has been set.");
    }

    public void setSequence(int i) {
        this.mSequence = i;
    }
}
