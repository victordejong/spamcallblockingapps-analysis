package androidx.work.impl.constraints.controllers;

import android.content.Context;
import android.support.annotation.NonNull;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkSpec;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/constraints/controllers/BatteryNotLowController.class */
public class BatteryNotLowController extends ConstraintController<Boolean> {
    public BatteryNotLowController(Context context) {
        super(Trackers.getInstance(context).getBatteryNotLowTracker());
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    boolean hasConstraint(@NonNull WorkSpec workSpec) {
        return workSpec.constraints.requiresBatteryNotLow();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isConstrained(@NonNull Boolean bool) {
        return !bool.booleanValue();
    }
}
