package androidx.work.impl.constraints.trackers;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/constraints/trackers/Trackers.class */
public class Trackers {
    public static Trackers sInstance;
    public BatteryChargingTracker mBatteryChargingTracker;
    public BatteryNotLowTracker mBatteryNotLowTracker;
    public NetworkStateTracker mNetworkStateTracker;
    public StorageNotLowTracker mStorageNotLowTracker;

    public Trackers(@NonNull Context context, @NonNull TaskExecutor taskExecutor) {
        Context applicationContext = context.getApplicationContext();
        this.mBatteryChargingTracker = new BatteryChargingTracker(applicationContext, taskExecutor);
        this.mBatteryNotLowTracker = new BatteryNotLowTracker(applicationContext, taskExecutor);
        this.mNetworkStateTracker = new NetworkStateTracker(applicationContext, taskExecutor);
        this.mStorageNotLowTracker = new StorageNotLowTracker(applicationContext, taskExecutor);
    }

    @NonNull
    public static Trackers getInstance(Context context, TaskExecutor taskExecutor) {
        Trackers trackers;
        synchronized (Trackers.class) {
            try {
                if (sInstance == null) {
                    sInstance = new Trackers(context, taskExecutor);
                }
                trackers = sInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return trackers;
    }

    @VisibleForTesting
    public static void setInstance(@NonNull Trackers trackers) {
        synchronized (Trackers.class) {
            try {
                sInstance = trackers;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @NonNull
    public BatteryChargingTracker getBatteryChargingTracker() {
        return this.mBatteryChargingTracker;
    }

    @NonNull
    public BatteryNotLowTracker getBatteryNotLowTracker() {
        return this.mBatteryNotLowTracker;
    }

    @NonNull
    public NetworkStateTracker getNetworkStateTracker() {
        return this.mNetworkStateTracker;
    }

    @NonNull
    public StorageNotLowTracker getStorageNotLowTracker() {
        return this.mStorageNotLowTracker;
    }
}
