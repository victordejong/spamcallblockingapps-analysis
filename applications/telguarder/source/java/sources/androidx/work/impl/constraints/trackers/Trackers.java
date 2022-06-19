package androidx.work.impl.constraints.trackers;

import android.content.Context;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/constraints/trackers/Trackers.class */
public class Trackers {
    private static Trackers sInstance;
    private BatteryChargingTracker mBatteryChargingTracker;
    private BatteryNotLowTracker mBatteryNotLowTracker;
    private NetworkStateTracker mNetworkStateTracker;
    private StorageNotLowTracker mStorageNotLowTracker;

    private Trackers(Context context, TaskExecutor taskExecutor) {
        Context applicationContext = context.getApplicationContext();
        this.mBatteryChargingTracker = new BatteryChargingTracker(applicationContext, taskExecutor);
        this.mBatteryNotLowTracker = new BatteryNotLowTracker(applicationContext, taskExecutor);
        this.mNetworkStateTracker = new NetworkStateTracker(applicationContext, taskExecutor);
        this.mStorageNotLowTracker = new StorageNotLowTracker(applicationContext, taskExecutor);
    }

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

    public static void setInstance(Trackers trackers) {
        synchronized (Trackers.class) {
            try {
                sInstance = trackers;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public BatteryChargingTracker getBatteryChargingTracker() {
        return this.mBatteryChargingTracker;
    }

    public BatteryNotLowTracker getBatteryNotLowTracker() {
        return this.mBatteryNotLowTracker;
    }

    public NetworkStateTracker getNetworkStateTracker() {
        return this.mNetworkStateTracker;
    }

    public StorageNotLowTracker getStorageNotLowTracker() {
        return this.mStorageNotLowTracker;
    }
}
