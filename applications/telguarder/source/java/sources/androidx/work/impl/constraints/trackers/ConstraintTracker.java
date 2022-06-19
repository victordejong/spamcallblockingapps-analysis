package androidx.work.impl.constraints.trackers;

import android.content.Context;
import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintListener;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/constraints/trackers/ConstraintTracker.class */
public abstract class ConstraintTracker<T> {
    private static final String TAG = Logger.tagWithPrefix("ConstraintTracker");
    protected final Context mAppContext;
    T mCurrentState;
    protected final TaskExecutor mTaskExecutor;
    private final Object mLock = new Object();
    private final Set<ConstraintListener<T>> mListeners = new LinkedHashSet();

    public ConstraintTracker(Context context, TaskExecutor taskExecutor) {
        this.mAppContext = context.getApplicationContext();
        this.mTaskExecutor = taskExecutor;
    }

    public void addListener(ConstraintListener<T> constraintListener) {
        synchronized (this.mLock) {
            if (this.mListeners.add(constraintListener)) {
                if (this.mListeners.size() == 1) {
                    this.mCurrentState = getInitialState();
                    Logger.get().debug(TAG, String.format("%s: initial state = %s", getClass().getSimpleName(), this.mCurrentState), new Throwable[0]);
                    startTracking();
                }
                constraintListener.onConstraintChanged(this.mCurrentState);
            }
        }
    }

    public abstract T getInitialState();

    public void removeListener(ConstraintListener<T> constraintListener) {
        synchronized (this.mLock) {
            if (this.mListeners.remove(constraintListener) && this.mListeners.isEmpty()) {
                stopTracking();
            }
        }
    }

    public void setState(T t) {
        synchronized (this.mLock) {
            T t2 = this.mCurrentState;
            if (t2 != t && (t2 == null || !t2.equals(t))) {
                this.mCurrentState = t;
                final ArrayList arrayList = new ArrayList(this.mListeners);
                this.mTaskExecutor.getMainThreadExecutor().execute(new Runnable() { // from class: androidx.work.impl.constraints.trackers.ConstraintTracker.1
                    @Override // java.lang.Runnable
                    public void run() {
                        for (ConstraintListener constraintListener : arrayList) {
                            constraintListener.onConstraintChanged(ConstraintTracker.this.mCurrentState);
                        }
                    }
                });
            }
        }
    }

    public abstract void startTracking();

    public abstract void stopTracking();
}
