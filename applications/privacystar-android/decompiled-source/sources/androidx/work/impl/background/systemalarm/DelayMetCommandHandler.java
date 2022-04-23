package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.os.PowerManager;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.WorkerThread;
import androidx.work.Logger;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.background.systemalarm.SystemAlarmDispatcher;
import androidx.work.impl.background.systemalarm.WorkTimer;
import androidx.work.impl.constraints.WorkConstraintsCallback;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.WakeLocks;
import java.util.Collections;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/DelayMetCommandHandler.class */
public class DelayMetCommandHandler implements WorkConstraintsCallback, ExecutionListener, WorkTimer.TimeLimitExceededListener {
    private static final String TAG = Logger.tagWithPrefix("DelayMetCommandHandler");
    private final Context mContext;
    private final SystemAlarmDispatcher mDispatcher;
    private boolean mHasConstraints = false;
    private boolean mHasPendingStopWorkCommand = false;
    private final Object mLock = new Object();
    private final int mStartId;
    @Nullable
    private PowerManager.WakeLock mWakeLock;
    private final WorkConstraintsTracker mWorkConstraintsTracker;
    private final String mWorkSpecId;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DelayMetCommandHandler(@NonNull Context context, int i, @NonNull String str, @NonNull SystemAlarmDispatcher systemAlarmDispatcher) {
        this.mContext = context;
        this.mStartId = i;
        this.mDispatcher = systemAlarmDispatcher;
        this.mWorkSpecId = str;
        this.mWorkConstraintsTracker = new WorkConstraintsTracker(this.mContext, this);
    }

    private void cleanUp() {
        synchronized (this.mLock) {
            this.mDispatcher.getWorkTimer().stopTimer(this.mWorkSpecId);
            if (this.mWakeLock != null && this.mWakeLock.isHeld()) {
                Logger.get().debug(TAG, String.format("Releasing wakelock %s for WorkSpec %s", this.mWakeLock, this.mWorkSpecId), new Throwable[0]);
                this.mWakeLock.release();
            }
        }
    }

    private void stopWork() {
        synchronized (this.mLock) {
            if (!this.mHasPendingStopWorkCommand) {
                Logger.get().debug(TAG, String.format("Stopping work for workspec %s", this.mWorkSpecId), new Throwable[0]);
                this.mDispatcher.postOnMainThread(new SystemAlarmDispatcher.AddRunnable(this.mDispatcher, CommandHandler.createStopWorkIntent(this.mContext, this.mWorkSpecId), this.mStartId));
                if (this.mDispatcher.getProcessor().isEnqueued(this.mWorkSpecId)) {
                    Logger.get().debug(TAG, String.format("WorkSpec %s needs to be rescheduled", this.mWorkSpecId), new Throwable[0]);
                    this.mDispatcher.postOnMainThread(new SystemAlarmDispatcher.AddRunnable(this.mDispatcher, CommandHandler.createScheduleWorkIntent(this.mContext, this.mWorkSpecId), this.mStartId));
                } else {
                    Logger.get().debug(TAG, String.format("Processor does not have WorkSpec %s. No need to reschedule ", this.mWorkSpecId), new Throwable[0]);
                }
                this.mHasPendingStopWorkCommand = true;
            } else {
                Logger.get().debug(TAG, String.format("Already stopped work for %s", this.mWorkSpecId), new Throwable[0]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public void handleProcessWork() {
        this.mWakeLock = WakeLocks.newWakeLock(this.mContext, String.format("%s (%s)", this.mWorkSpecId, Integer.valueOf(this.mStartId)));
        Logger.get().debug(TAG, String.format("Acquiring wakelock %s for WorkSpec %s", this.mWakeLock, this.mWorkSpecId), new Throwable[0]);
        this.mWakeLock.acquire();
        WorkSpec workSpec = this.mDispatcher.getWorkManager().getWorkDatabase().workSpecDao().getWorkSpec(this.mWorkSpecId);
        if (workSpec == null) {
            stopWork();
            return;
        }
        this.mHasConstraints = workSpec.hasConstraints();
        if (!this.mHasConstraints) {
            Logger.get().debug(TAG, String.format("No constraints for %s", this.mWorkSpecId), new Throwable[0]);
            onAllConstraintsMet(Collections.singletonList(this.mWorkSpecId));
            return;
        }
        this.mWorkConstraintsTracker.replace(Collections.singletonList(workSpec));
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsCallback
    public void onAllConstraintsMet(@NonNull List<String> list) {
        if (list.contains(this.mWorkSpecId)) {
            Logger.get().debug(TAG, String.format("onAllConstraintsMet for %s", this.mWorkSpecId), new Throwable[0]);
            if (this.mDispatcher.getProcessor().startWork(this.mWorkSpecId)) {
                this.mDispatcher.getWorkTimer().startTimer(this.mWorkSpecId, 600000L, this);
            } else {
                cleanUp();
            }
        }
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsCallback
    public void onAllConstraintsNotMet(@NonNull List<String> list) {
        stopWork();
    }

    @Override // androidx.work.impl.ExecutionListener
    public void onExecuted(@NonNull String str, boolean z) {
        Logger.get().debug(TAG, String.format("onExecuted %s, %s", str, Boolean.valueOf(z)), new Throwable[0]);
        cleanUp();
        if (z) {
            this.mDispatcher.postOnMainThread(new SystemAlarmDispatcher.AddRunnable(this.mDispatcher, CommandHandler.createScheduleWorkIntent(this.mContext, this.mWorkSpecId), this.mStartId));
        }
        if (this.mHasConstraints) {
            this.mDispatcher.postOnMainThread(new SystemAlarmDispatcher.AddRunnable(this.mDispatcher, CommandHandler.createConstraintsChangedIntent(this.mContext), this.mStartId));
        }
    }

    @Override // androidx.work.impl.background.systemalarm.WorkTimer.TimeLimitExceededListener
    public void onTimeLimitExceeded(@NonNull String str) {
        Logger.get().debug(TAG, String.format("Exceeded time limits on execution for %s", str), new Throwable[0]);
        stopWork();
    }
}
