package com.facebook.internal;

import com.facebook.FacebookSdk;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.FutureTask;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/LockOnGetVariable.class */
public class LockOnGetVariable<T> {
    private CountDownLatch initLatch;
    private T value;

    public LockOnGetVariable(T t) {
        this.value = t;
    }

    public LockOnGetVariable(final Callable<T> callable) {
        this.initLatch = new CountDownLatch(1);
        FacebookSdk.getExecutor().execute(new FutureTask(new Callable<Void>() { // from class: com.facebook.internal.LockOnGetVariable.1
            /* JADX WARN: Finally extract failed */
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                try {
                    LockOnGetVariable.this.value = callable.call();
                    LockOnGetVariable.this.initLatch.countDown();
                    return null;
                } catch (Throwable th) {
                    LockOnGetVariable.this.initLatch.countDown();
                    throw th;
                }
            }
        }));
    }

    private void waitOnInit() {
        CountDownLatch countDownLatch = this.initLatch;
        if (countDownLatch == null) {
            return;
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException e) {
        }
    }

    public T getValue() {
        waitOnInit();
        return this.value;
    }
}
