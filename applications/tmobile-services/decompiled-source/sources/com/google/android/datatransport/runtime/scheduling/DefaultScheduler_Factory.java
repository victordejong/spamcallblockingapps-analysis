package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.runtime.backends.BackendRegistry;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import dagger.internal.Factory;
import java.util.concurrent.Executor;
import javax.inject.Provider;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory.class */
public final class DefaultScheduler_Factory implements Factory<DefaultScheduler> {

    /* renamed from: a */
    private final Provider<Executor> f6698a;

    /* renamed from: b */
    private final Provider<BackendRegistry> f6699b;

    /* renamed from: c */
    private final Provider<WorkScheduler> f6700c;

    /* renamed from: d */
    private final Provider<EventStore> f6701d;

    /* renamed from: e */
    private final Provider<SynchronizationGuard> f6702e;

    public DefaultScheduler_Factory(Provider<Executor> provider, Provider<BackendRegistry> provider2, Provider<WorkScheduler> provider3, Provider<EventStore> provider4, Provider<SynchronizationGuard> provider5) {
        this.f6698a = provider;
        this.f6699b = provider2;
        this.f6700c = provider3;
        this.f6701d = provider4;
        this.f6702e = provider5;
    }

    /* renamed from: a */
    public static DefaultScheduler_Factory m15364a(Provider<Executor> provider, Provider<BackendRegistry> provider2, Provider<WorkScheduler> provider3, Provider<EventStore> provider4, Provider<SynchronizationGuard> provider5) {
        return new DefaultScheduler_Factory(provider, provider2, provider3, provider4, provider5);
    }

    /* renamed from: b */
    public DefaultScheduler get() {
        return new DefaultScheduler(this.f6698a.get(), this.f6699b.get(), this.f6700c.get(), this.f6701d.get(), this.f6702e.get());
    }
}
