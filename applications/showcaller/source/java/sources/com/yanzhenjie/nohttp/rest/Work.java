package com.yanzhenjie.nohttp.rest;

import com.yanzhenjie.nohttp.Priority;
import com.yanzhenjie.nohttp.able.Cancelable;
import com.yanzhenjie.nohttp.rest.Request;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/rest/Work.class */
final class Work<T extends Request<S>, S> extends FutureTask<Response<S>> implements Cancelable, Comparable<Work<? extends Request<?>, ?>> {
    private boolean isStart;
    private final OnResponseListener<S> mCallback;
    private Object mLock;
    private int mSequence;
    private final int mWhat;
    private Worker<T, S> mWorker;

    public Work(Worker<T, S> worker, int i, OnResponseListener<S> onResponseListener) {
        super(worker);
        this.mWorker = worker;
        this.mWhat = i;
        this.mCallback = onResponseListener;
    }

    @Override // com.yanzhenjie.nohttp.able.Cancelable
    public void cancel() {
        cancel(true);
    }

    public int compareTo(Work<? extends Request<?>, ?> work) {
        T request = this.mWorker.getRequest();
        Request<?> request2 = work.mWorker.getRequest();
        Priority priority = request.getPriority();
        Priority priority2 = request2.getPriority();
        return priority == priority2 ? this.mSequence - work.mSequence : priority2.ordinal() - priority.ordinal();
    }

    @Override // java.util.concurrent.FutureTask
    protected void done() {
        try {
            Response<S> response = get();
            if (response.isSucceed()) {
                this.mCallback.onSucceed(this.mWhat, response);
            } else {
                this.mCallback.onFailed(this.mWhat, response);
            }
        } catch (CancellationException e) {
            if (!this.isStart) {
                this.isStart = true;
                this.mCallback.onStart(this.mWhat);
            }
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (!isCancelled()) {
                if (cause == null || !(cause instanceof Exception)) {
                    this.mCallback.onFailed(this.mWhat, new RestResponse(this.mWorker.getRequest(), false, null, null, 0L, new Exception(cause)));
                } else {
                    this.mCallback.onFailed(this.mWhat, new RestResponse(this.mWorker.getRequest(), false, null, null, 0L, (Exception) cause));
                }
            }
        } catch (Exception e3) {
            if (!isCancelled()) {
                this.mCallback.onFailed(this.mWhat, new RestResponse(this.mWorker.getRequest(), false, null, null, 0L, e3));
            }
        }
        this.mWorker.getRequest().finish();
        this.mCallback.onFinish(this.mWhat);
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
                this.mWorker.getRequest().start();
                this.isStart = true;
                this.mCallback.onStart(this.mWhat);
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
