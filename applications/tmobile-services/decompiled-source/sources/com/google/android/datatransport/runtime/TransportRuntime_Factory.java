package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.scheduling.Scheduler;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer;
import com.google.android.datatransport.runtime.time.Clock;
import dagger.internal.Factory;
import javax.inject.Provider;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/TransportRuntime_Factory.class */
public final class TransportRuntime_Factory implements Factory<TransportRuntime> {

    /* renamed from: a */
    private final Provider<Clock> f6656a;

    /* renamed from: b */
    private final Provider<Clock> f6657b;

    /* renamed from: c */
    private final Provider<Scheduler> f6658c;

    /* renamed from: d */
    private final Provider<Uploader> f6659d;

    /* renamed from: e */
    private final Provider<WorkInitializer> f6660e;

    public TransportRuntime_Factory(Provider<Clock> provider, Provider<Clock> provider2, Provider<Scheduler> provider3, Provider<Uploader> provider4, Provider<WorkInitializer> provider5) {
        this.f6656a = provider;
        this.f6657b = provider2;
        this.f6658c = provider3;
        this.f6659d = provider4;
        this.f6660e = provider5;
    }

    /* renamed from: a */
    public static TransportRuntime_Factory m15405a(Provider<Clock> provider, Provider<Clock> provider2, Provider<Scheduler> provider3, Provider<Uploader> provider4, Provider<WorkInitializer> provider5) {
        return new TransportRuntime_Factory(provider, provider2, provider3, provider4, provider5);
    }

    /* renamed from: b */
    public TransportRuntime get() {
        return new TransportRuntime(this.f6656a.get(), this.f6657b.get(), this.f6658c.get(), this.f6659d.get(), this.f6660e.get());
    }
}
