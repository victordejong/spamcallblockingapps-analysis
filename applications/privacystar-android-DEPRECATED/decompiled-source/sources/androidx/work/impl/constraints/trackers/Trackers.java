package androidx.work.impl.constraints.trackers;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/constraints/trackers/Trackers.class */
public class Trackers {
    private static Trackers sInstance;
    private BatteryChargingTracker mBatteryChargingTracker;
    private BatteryNotLowTracker mBatteryNotLowTracker;
    private NetworkStateTracker mNetworkStateTracker;
    private StorageNotLowTracker mStorageNotLowTracker;

    private Trackers(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.mBatteryChargingTracker = new BatteryChargingTracker(applicationContext);
        this.mBatteryNotLowTracker = new BatteryNotLowTracker(applicationContext);
        this.mNetworkStateTracker = new NetworkStateTracker(applicationContext);
        this.mStorageNotLowTracker = new StorageNotLowTracker(applicationContext);
    }

    public static Trackers getInstance(Context context) {
        Trackers trackers;
        synchronized (Trackers.class) {
            try {
                if (sInstance == null) {
                    sInstance = new Trackers(context);
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
