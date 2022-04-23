package androidx.work.impl.constraints.controllers;

import android.content.Context;
import android.os.Build;
import android.support.annotation.NonNull;
import androidx.work.NetworkType;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkSpec;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/constraints/controllers/NetworkConnectedController.class */
public class NetworkConnectedController extends ConstraintController<NetworkState> {
    public NetworkConnectedController(Context context) {
        super(Trackers.getInstance(context).getNetworkStateTracker());
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    boolean hasConstraint(@NonNull WorkSpec workSpec) {
        return workSpec.constraints.getRequiredNetworkType() == NetworkType.CONNECTED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
