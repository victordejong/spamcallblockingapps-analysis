package com.google.android.datatransport.runtime.scheduling;

import android.content.Context;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.time.Clock;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory.class */
public final class SchedulingModule_WorkSchedulerFactory implements Factory<WorkScheduler> {

    /* renamed from: a */
    private final Provider<Context> f6704a;

    /* renamed from: b */
    private final Provider<EventStore> f6705b;

    /* renamed from: c */
    private final Provider<SchedulerConfig> f6706c;

    /* renamed from: d */
    private final Provider<Clock> f6707d;

    public SchedulingModule_WorkSchedulerFactory(Provider<Context> provider, Provider<EventStore> provider2, Provider<SchedulerConfig> provider3, Provider<Clock> provider4) {
        this.f6704a = provider;
        this.f6705b = provider2;
        this.f6706c = provider3;
        this.f6707d = provider4;
    }

    /* renamed from: a */
    public static SchedulingModule_WorkSchedulerFactory m15356a(Provider<Context> provider, Provider<EventStore> provider2, Provider<SchedulerConfig> provider3, Provider<Clock> provider4) {
        return new SchedulingModule_WorkSchedulerFactory(provider, provider2, provider3, provider4);
    }

    /* renamed from: c */
    public static WorkScheduler m15354c(Context context, EventStore eventStore, SchedulerConfig schedulerConfig, Clock clock) {
        WorkScheduler a = SchedulingModule.m15357a(context, eventStore, schedulerConfig, clock);
        Preconditions.m4632c(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    /* renamed from: b */
    public WorkScheduler get() {
        return m15354c(this.f6704a.get(), this.f6705b.get(), this.f6706c.get(), this.f6707d.get());
    }
}
