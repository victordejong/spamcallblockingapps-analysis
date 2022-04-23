package androidx.work.impl.workers;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import android.text.TextUtils;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.constraints.WorkConstraintsCallback;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.futures.SettableFuture;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collections;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/workers/ConstraintTrackingWorker.class */
public class ConstraintTrackingWorker extends ListenableWorker implements WorkConstraintsCallback {
    public static final String ARGUMENT_CLASS_NAME = "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME";
    private static final String TAG = Logger.tagWithPrefix("ConstraintTrkngWrkr");
    @Nullable
    private ListenableWorker mDelegate;
    private WorkerParameters mWorkerParameters;
    final Object mLock = new Object();
    volatile boolean mAreConstraintsUnmet = false;
    SettableFuture<ListenableWorker.Result> mFuture = SettableFuture.create();

    public ConstraintTrackingWorker(@NonNull Context context, @NonNull WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.mWorkerParameters = workerParameters;
    }

    @VisibleForTesting
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ListenableWorker getDelegate() {
        return this.mDelegate;
    }

    @VisibleForTesting
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public WorkDatabase getWorkDatabase() {
        return WorkManagerImpl.getInstance().getWorkDatabase();
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsCallback
    public void onAllConstraintsMet(@NonNull List<String> list) {
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsCallback
    public void onAllConstraintsNotMet(@NonNull List<String> list) {
        Logger.get().debug(TAG, String.format("Constraints changed for %s", list), new Throwable[0]);
        synchronized (this.mLock) {
            this.mAreConstraintsUnmet = true;
        }
    }

    @Override // androidx.work.ListenableWorker
    public void onStopped() {
        super.onStopped();
        if (this.mDelegate != null) {
            this.mDelegate.stop();
        }
    }

    void setFutureFailed() {
        this.mFuture.set(ListenableWorker.Result.failure());
    }

    void setFutureRetry() {
        this.mFuture.set(ListenableWorker.Result.retry());
    }

    void setupAndRunConstraintTrackingWork() {
        String string = getInputData().getString(ARGUMENT_CLASS_NAME);
        if (TextUtils.isEmpty(string)) {
            Logger.get().error(TAG, "No worker to delegate to.", new Throwable[0]);
            setFutureFailed();
            return;
        }
        this.mDelegate = getWorkerFactory().createWorkerWithDefaultFallback(getApplicationContext(), string, this.mWorkerParameters);
        if (this.mDelegate == null) {
            Logger.get().debug(TAG, "No worker to delegate to.", new Throwable[0]);
            setFutureFailed();
            return;
        }
        WorkSpec workSpec = getWorkDatabase().workSpecDao().getWorkSpec(getId().toString());
        if (workSpec == null) {
            setFutureFailed();
            return;
        }
        WorkConstraintsTracker workConstraintsTracker = new WorkConstraintsTracker(getApplicationContext(), this);
        workConstraintsTracker.replace(Collections.singletonList(workSpec));
        if (workConstraintsTracker.areAllConstraintsMet(getId().toString())) {
            Logger.get().debug(TAG, String.format("Constraints met for delegate %s", string), new Throwable[0]);
            try {
                final ListenableFuture<ListenableWorker.Result> startWork = this.mDelegate.startWork();
                startWork.addListener(new Runnable() { // from class: androidx.work.impl.workers.ConstraintTrackingWorker.2
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (ConstraintTrackingWorker.this.mLock) {
                            if (ConstraintTrackingWorker.this.mAreConstraintsUnmet) {
                                ConstraintTrackingWorker.this.setFutureRetry();
                            } else {
                                ConstraintTrackingWorker.this.mFuture.setFuture(startWork);
                            }
                        }
                    }
                }, getBackgroundExecutor());
            } catch (Throwable th) {
                Logger.get().debug(TAG, String.format("Delegated worker %s threw exception in startWork.", string), th);
                synchronized (this.mLock) {
                    if (this.mAreConstraintsUnmet) {
                        Logger.get().debug(TAG, "Constraints were unmet, Retrying.", new Throwable[0]);
                        setFutureRetry();
                    } else {
                        setFutureFailed();
                    }
                }
            }
        } else {
            Logger.get().debug(TAG, String.format("Constraints not met for delegate %s. Requesting retry.", string), new Throwable[0]);
            setFutureRetry();
        }
    }

    @Override // androidx.work.ListenableWorker
    @NonNull
    public ListenableFuture<ListenableWorker.Result> startWork() {
        getBackgroundExecutor().execute(new Runnable() { // from class: androidx.work.impl.workers.ConstraintTrackingWorker.1
            @Override // java.lang.Runnable
            public void run() {
                ConstraintTrackingWorker.this.setupAndRunConstraintTrackingWork();
            }
        });
        return this.mFuture;
    }
}
