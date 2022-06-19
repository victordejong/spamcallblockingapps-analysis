package com.google.android.gms.tasks;

import androidx.annotation.RecentlyNonNull;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/TaskExecutors.class */
public final class TaskExecutors {
    @RecentlyNonNull
    public static final Executor MAIN_THREAD = new zzu();
    public static final Executor zza = new zzt();

    private TaskExecutors() {
    }
}
