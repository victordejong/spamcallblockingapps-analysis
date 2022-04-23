package androidx.work.impl.constraints.trackers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import androidx.work.Logger;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker.class */
public abstract class BroadcastReceiverConstraintTracker<T> extends ConstraintTracker<T> {
    private static final String TAG = Logger.tagWithPrefix("BrdcstRcvrCnstrntTrckr");
    private final BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() { // from class: androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                BroadcastReceiverConstraintTracker.this.onBroadcastReceive(context, intent);
            }
        }
    };

    public BroadcastReceiverConstraintTracker(Context context) {
        super(context);
    }

    public abstract IntentFilter getIntentFilter();

    public abstract void onBroadcastReceive(Context context, @NonNull Intent intent);

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public void startTracking() {
        Logger.get().debug(TAG, String.format("%s: registering receiver", getClass().getSimpleName()), new Throwable[0]);
        this.mAppContext.registerReceiver(this.mBroadcastReceiver, getIntentFilter());
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public void stopTracking() {
        Logger.get().debug(TAG, String.format("%s: unregistering receiver", getClass().getSimpleName()), new Throwable[0]);
        this.mAppContext.unregisterReceiver(this.mBroadcastReceiver);
    }
}
