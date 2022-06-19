package com.lidroid.xutils.task;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import com.lidroid.xutils.util.LogUtils;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/task/PriorityAsyncTask.class */
public abstract class PriorityAsyncTask<Params, Progress, Result> implements TaskHandler {
    private static final int MESSAGE_POST_PROGRESS = 2;
    private static final int MESSAGE_POST_RESULT = 1;
    private final FutureTask<Result> mFuture;
    private final WorkerRunnable<Params, Result> mWorker;
    private Priority priority;
    private static final InternalHandler sHandler = new InternalHandler();
    public static final Executor sDefaultExecutor = new PriorityExecutor();
    private volatile boolean mExecuteInvoked = false;
    private final AtomicBoolean mCancelled = new AtomicBoolean();
    private final AtomicBoolean mTaskInvoked = new AtomicBoolean();

    /* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult.class */
    public static class AsyncTaskResult<Data> {
        final Data[] mData;
        final PriorityAsyncTask mTask;

        AsyncTaskResult(PriorityAsyncTask priorityAsyncTask, Data... dataArr) {
            this.mTask = priorityAsyncTask;
            this.mData = dataArr;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/task/PriorityAsyncTask$InternalHandler.class */
    public static class InternalHandler extends Handler {
        private InternalHandler() {
            super(Looper.getMainLooper());
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            AsyncTaskResult asyncTaskResult = (AsyncTaskResult) message.obj;
            int i = message.what;
            if (i == 1) {
                asyncTaskResult.mTask.finish(asyncTaskResult.mData[0]);
            } else if (i != 2) {
            } else {
                asyncTaskResult.mTask.onProgressUpdate(asyncTaskResult.mData);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/task/PriorityAsyncTask$WorkerRunnable.class */
    public static abstract class WorkerRunnable<Params, Result> implements Callable<Result> {
        Params[] mParams;

        private WorkerRunnable() {
        }
    }

    public PriorityAsyncTask() {
        WorkerRunnable<Params, Result> workerRunnable = new WorkerRunnable<Params, Result>() { // from class: com.lidroid.xutils.task.PriorityAsyncTask.1
            @Override // java.util.concurrent.Callable
            public Result call() {
                PriorityAsyncTask.this.mTaskInvoked.set(true);
                Process.setThreadPriority(10);
                PriorityAsyncTask priorityAsyncTask = PriorityAsyncTask.this;
                return (Result) priorityAsyncTask.postResult(priorityAsyncTask.doInBackground(this.mParams));
            }
        };
        this.mWorker = workerRunnable;
        this.mFuture = new FutureTask<Result>(workerRunnable) { // from class: com.lidroid.xutils.task.PriorityAsyncTask.2
            @Override // java.util.concurrent.FutureTask
            protected void done() {
                try {
                    PriorityAsyncTask.this.postResultIfNotInvoked(get());
                } catch (InterruptedException e) {
                    LogUtils.m2011d(e.getMessage());
                } catch (CancellationException e2) {
                    PriorityAsyncTask.this.postResultIfNotInvoked(null);
                } catch (ExecutionException e3) {
                    throw new RuntimeException("An error occured while executing doInBackground()", e3.getCause());
                }
            }
        };
    }

    public static void execute(Runnable runnable) {
        execute(runnable, Priority.DEFAULT);
    }

    public static void execute(Runnable runnable, Priority priority) {
        sDefaultExecutor.execute(new PriorityRunnable(priority, runnable));
    }

    public void finish(Result result) {
        if (isCancelled()) {
            onCancelled(result);
        } else {
            onPostExecute(result);
        }
    }

    public Result postResult(Result result) {
        sHandler.obtainMessage(1, new AsyncTaskResult(this, result)).sendToTarget();
        return result;
    }

    public void postResultIfNotInvoked(Result result) {
        if (!this.mTaskInvoked.get()) {
            postResult(result);
        }
    }

    @Override // com.lidroid.xutils.task.TaskHandler
    public void cancel() {
        cancel(true);
    }

    public final boolean cancel(boolean z) {
        this.mCancelled.set(true);
        return this.mFuture.cancel(z);
    }

    protected abstract Result doInBackground(Params... paramsArr);

    public final PriorityAsyncTask<Params, Progress, Result> execute(Params... paramsArr) {
        return executeOnExecutor(sDefaultExecutor, paramsArr);
    }

    public final PriorityAsyncTask<Params, Progress, Result> executeOnExecutor(Executor executor, Params... paramsArr) {
        if (!this.mExecuteInvoked) {
            this.mExecuteInvoked = true;
            onPreExecute();
            this.mWorker.mParams = paramsArr;
            executor.execute(new PriorityRunnable(this.priority, this.mFuture));
            return this;
        }
        throw new IllegalStateException("Cannot execute task: the task is already executed.");
    }

    public final Result get() {
        return this.mFuture.get();
    }

    public final Result get(long j, TimeUnit timeUnit) {
        return this.mFuture.get(j, timeUnit);
    }

    public Priority getPriority() {
        return this.priority;
    }

    @Override // com.lidroid.xutils.task.TaskHandler
    public final boolean isCancelled() {
        return this.mCancelled.get();
    }

    @Override // com.lidroid.xutils.task.TaskHandler
    public boolean isPaused() {
        return false;
    }

    protected void onCancelled() {
    }

    protected void onCancelled(Result result) {
        onCancelled();
    }

    protected void onPostExecute(Result result) {
    }

    protected void onPreExecute() {
    }

    protected void onProgressUpdate(Progress... progressArr) {
    }

    @Override // com.lidroid.xutils.task.TaskHandler
    public void pause() {
    }

    public final void publishProgress(Progress... progressArr) {
        if (!isCancelled()) {
            sHandler.obtainMessage(2, new AsyncTaskResult(this, progressArr)).sendToTarget();
        }
    }

    @Override // com.lidroid.xutils.task.TaskHandler
    public void resume() {
    }

    public void setPriority(Priority priority) {
        this.priority = priority;
    }

    @Override // com.lidroid.xutils.task.TaskHandler
    public boolean supportCancel() {
        return true;
    }

    @Override // com.lidroid.xutils.task.TaskHandler
    public boolean supportPause() {
        return false;
    }

    @Override // com.lidroid.xutils.task.TaskHandler
    public boolean supportResume() {
        return false;
    }
}
