package com.android.contacts.util;

import android.os.AsyncTask;
import android.os.Looper;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/AsyncTaskExecutors.class */
public final class AsyncTaskExecutors {
    private static AsyncTaskExecutorFactory mInjectedAsyncTaskExecutorFactory = null;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/AsyncTaskExecutors$AsyncTaskExecutorFactory.class */
    public interface AsyncTaskExecutorFactory {
        AsyncTaskExecutor createAsyncTaskExeuctor();
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/AsyncTaskExecutors$SimpleAsyncTaskExecutor.class */
    private static class SimpleAsyncTaskExecutor implements AsyncTaskExecutor {
        private final Executor mExecutor;

        public SimpleAsyncTaskExecutor(Executor executor) {
            this.mExecutor = executor;
        }

        @Override // com.android.contacts.util.AsyncTaskExecutor
        public <T> AsyncTask<T, ?, ?> submit(Object obj, AsyncTask<T, ?, ?> asyncTask, T... tArr) {
            AsyncTaskExecutors.checkCalledFromUiThread();
            return asyncTask.executeOnExecutor(this.mExecutor, tArr);
        }
    }

    public static void checkCalledFromUiThread() {
        String str = "submit method must be called from ui thread, was: " + Thread.currentThread();
        if (!(Thread.currentThread() == Looper.getMainLooper().getThread())) {
            throw new IllegalStateException(String.valueOf(str));
        }
    }

    public static AsyncTaskExecutor createAsyncTaskExecutor() {
        AsyncTaskExecutor createAsyncTaskExeuctor;
        synchronized (AsyncTaskExecutors.class) {
            try {
                createAsyncTaskExeuctor = mInjectedAsyncTaskExecutorFactory != null ? mInjectedAsyncTaskExecutorFactory.createAsyncTaskExeuctor() : new SimpleAsyncTaskExecutor(AsyncTask.SERIAL_EXECUTOR);
            } catch (Throwable th) {
                throw th;
            }
        }
        return createAsyncTaskExeuctor;
    }

    public static AsyncTaskExecutor createThreadPoolExecutor() {
        AsyncTaskExecutor createAsyncTaskExeuctor;
        synchronized (AsyncTaskExecutors.class) {
            try {
                createAsyncTaskExeuctor = mInjectedAsyncTaskExecutorFactory != null ? mInjectedAsyncTaskExecutorFactory.createAsyncTaskExeuctor() : new SimpleAsyncTaskExecutor(AsyncTask.THREAD_POOL_EXECUTOR);
            } catch (Throwable th) {
                throw th;
            }
        }
        return createAsyncTaskExeuctor;
    }

    public static void setFactoryForTest(AsyncTaskExecutorFactory asyncTaskExecutorFactory) {
        synchronized (AsyncTaskExecutors.class) {
            try {
                mInjectedAsyncTaskExecutorFactory = asyncTaskExecutorFactory;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
