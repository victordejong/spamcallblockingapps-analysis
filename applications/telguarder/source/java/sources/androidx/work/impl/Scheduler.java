package androidx.work.impl;

import androidx.work.impl.model.WorkSpec;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/Scheduler.class */
public interface Scheduler {
    public static final int MAX_SCHEDULER_LIMIT = 50;

    void cancel(String str);

    void schedule(WorkSpec... workSpecArr);
}
