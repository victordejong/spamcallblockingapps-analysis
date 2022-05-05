package androidx.work.impl.constraints.controllers;

import android.content.Context;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.work.NetworkType;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/constraints/controllers/NetworkConnectedController.class */
public class NetworkConnectedController extends ConstraintController<NetworkState> {
    public NetworkConnectedController(Context context, TaskExecutor taskExecutor) {
        super(Trackers.getInstance(context, taskExecutor).getNetworkStateTracker());
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public boolean hasConstraint(@NonNull WorkSpec workSpec) {
        return workSpec.constraints.getRequiredNetworkType() == NetworkType.CONNECTED;
    }

    public boolean isConstrained(@NonNull NetworkState networkState) {
        if (Build.VERSION.SDK_INT < 26) {
            return !networkState.isConnected();
        }
        boolean z = true;
        if (networkState.isConnected()) {
            z = !networkState.isValidated();
        }
        return z;
    }
}
