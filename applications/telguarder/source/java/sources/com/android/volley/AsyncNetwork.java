package com.android.volley;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/android/volley/AsyncNetwork.class */
public abstract class AsyncNetwork implements Network {
    private ExecutorService mBlockingExecutor;
    private ExecutorService mNonBlockingExecutor;
    private ScheduledExecutorService mNonBlockingScheduledExecutor;

    /* loaded from: classes-dex2jar.jar:com/android/volley/AsyncNetwork$OnRequestComplete.class */
    public interface OnRequestComplete {
        void onError(VolleyError volleyError);

        void onSuccess(NetworkResponse networkResponse);
    }

    public ExecutorService getBlockingExecutor() {
        return this.mBlockingExecutor;
    }

    protected ExecutorService getNonBlockingExecutor() {
        return this.mNonBlockingExecutor;
    }

    protected ScheduledExecutorService getNonBlockingScheduledExecutor() {
        return this.mNonBlockingScheduledExecutor;
    }

    @Override // com.android.volley.Network
    public NetworkResponse performRequest(Request<?> request) throws VolleyError {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final AtomicReference atomicReference = new AtomicReference();
        final AtomicReference atomicReference2 = new AtomicReference();
        performRequest(request, new OnRequestComplete() { // from class: com.android.volley.AsyncNetwork.1
            @Override // com.android.volley.AsyncNetwork.OnRequestComplete
            public void onError(VolleyError volleyError) {
                atomicReference2.set(volleyError);
                countDownLatch.countDown();
            }

            @Override // com.android.volley.AsyncNetwork.OnRequestComplete
            public void onSuccess(NetworkResponse networkResponse) {
                atomicReference.set(networkResponse);
                countDownLatch.countDown();
            }
        });
        try {
            countDownLatch.await();
            if (atomicReference.get() != null) {
                return (NetworkResponse) atomicReference.get();
            }
            if (atomicReference2.get() == null) {
                throw new VolleyError("Neither response entry was set");
            }
            throw ((VolleyError) atomicReference2.get());
        } catch (InterruptedException e) {
            VolleyLog.m1389e(e, "while waiting for CountDownLatch", new Object[0]);
            Thread.currentThread().interrupt();
            throw new VolleyError(e);
        }
    }

    public abstract void performRequest(Request<?> request, OnRequestComplete onRequestComplete);

    public void setBlockingExecutor(ExecutorService executorService) {
        this.mBlockingExecutor = executorService;
    }

    public void setNonBlockingExecutor(ExecutorService executorService) {
        this.mNonBlockingExecutor = executorService;
    }

    public void setNonBlockingScheduledExecutor(ScheduledExecutorService scheduledExecutorService) {
        this.mNonBlockingScheduledExecutor = scheduledExecutorService;
    }
}
