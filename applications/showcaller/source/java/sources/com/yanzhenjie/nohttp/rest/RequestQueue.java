package com.yanzhenjie.nohttp.rest;

import com.yanzhenjie.nohttp.CancelerManager;
import com.yanzhenjie.nohttp.HandlerDelivery;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/rest/RequestQueue.class */
public class RequestQueue {
    private RequestDispatcher[] mDispatchers;
    private AtomicInteger mInteger = new AtomicInteger(1);
    private final BlockingQueue<Work<? extends Request<?>, ?>> mQueue = new PriorityBlockingQueue();
    private final CancelerManager mCancelerManager = new CancelerManager();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback.class */
    public static class AsyncCallback<T> implements OnResponseListener<T> {
        private final OnResponseListener<T> mCallback;
        private BlockingQueue<Work<? extends Request<?>, ?>> mQueue;
        private Work<? extends Request<?>, ?> mWork;

        AsyncCallback(OnResponseListener<T> onResponseListener) {
            this.mCallback = onResponseListener;
        }

        @Override // com.yanzhenjie.nohttp.rest.OnResponseListener
        public void onFailed(final int i, final Response<T> response) {
            HandlerDelivery.getInstance().post(new Runnable() { // from class: com.yanzhenjie.nohttp.rest.RequestQueue.AsyncCallback.3
                @Override // java.lang.Runnable
                public void run() {
                    AsyncCallback.this.mCallback.onFailed(i, response);
                }
            });
        }

        @Override // com.yanzhenjie.nohttp.rest.OnResponseListener
        public void onFinish(final int i) {
            if (this.mQueue.contains(this.mWork)) {
                this.mQueue.remove(this.mWork);
            }
            HandlerDelivery.getInstance().post(new Runnable() { // from class: com.yanzhenjie.nohttp.rest.RequestQueue.AsyncCallback.4
                @Override // java.lang.Runnable
                public void run() {
                    AsyncCallback.this.mCallback.onFinish(i);
                }
            });
        }

        @Override // com.yanzhenjie.nohttp.rest.OnResponseListener
        public void onStart(final int i) {
            HandlerDelivery.getInstance().post(new Runnable() { // from class: com.yanzhenjie.nohttp.rest.RequestQueue.AsyncCallback.1
                @Override // java.lang.Runnable
                public void run() {
                    AsyncCallback.this.mCallback.onStart(i);
                }
            });
        }

        @Override // com.yanzhenjie.nohttp.rest.OnResponseListener
        public void onSucceed(final int i, final Response<T> response) {
            HandlerDelivery.getInstance().post(new Runnable() { // from class: com.yanzhenjie.nohttp.rest.RequestQueue.AsyncCallback.2
                @Override // java.lang.Runnable
                public void run() {
                    AsyncCallback.this.mCallback.onSucceed(i, response);
                }
            });
        }

        public void setQueue(BlockingQueue<Work<? extends Request<?>, ?>> blockingQueue) {
            this.mQueue = blockingQueue;
        }

        public void setWork(Work<? extends Request<?>, ?> work) {
            this.mWork = work;
        }
    }

    public RequestQueue(int i) {
        this.mDispatchers = new RequestDispatcher[i];
    }

    public <T> void add(int i, final Request<T> request, OnResponseListener<T> onResponseListener) {
        Worker worker = new Worker(request);
        AsyncCallback<T> asyncCallback = new AsyncCallback<T>(onResponseListener) { // from class: com.yanzhenjie.nohttp.rest.RequestQueue.1
            @Override // com.yanzhenjie.nohttp.rest.RequestQueue.AsyncCallback, com.yanzhenjie.nohttp.rest.OnResponseListener
            public void onFinish(int i2) {
                RequestQueue.this.mCancelerManager.removeCancel(request);
                super.onFinish(i2);
            }
        };
        Work<? extends Request<?>, ?> work = new Work<>(worker, i, asyncCallback);
        work.setSequence(this.mInteger.incrementAndGet());
        asyncCallback.setQueue(this.mQueue);
        asyncCallback.setWork(work);
        request.setCancelable(work);
        this.mCancelerManager.addCancel(request, work);
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
            RequestDispatcher requestDispatcher = new RequestDispatcher(this.mQueue);
            this.mDispatchers[i] = requestDispatcher;
            requestDispatcher.start();
        }
    }

    public void stop() {
        RequestDispatcher[] requestDispatcherArr;
        cancelAll();
        for (RequestDispatcher requestDispatcher : this.mDispatchers) {
            if (requestDispatcher != null) {
                requestDispatcher.quit();
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
