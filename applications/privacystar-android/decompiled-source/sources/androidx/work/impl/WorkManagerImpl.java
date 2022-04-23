package androidx.work.impl;

import android.arch.core.util.Function;
import android.arch.lifecycle.LiveData;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import androidx.work.C0610R;
import androidx.work.Configuration;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.ExistingWorkPolicy;
import androidx.work.Logger;
import androidx.work.OneTimeWorkRequest;
import androidx.work.Operation;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkContinuation;
import androidx.work.WorkInfo;
import androidx.work.WorkManager;
import androidx.work.WorkRequest;
import androidx.work.WorkerParameters;
import androidx.work.impl.background.greedy.GreedyScheduler;
import androidx.work.impl.background.systemjob.SystemJobScheduler;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.CancelWorkRunnable;
import androidx.work.impl.utils.ForceStopRunnable;
import androidx.work.impl.utils.LiveDataUtils;
import androidx.work.impl.utils.Preferences;
import androidx.work.impl.utils.PruneWorkRunnable;
import androidx.work.impl.utils.StartWorkRunnable;
import androidx.work.impl.utils.StatusRunnable;
import androidx.work.impl.utils.StopWorkRunnable;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/WorkManagerImpl.class */
public class WorkManagerImpl extends WorkManager {
    public static final int MAX_PRE_JOB_SCHEDULER_API_LEVEL = 22;
    public static final int MIN_JOB_SCHEDULER_API_LEVEL = 23;
    private static WorkManagerImpl sDefaultInstance;
    private static WorkManagerImpl sDelegatedInstance;
    private static final Object sLock = new Object();
    private Configuration mConfiguration;
    private Context mContext;
    private boolean mForceStopRunnableCompleted;
    private final WorkManagerLiveDataTracker mLiveDataTracker;
    private Preferences mPreferences;
    private Processor mProcessor;
    private BroadcastReceiver.PendingResult mRescheduleReceiverResult;
    private List<Scheduler> mSchedulers;
    private WorkDatabase mWorkDatabase;
    private TaskExecutor mWorkTaskExecutor;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public WorkManagerImpl(@NonNull Context context, @NonNull Configuration configuration, @NonNull TaskExecutor taskExecutor) {
        this(context, configuration, taskExecutor, context.getResources().getBoolean(C0610R.bool.workmanager_test_configuration));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public WorkManagerImpl(@NonNull Context context, @NonNull Configuration configuration, @NonNull TaskExecutor taskExecutor, @NonNull WorkDatabase workDatabase, @NonNull List<Scheduler> list, @NonNull Processor processor) {
        this.mLiveDataTracker = new WorkManagerLiveDataTracker();
        internalInit(context, configuration, taskExecutor, workDatabase, list, processor);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public WorkManagerImpl(@NonNull Context context, @NonNull Configuration configuration, @NonNull TaskExecutor taskExecutor, boolean z) {
        this.mLiveDataTracker = new WorkManagerLiveDataTracker();
        Context applicationContext = context.getApplicationContext();
        WorkDatabase create = WorkDatabase.create(applicationContext, z);
        Logger.setLogger(new Logger.LogcatLogger(configuration.getMinimumLoggingLevel()));
        List<Scheduler> createSchedulers = createSchedulers(applicationContext);
        internalInit(context, configuration, taskExecutor, create, createSchedulers, new Processor(context, configuration, taskExecutor, create, createSchedulers));
    }

    private WorkContinuationImpl createWorkContinuationForUniquePeriodicWork(@NonNull String str, @NonNull ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy, @NonNull PeriodicWorkRequest periodicWorkRequest) {
        return new WorkContinuationImpl(this, str, existingPeriodicWorkPolicy == ExistingPeriodicWorkPolicy.KEEP ? ExistingWorkPolicy.KEEP : ExistingWorkPolicy.REPLACE, Collections.singletonList(periodicWorkRequest));
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static WorkManagerImpl getInstance() {
        synchronized (sLock) {
            if (sDelegatedInstance != null) {
                return sDelegatedInstance;
            }
            return sDefaultInstance;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static void initialize(@NonNull Context context, @NonNull Configuration configuration) {
        synchronized (sLock) {
            if (sDelegatedInstance != null && sDefaultInstance != null) {
                throw new IllegalStateException("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class levelJavadoc for more information.");
            } else if (sDelegatedInstance == null) {
                Context applicationContext = context.getApplicationContext();
                if (sDefaultInstance == null) {
                    sDefaultInstance = new WorkManagerImpl(applicationContext, configuration, new WorkManagerTaskExecutor());
                }
                sDelegatedInstance = sDefaultInstance;
            }
        }
    }

    private void internalInit(@NonNull Context context, @NonNull Configuration configuration, @NonNull TaskExecutor taskExecutor, @NonNull WorkDatabase workDatabase, @NonNull List<Scheduler> list, @NonNull Processor processor) {
        Context applicationContext = context.getApplicationContext();
        this.mContext = applicationContext;
        this.mConfiguration = configuration;
        this.mWorkTaskExecutor = taskExecutor;
        this.mWorkDatabase = workDatabase;
        this.mSchedulers = list;
        this.mProcessor = processor;
        this.mPreferences = new Preferences(this.mContext);
        this.mForceStopRunnableCompleted = false;
        this.mWorkTaskExecutor.executeOnBackgroundThread(new ForceStopRunnable(applicationContext, this));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static void setDelegate(WorkManagerImpl workManagerImpl) {
        synchronized (sLock) {
            sDelegatedInstance = workManagerImpl;
        }
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public WorkContinuation beginUniqueWork(@NonNull String str, @NonNull ExistingWorkPolicy existingWorkPolicy, @NonNull List<OneTimeWorkRequest> list) {
        if (!list.isEmpty()) {
            return new WorkContinuationImpl(this, str, existingWorkPolicy, list);
        }
        throw new IllegalArgumentException("beginUniqueWork needs at least one OneTimeWorkRequest.");
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public WorkContinuation beginWith(@NonNull List<OneTimeWorkRequest> list) {
        if (!list.isEmpty()) {
            return new WorkContinuationImpl(this, list);
        }
        throw new IllegalArgumentException("beginWith needs at least one OneTimeWorkRequest.");
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public Operation cancelAllWork() {
        CancelWorkRunnable forAll = CancelWorkRunnable.forAll(this);
        this.mWorkTaskExecutor.executeOnBackgroundThread(forAll);
        return forAll.getOperation();
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public Operation cancelAllWorkByTag(@NonNull String str) {
        CancelWorkRunnable forTag = CancelWorkRunnable.forTag(str, this);
        this.mWorkTaskExecutor.executeOnBackgroundThread(forTag);
        return forTag.getOperation();
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public Operation cancelUniqueWork(@NonNull String str) {
        CancelWorkRunnable forName = CancelWorkRunnable.forName(str, this, true);
        this.mWorkTaskExecutor.executeOnBackgroundThread(forName);
        return forName.getOperation();
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public Operation cancelWorkById(@NonNull UUID uuid) {
        CancelWorkRunnable forId = CancelWorkRunnable.forId(uuid, this);
        this.mWorkTaskExecutor.executeOnBackgroundThread(forId);
        return forId.getOperation();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public List<Scheduler> createSchedulers(Context context) {
        return Arrays.asList(Schedulers.createBestAvailableBackgroundScheduler(context, this), new GreedyScheduler(context, this));
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public Operation enqueue(@NonNull List<? extends WorkRequest> list) {
        if (!list.isEmpty()) {
            return new WorkContinuationImpl(this, list).enqueue();
        }
        throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public Operation enqueueUniquePeriodicWork(@NonNull String str, @NonNull ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy, @NonNull PeriodicWorkRequest periodicWorkRequest) {
        return createWorkContinuationForUniquePeriodicWork(str, existingPeriodicWorkPolicy, periodicWorkRequest).enqueue();
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public Operation enqueueUniqueWork(@NonNull String str, @NonNull ExistingWorkPolicy existingWorkPolicy, @NonNull List<OneTimeWorkRequest> list) {
        return new WorkContinuationImpl(this, str, existingWorkPolicy, list).enqueue();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public Context getApplicationContext() {
        return this.mContext;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public Configuration getConfiguration() {
        return this.mConfiguration;
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public ListenableFuture<Long> getLastCancelAllTimeMillis() {
        final SettableFuture create = SettableFuture.create();
        final Preferences preferences = this.mPreferences;
        this.mWorkTaskExecutor.executeOnBackgroundThread(new Runnable() { // from class: androidx.work.impl.WorkManagerImpl.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    create.set(Long.valueOf(preferences.getLastCancelAllTimeMillis()));
                } catch (Throwable th) {
                    create.setException(th);
                }
            }
        });
        return create;
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public LiveData<Long> getLastCancelAllTimeMillisLiveData() {
        return this.mPreferences.getLastCancelAllTimeMillisLiveData();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public Preferences getPreferences() {
        return this.mPreferences;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public Processor getProcessor() {
        return this.mProcessor;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public List<Scheduler> getSchedulers() {
        return this.mSchedulers;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public WorkDatabase getWorkDatabase() {
        return this.mWorkDatabase;
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public ListenableFuture<WorkInfo> getWorkInfoById(@NonNull UUID uuid) {
        StatusRunnable<WorkInfo> forUUID = StatusRunnable.forUUID(this, uuid);
        this.mWorkTaskExecutor.getBackgroundExecutor().execute(forUUID);
        return forUUID.getFuture();
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public LiveData<WorkInfo> getWorkInfoByIdLiveData(@NonNull UUID uuid) {
        return this.mLiveDataTracker.track(LiveDataUtils.dedupedMappedLiveDataFor(this.mWorkDatabase.workSpecDao().getWorkStatusPojoLiveDataForIds(Collections.singletonList(uuid.toString())), new Function<List<WorkSpec.WorkInfoPojo>, WorkInfo>() { // from class: androidx.work.impl.WorkManagerImpl.2
            public WorkInfo apply(List<WorkSpec.WorkInfoPojo> list) {
                return (list == null || list.size() <= 0) ? null : list.get(0).toWorkInfo();
            }
        }, this.mWorkTaskExecutor));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LiveData<List<WorkInfo>> getWorkInfosById(@NonNull List<String> list) {
        return this.mLiveDataTracker.track(LiveDataUtils.dedupedMappedLiveDataFor(this.mWorkDatabase.workSpecDao().getWorkStatusPojoLiveDataForIds(list), WorkSpec.WORK_INFO_MAPPER, this.mWorkTaskExecutor));
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public ListenableFuture<List<WorkInfo>> getWorkInfosByTag(@NonNull String str) {
        StatusRunnable<List<WorkInfo>> forTag = StatusRunnable.forTag(this, str);
        this.mWorkTaskExecutor.getBackgroundExecutor().execute(forTag);
        return forTag.getFuture();
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public LiveData<List<WorkInfo>> getWorkInfosByTagLiveData(@NonNull String str) {
        return this.mLiveDataTracker.track(LiveDataUtils.dedupedMappedLiveDataFor(this.mWorkDatabase.workSpecDao().getWorkStatusPojoLiveDataForTag(str), WorkSpec.WORK_INFO_MAPPER, this.mWorkTaskExecutor));
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public ListenableFuture<List<WorkInfo>> getWorkInfosForUniqueWork(@NonNull String str) {
        StatusRunnable<List<WorkInfo>> forUniqueWork = StatusRunnable.forUniqueWork(this, str);
        this.mWorkTaskExecutor.getBackgroundExecutor().execute(forUniqueWork);
        return forUniqueWork.getFuture();
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public LiveData<List<WorkInfo>> getWorkInfosForUniqueWorkLiveData(@NonNull String str) {
        return this.mLiveDataTracker.track(LiveDataUtils.dedupedMappedLiveDataFor(this.mWorkDatabase.workSpecDao().getWorkStatusPojoLiveDataForName(str), WorkSpec.WORK_INFO_MAPPER, this.mWorkTaskExecutor));
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public TaskExecutor getWorkTaskExecutor() {
        return this.mWorkTaskExecutor;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onForceStopRunnableCompleted() {
        synchronized (sLock) {
            this.mForceStopRunnableCompleted = true;
            if (this.mRescheduleReceiverResult != null) {
                this.mRescheduleReceiverResult.finish();
                this.mRescheduleReceiverResult = null;
            }
        }
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public Operation pruneWork() {
        PruneWorkRunnable pruneWorkRunnable = new PruneWorkRunnable(this);
        this.mWorkTaskExecutor.executeOnBackgroundThread(pruneWorkRunnable);
        return pruneWorkRunnable.getOperation();
    }

    public void rescheduleEligibleWork() {
        if (Build.VERSION.SDK_INT >= 23) {
            SystemJobScheduler.jobSchedulerCancelAll(getApplicationContext());
        }
        getWorkDatabase().workSpecDao().resetScheduledState();
        Schedulers.schedule(getConfiguration(), getWorkDatabase(), getSchedulers());
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setReschedulePendingResult(@NonNull BroadcastReceiver.PendingResult pendingResult) {
        synchronized (sLock) {
            this.mRescheduleReceiverResult = pendingResult;
            if (this.mForceStopRunnableCompleted) {
                this.mRescheduleReceiverResult.finish();
                this.mRescheduleReceiverResult = null;
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void startWork(String str) {
        startWork(str, null);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void startWork(String str, WorkerParameters.RuntimeExtras runtimeExtras) {
        this.mWorkTaskExecutor.executeOnBackgroundThread(new StartWorkRunnable(this, str, runtimeExtras));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void stopWork(String str) {
        this.mWorkTaskExecutor.executeOnBackgroundThread(new StopWorkRunnable(this, str));
    }
}
