package androidx.work.impl.constraints.controllers;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/constraints/controllers/BatteryChargingController.class */
public class BatteryChargingController extends ConstraintController<Boolean> {
    public BatteryChargingController(Context context, TaskExecutor taskExecutor) {
        super(Trackers.getInstance(context, taskExecutor).getBatteryChargingTracker());
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public boolean hasConstraint(@NonNull WorkSpec workSpec) {
        return workSpec.constraints.requiresCharging();
    }

    public boolean isConstrained(@NonNull Boolean bool) {
        return !bool.booleanValue();
    }
}
