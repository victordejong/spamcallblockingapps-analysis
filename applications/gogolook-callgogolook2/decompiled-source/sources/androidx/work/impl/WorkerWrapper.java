package androidx.work.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.work.Configuration;
import androidx.work.Data;
import androidx.work.InputMerger;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.WorkerParameters;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkTagDao;
import androidx.work.impl.utils.WorkForegroundUpdater;
import androidx.work.impl.utils.WorkProgressUpdater;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/WorkerWrapper.class */
public class WorkerWrapper implements Runnable {
    public static final String TAG = Logger.tagWithPrefix("WorkerWrapper");
    public Context mAppContext;
    public Configuration mConfiguration;
    public DependencyDao mDependencyDao;
    public ForegroundProcessor mForegroundProcessor;
    public volatile boolean mInterrupted;
    public WorkerParameters.RuntimeExtras mRuntimeExtras;
    public List<Scheduler> mSchedulers;
    public List<String> mTags;
    public WorkDatabase mWorkDatabase;
    public String mWorkDescription;
    public WorkSpec mWorkSpec;
    public WorkSpecDao mWorkSpecDao;
    public String mWorkSpecId;
    public WorkTagDao mWorkTagDao;
    public TaskExecutor mWorkTaskExecutor;
    public ListenableWorker mWorker;
    @NonNull
    public ListenableWorker.Result mResult = ListenableWorker.Result.failure();
    @NonNull
    public SettableFuture<Boolean> mFuture = SettableFuture.create();
    @Nullable
    public AbstractFutureC9382a<ListenableWorker.Result> mInnerFuture = null;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/WorkerWrapper$Builder.class */
    public static class Builder {
        @NonNull
        public Context mAppContext;
        @NonNull
        public Configuration mConfiguration;
        @NonNull
        public ForegroundProcessor mForegroundProcessor;
        @NonNull
        public WorkerParameters.RuntimeExtras mRuntimeExtras = new WorkerParameters.RuntimeExtras();
        public List<Scheduler> mSchedulers;
        @NonNull
        public WorkDatabase mWorkDatabase;
        @NonNull
        public String mWorkSpecId;
        @NonNull
        public TaskExecutor mWorkTaskExecutor;
        @Nullable
        public ListenableWorker mWorker;

        public Builder(@NonNull Context context, @NonNull Configuration configuration, @NonNull TaskExecutor taskExecutor, @NonNull ForegroundProcessor foregroundProcessor, @NonNull WorkDatabase workDatabase, @NonNull String str) {
            this.mAppContext = context.getApplicationContext();
            this.mWorkTaskExecutor = taskExecutor;
            this.mForegroundProcessor = foregroundProcessor;
            this.mConfiguration = configuration;
            this.mWorkDatabase = workDatabase;
            this.mWorkSpecId = str;
        }

        public WorkerWrapper build() {
            return new WorkerWrapper(this);
        }

        @NonNull
        public Builder withRuntimeExtras(@Nullable WorkerParameters.RuntimeExtras runtimeExtras) {
            if (runtimeExtras != null) {
                this.mRuntimeExtras = runtimeExtras;
            }
            return this;
        }

        @NonNull
        public Builder withSchedulers(@NonNull List<Scheduler> list) {
            this.mSchedulers = list;
            return this;
        }

        @NonNull
        @VisibleForTesting
        public Builder withWorker(@NonNull ListenableWorker listenableWorker) {
            this.mWorker = listenableWorker;
            return this;
        }
    }

    public WorkerWrapper(@NonNull Builder builder) {
        this.mAppContext = builder.mAppContext;
        this.mWorkTaskExecutor = builder.mWorkTaskExecutor;
        this.mForegroundProcessor = builder.mForegroundProcessor;
        this.mWorkSpecId = builder.mWorkSpecId;
        this.mSchedulers = builder.mSchedulers;
        this.mRuntimeExtras = builder.mRuntimeExtras;
        this.mWorker = builder.mWorker;
        this.mConfiguration = builder.mConfiguration;
        this.mWorkDatabase = builder.mWorkDatabase;
        this.mWorkSpecDao = this.mWorkDatabase.workSpecDao();
        this.mDependencyDao = this.mWorkDatabase.dependencyDao();
        this.mWorkTagDao = this.mWorkDatabase.workTagDao();
    }

    private String createWorkDescription(List<String> list) {
        StringBuilder sb = new StringBuilder("Work [ id=");
        sb.append(this.mWorkSpecId);
        sb.append(", tags={ ");
        boolean z = true;
        for (String str : list) {
            if (z) {
                z = false;
            } else {
                sb.append(UserProfile.CARD_CATE_SEPARATOR);
            }
            sb.append(str);
        }
        sb.append(" } ]");
        return sb.toString();
    }

    private void handleResult(ListenableWorker.Result result) {
        if (result instanceof ListenableWorker.Result.Success) {
            Logger.get().info(TAG, String.format("Worker result SUCCESS for %s", this.mWorkDescription), new Throwable[0]);
            if (this.mWorkSpec.isPeriodic()) {
                resetPeriodicAndResolve();
            } else {
                setSucceededAndResolve();
            }
        } else if (result instanceof ListenableWorker.Result.Retry) {
            Logger.get().info(TAG, String.format("Worker result RETRY for %s", this.mWorkDescription), new Throwable[0]);
            rescheduleAndResolve();
        } else {
            Logger.get().info(TAG, String.format("Worker result FAILURE for %s", this.mWorkDescription), new Throwable[0]);
            if (this.mWorkSpec.isPeriodic()) {
                resetPeriodicAndResolve();
            } else {
                setFailedAndResolve();
            }
        }
    }

    private void iterativelyFailWorkAndDependents(String str) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            if (this.mWorkSpecDao.getState(str2) != WorkInfo.State.CANCELLED) {
                this.mWorkSpecDao.setState(WorkInfo.State.FAILED, str2);
            }
            linkedList.addAll(this.mDependencyDao.getDependentWorkIds(str2));
        }
    }

    private void rescheduleAndResolve() {
        this.mWorkDatabase.beginTransaction();
        try {
            this.mWorkSpecDao.setState(WorkInfo.State.ENQUEUED, this.mWorkSpecId);
            this.mWorkSpecDao.setPeriodStartTime(this.mWorkSpecId, System.currentTimeMillis());
            this.mWorkSpecDao.markWorkSpecScheduled(this.mWorkSpecId, -1L);
            this.mWorkDatabase.setTransactionSuccessful();
        } finally {
            this.mWorkDatabase.endTransaction();
            resolve(true);
        }
    }

    private void resetPeriodicAndResolve() {
        this.mWorkDatabase.beginTransaction();
        try {
            this.mWorkSpecDao.setPeriodStartTime(this.mWorkSpecId, System.currentTimeMillis());
            this.mWorkSpecDao.setState(WorkInfo.State.ENQUEUED, this.mWorkSpecId);
            this.mWorkSpecDao.resetWorkSpecRunAttemptCount(this.mWorkSpecId);
            this.mWorkSpecDao.markWorkSpecScheduled(this.mWorkSpecId, -1L);
            this.mWorkDatabase.setTransactionSuccessful();
        } finally {
            this.mWorkDatabase.endTransaction();
            resolve(false);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002f A[Catch: all -> 0x008f, TRY_ENTER, TryCatch #0 {all -> 0x008f, blocks: (B:3:0x0007, B:5:0x0018, B:12:0x002f, B:15:0x003e, B:17:0x0050, B:19:0x0056, B:21:0x005d, B:23:0x0067, B:25:0x0075), top: B:31:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003e A[Catch: all -> 0x008f, TRY_ENTER, TryCatch #0 {all -> 0x008f, blocks: (B:3:0x0007, B:5:0x0018, B:12:0x002f, B:15:0x003e, B:17:0x0050, B:19:0x0056, B:21:0x005d, B:23:0x0067, B:25:0x0075), top: B:31:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void resolve(boolean r6) {
        /*
            r5 = this;
            r0 = r5
            androidx.work.impl.WorkDatabase r0 = r0.mWorkDatabase
            r0.beginTransaction()
            r0 = r5
            androidx.work.impl.WorkDatabase r0 = r0.mWorkDatabase     // Catch: all -> 0x008f
            androidx.work.impl.model.WorkSpecDao r0 = r0.workSpecDao()     // Catch: all -> 0x008f
            java.util.List r0 = r0.getAllUnfinishedWork()     // Catch: all -> 0x008f
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0029
            r0 = r7
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x008f
            if (r0 == 0) goto L_0x0024
            goto L_0x0029
        L_0x0024:
            r0 = 0
            r8 = r0
            goto L_0x002b
        L_0x0029:
            r0 = 1
            r8 = r0
        L_0x002b:
            r0 = r8
            if (r0 == 0) goto L_0x003a
            r0 = r5
            android.content.Context r0 = r0.mAppContext     // Catch: all -> 0x008f
            java.lang.Class<androidx.work.impl.background.systemalarm.RescheduleReceiver> r1 = androidx.work.impl.background.systemalarm.RescheduleReceiver.class
            r2 = 0
            androidx.work.impl.utils.PackageManagerHelper.setComponentEnabled(r0, r1, r2)     // Catch: all -> 0x008f
        L_0x003a:
            r0 = r6
            if (r0 == 0) goto L_0x004f
            r0 = r5
            androidx.work.impl.model.WorkSpecDao r0 = r0.mWorkSpecDao     // Catch: all -> 0x008f
            r1 = r5
            java.lang.String r1 = r1.mWorkSpecId     // Catch: all -> 0x008f
            r2 = -1
            int r0 = r0.markWorkSpecScheduled(r1, r2)     // Catch: all -> 0x008f
        L_0x004f:
            r0 = r5
            androidx.work.impl.model.WorkSpec r0 = r0.mWorkSpec     // Catch: all -> 0x008f
            if (r0 == 0) goto L_0x0074
            r0 = r5
            androidx.work.ListenableWorker r0 = r0.mWorker     // Catch: all -> 0x008f
            if (r0 == 0) goto L_0x0074
            r0 = r5
            androidx.work.ListenableWorker r0 = r0.mWorker     // Catch: all -> 0x008f
            boolean r0 = r0.isRunInForeground()     // Catch: all -> 0x008f
            if (r0 == 0) goto L_0x0074
            r0 = r5
            androidx.work.impl.foreground.ForegroundProcessor r0 = r0.mForegroundProcessor     // Catch: all -> 0x008f
            r1 = r5
            java.lang.String r1 = r1.mWorkSpecId     // Catch: all -> 0x008f
            r0.stopForeground(r1)     // Catch: all -> 0x008f
        L_0x0074:
            r0 = r5
            androidx.work.impl.WorkDatabase r0 = r0.mWorkDatabase     // Catch: all -> 0x008f
            r0.setTransactionSuccessful()     // Catch: all -> 0x008f
            r0 = r5
            androidx.work.impl.WorkDatabase r0 = r0.mWorkDatabase
            r0.endTransaction()
            r0 = r5
            androidx.work.impl.utils.futures.SettableFuture<java.lang.Boolean> r0 = r0.mFuture
            r1 = r6
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            boolean r0 = r0.set(r1)
            return
        L_0x008f:
            r7 = move-exception
            r0 = r5
            androidx.work.impl.WorkDatabase r0 = r0.mWorkDatabase
            r0.endTransaction()
            r0 = r7
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.WorkerWrapper.resolve(boolean):void");
    }

    private void resolveIncorrectStatus() {
        WorkInfo.State state = this.mWorkSpecDao.getState(this.mWorkSpecId);
        if (state == WorkInfo.State.RUNNING) {
            Logger.get().debug(TAG, String.format("Status for %s is RUNNING;not doing any work and rescheduling for later execution", this.mWorkSpecId), new Throwable[0]);
            resolve(true);
            return;
        }
        Logger.get().debug(TAG, String.format("Status for %s is %s; not doing any work", this.mWorkSpecId, state), new Throwable[0]);
        resolve(false);
    }

    private void runWorker() {
        Data data;
        if (!tryCheckForInterruptionAndResolve()) {
            this.mWorkDatabase.beginTransaction();
            try {
                this.mWorkSpec = this.mWorkSpecDao.getWorkSpec(this.mWorkSpecId);
                if (this.mWorkSpec == null) {
                    Logger.get().error(TAG, String.format("Didn't find WorkSpec for id %s", this.mWorkSpecId), new Throwable[0]);
                    resolve(false);
                } else if (this.mWorkSpec.state != WorkInfo.State.ENQUEUED) {
                    resolveIncorrectStatus();
                    this.mWorkDatabase.setTransactionSuccessful();
                    Logger.get().debug(TAG, String.format("%s is not in ENQUEUED state. Nothing more to do.", this.mWorkSpec.workerClassName), new Throwable[0]);
                } else {
                    if (this.mWorkSpec.isPeriodic() || this.mWorkSpec.isBackedOff()) {
                        long currentTimeMillis = System.currentTimeMillis();
                        if (!(this.mWorkSpec.periodStartTime == 0) && currentTimeMillis < this.mWorkSpec.calculateNextRunTime()) {
                            Logger.get().debug(TAG, String.format("Delaying execution for %s because it is being executed before schedule.", this.mWorkSpec.workerClassName), new Throwable[0]);
                            resolve(true);
                            return;
                        }
                    }
                    this.mWorkDatabase.setTransactionSuccessful();
                    this.mWorkDatabase.endTransaction();
                    if (this.mWorkSpec.isPeriodic()) {
                        data = this.mWorkSpec.input;
                    } else {
                        InputMerger createInputMergerWithDefaultFallback = this.mConfiguration.getInputMergerFactory().createInputMergerWithDefaultFallback(this.mWorkSpec.inputMergerClassName);
                        if (createInputMergerWithDefaultFallback == null) {
                            Logger.get().error(TAG, String.format("Could not create Input Merger %s", this.mWorkSpec.inputMergerClassName), new Throwable[0]);
                            setFailedAndResolve();
                            return;
                        }
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(this.mWorkSpec.input);
                        arrayList.addAll(this.mWorkSpecDao.getInputsFromPrerequisites(this.mWorkSpecId));
                        data = createInputMergerWithDefaultFallback.merge(arrayList);
                    }
                    WorkerParameters workerParameters = new WorkerParameters(UUID.fromString(this.mWorkSpecId), data, this.mTags, this.mRuntimeExtras, this.mWorkSpec.runAttemptCount, this.mConfiguration.getExecutor(), this.mWorkTaskExecutor, this.mConfiguration.getWorkerFactory(), new WorkProgressUpdater(this.mWorkDatabase, this.mWorkTaskExecutor), new WorkForegroundUpdater(this.mWorkDatabase, this.mForegroundProcessor, this.mWorkTaskExecutor));
                    if (this.mWorker == null) {
                        this.mWorker = this.mConfiguration.getWorkerFactory().createWorkerWithDefaultFallback(this.mAppContext, this.mWorkSpec.workerClassName, workerParameters);
                    }
                    ListenableWorker listenableWorker = this.mWorker;
                    if (listenableWorker == null) {
                        Logger.get().error(TAG, String.format("Could not create Worker %s", this.mWorkSpec.workerClassName), new Throwable[0]);
                        setFailedAndResolve();
                    } else if (listenableWorker.isUsed()) {
                        Logger.get().error(TAG, String.format("Received an already-used Worker %s; WorkerFactory should return new instances", this.mWorkSpec.workerClassName), new Throwable[0]);
                        setFailedAndResolve();
                    } else {
                        this.mWorker.setUsed();
                        if (!trySetRunning()) {
                            resolveIncorrectStatus();
                        } else if (!tryCheckForInterruptionAndResolve()) {
                            final SettableFuture create = SettableFuture.create();
                            this.mWorkTaskExecutor.getMainThreadExecutor().execute(new Runnable() { // from class: androidx.work.impl.WorkerWrapper.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    try {
                                        Logger.get().debug(WorkerWrapper.TAG, String.format("Starting work for %s", WorkerWrapper.this.mWorkSpec.workerClassName), new Throwable[0]);
                                        WorkerWrapper.this.mInnerFuture = WorkerWrapper.this.mWorker.startWork();
                                        create.setFuture(WorkerWrapper.this.mInnerFuture);
                                    } catch (Throwable th) {
                                        create.setException(th);
                                    }
                                }
                            });
                            final String str = this.mWorkDescription;
                            create.addListener(new Runnable() { // from class: androidx.work.impl.WorkerWrapper.2
                                @Override // java.lang.Runnable
                                @SuppressLint({"SyntheticAccessor"})
                                public void run() {
                                    Throwable e;
                                    try {
                                        try {
                                            ListenableWorker.Result result = (ListenableWorker.Result) create.get();
                                            if (result == null) {
                                                Logger.get().error(WorkerWrapper.TAG, String.format("%s returned a null result. Treating it as a failure.", WorkerWrapper.this.mWorkSpec.workerClassName), new Throwable[0]);
                                            } else {
                                                Logger.get().debug(WorkerWrapper.TAG, String.format("%s returned a %s result.", WorkerWrapper.this.mWorkSpec.workerClassName, result), new Throwable[0]);
                                                WorkerWrapper.this.mResult = result;
                                            }
                                        } catch (InterruptedException e2) {
                                            e = e2;
                                            Logger.get().error(WorkerWrapper.TAG, String.format("%s failed because it threw an exception/error", str), e);
                                        } catch (CancellationException e3) {
                                            Logger.get().info(WorkerWrapper.TAG, String.format("%s was cancelled", str), e3);
                                        } catch (ExecutionException e4) {
                                            e = e4;
                                            Logger.get().error(WorkerWrapper.TAG, String.format("%s failed because it threw an exception/error", str), e);
                                        }
                                    } finally {
                                        WorkerWrapper.this.onWorkFinished();
                                    }
                                }
                            }, this.mWorkTaskExecutor.getBackgroundExecutor());
                        }
                    }
                }
            } finally {
                this.mWorkDatabase.endTransaction();
            }
        }
    }

    private void setSucceededAndResolve() {
        this.mWorkDatabase.beginTransaction();
        try {
            this.mWorkSpecDao.setState(WorkInfo.State.SUCCEEDED, this.mWorkSpecId);
            this.mWorkSpecDao.setOutput(this.mWorkSpecId, ((ListenableWorker.Result.Success) this.mResult).getOutputData());
            long currentTimeMillis = System.currentTimeMillis();
            for (String str : this.mDependencyDao.getDependentWorkIds(this.mWorkSpecId)) {
                if (this.mWorkSpecDao.getState(str) == WorkInfo.State.BLOCKED && this.mDependencyDao.hasCompletedAllPrerequisites(str)) {
                    Logger.get().info(TAG, String.format("Setting status to enqueued for %s", str), new Throwable[0]);
                    this.mWorkSpecDao.setState(WorkInfo.State.ENQUEUED, str);
                    this.mWorkSpecDao.setPeriodStartTime(str, currentTimeMillis);
                }
            }
            this.mWorkDatabase.setTransactionSuccessful();
        } finally {
            this.mWorkDatabase.endTransaction();
            resolve(false);
        }
    }

    private boolean tryCheckForInterruptionAndResolve() {
        if (!this.mInterrupted) {
            return false;
        }
        Logger.get().debug(TAG, String.format("Work interrupted for %s", this.mWorkDescription), new Throwable[0]);
        WorkInfo.State state = this.mWorkSpecDao.getState(this.mWorkSpecId);
        if (state == null) {
            resolve(false);
            return true;
        }
        resolve(!state.isFinished());
        return true;
    }

    private boolean trySetRunning() {
        this.mWorkDatabase.beginTransaction();
        try {
            boolean z = true;
            if (this.mWorkSpecDao.getState(this.mWorkSpecId) == WorkInfo.State.ENQUEUED) {
                this.mWorkSpecDao.setState(WorkInfo.State.RUNNING, this.mWorkSpecId);
                this.mWorkSpecDao.incrementWorkSpecRunAttemptCount(this.mWorkSpecId);
            } else {
                z = false;
            }
            this.mWorkDatabase.setTransactionSuccessful();
            return z;
        } finally {
            this.mWorkDatabase.endTransaction();
        }
    }

    @NonNull
    public AbstractFutureC9382a<Boolean> getFuture() {
        return this.mFuture;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void interrupt() {
        boolean z;
        this.mInterrupted = true;
        tryCheckForInterruptionAndResolve();
        AbstractFutureC9382a<ListenableWorker.Result> aVar = this.mInnerFuture;
        if (aVar != null) {
            z = aVar.isDone();
            this.mInnerFuture.cancel(true);
        } else {
            z = false;
        }
        ListenableWorker listenableWorker = this.mWorker;
        if (listenableWorker == null || z) {
            Logger.get().debug(TAG, String.format("WorkSpec %s is already done. Not interrupting.", this.mWorkSpec), new Throwable[0]);
        } else {
            listenableWorker.stop();
        }
    }

    public void onWorkFinished() {
        if (!tryCheckForInterruptionAndResolve()) {
            this.mWorkDatabase.beginTransaction();
            try {
                WorkInfo.State state = this.mWorkSpecDao.getState(this.mWorkSpecId);
                this.mWorkDatabase.workProgressDao().delete(this.mWorkSpecId);
                if (state == null) {
                    resolve(false);
                } else if (state == WorkInfo.State.RUNNING) {
                    handleResult(this.mResult);
                } else if (!state.isFinished()) {
                    rescheduleAndResolve();
                }
                this.mWorkDatabase.setTransactionSuccessful();
            } finally {
                this.mWorkDatabase.endTransaction();
            }
        }
        List<Scheduler> list = this.mSchedulers;
        if (list != null) {
            for (Scheduler scheduler : list) {
                scheduler.cancel(this.mWorkSpecId);
            }
            Schedulers.schedule(this.mConfiguration, this.mWorkDatabase, this.mSchedulers);
        }
    }

    @Override // java.lang.Runnable
    @WorkerThread
    public void run() {
        this.mTags = this.mWorkTagDao.getTagsForWorkSpecId(this.mWorkSpecId);
        this.mWorkDescription = createWorkDescription(this.mTags);
        runWorker();
    }

    @VisibleForTesting
    public void setFailedAndResolve() {
        this.mWorkDatabase.beginTransaction();
        try {
            iterativelyFailWorkAndDependents(this.mWorkSpecId);
            this.mWorkSpecDao.setOutput(this.mWorkSpecId, ((ListenableWorker.Result.Failure) this.mResult).getOutputData());
            this.mWorkDatabase.setTransactionSuccessful();
        } finally {
            this.mWorkDatabase.endTransaction();
            resolve(false);
        }
    }
}
