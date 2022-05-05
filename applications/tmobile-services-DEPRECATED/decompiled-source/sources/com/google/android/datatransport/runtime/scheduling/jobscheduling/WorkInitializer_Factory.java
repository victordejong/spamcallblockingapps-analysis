package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import dagger.internal.Factory;
import java.util.concurrent.Executor;
import javax.inject.Provider;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer_Factory.class */
public final class WorkInitializer_Factory implements Factory<WorkInitializer> {

    /* renamed from: a */
    private final Provider<Executor> f6764a;

    /* renamed from: b */
    private final Provider<EventStore> f6765b;

    /* renamed from: c */
    private final Provider<WorkScheduler> f6766c;

    /* renamed from: d */
    private final Provider<SynchronizationGuard> f6767d;

    public WorkInitializer_Factory(Provider<Executor> provider, Provider<EventStore> provider2, Provider<WorkScheduler> provider3, Provider<SynchronizationGuard> provider4) {
        this.f6764a = provider;
        this.f6765b = provider2;
        this.f6766c = provider3;
        this.f6767d = provider4;
    }

    /* renamed from: a */
    public static WorkInitializer_Factory m15306a(Provider<Executor> provider, Provider<EventStore> provider2, Provider<WorkScheduler> provider3, Provider<SynchronizationGuard> provider4) {
        return new WorkInitializer_Factory(provider, provider2, provider3, provider4);
    }

    /* renamed from: b */
    public WorkInitializer get() {
        return new WorkInitializer(this.f6764a.get(), this.f6765b.get(), this.f6766c.get(), this.f6767d.get());
    }
}
