package androidx.work.impl;

import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import androidx.work.impl.model.WorkSpec;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/Scheduler.class */
public interface Scheduler {
    public static final int MAX_SCHEDULER_LIMIT = 50;

    void cancel(@NonNull String str);

    void schedule(WorkSpec... workSpecArr);
}
