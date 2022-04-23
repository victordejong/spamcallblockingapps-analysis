package androidx.work.impl.constraints;

import androidx.annotation.NonNull;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/constraints/WorkConstraintsCallback.class */
public interface WorkConstraintsCallback {
    void onAllConstraintsMet(@NonNull List<String> list);

    void onAllConstraintsNotMet(@NonNull List<String> list);
}
