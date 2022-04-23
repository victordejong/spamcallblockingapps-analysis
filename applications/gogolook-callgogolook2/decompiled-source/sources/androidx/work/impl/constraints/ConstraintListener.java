package androidx.work.impl.constraints;

import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/constraints/ConstraintListener.class */
public interface ConstraintListener<T> {
    @MainThread
    void onConstraintChanged(@Nullable T t);
}
