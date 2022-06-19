package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.runtime.dagger.Module;
import com.google.android.datatransport.runtime.dagger.Provides;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import com.google.android.datatransport.runtime.time.Clock;
@Module
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/SchedulingConfigModule.class */
public abstract class SchedulingConfigModule {
    @Provides
    public static SchedulerConfig config(Clock clock) {
        return SchedulerConfig.getDefault(clock);
    }
}
