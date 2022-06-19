package androidx.work.impl.constraints;

import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/constraints/WorkConstraintsCallback.class */
public interface WorkConstraintsCallback {
    void onAllConstraintsMet(List<String> list);

    void onAllConstraintsNotMet(List<String> list);
}
