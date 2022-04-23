package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/DefaultScheduler$$Lambda$2.class */
public final /* synthetic */ class DefaultScheduler$$Lambda$2 implements SynchronizationGuard.CriticalSection {

    /* renamed from: a */
    private final DefaultScheduler f6695a;

    /* renamed from: b */
    private final TransportContext f6696b;

    /* renamed from: c */
    private final EventInternal f6697c;

    private DefaultScheduler$$Lambda$2(DefaultScheduler defaultScheduler, TransportContext transportContext, EventInternal eventInternal) {
        this.f6695a = defaultScheduler;
        this.f6696b = transportContext;
        this.f6697c = eventInternal;
    }

    /* renamed from: a */
    public static SynchronizationGuard.CriticalSection m15365a(DefaultScheduler defaultScheduler, TransportContext transportContext, EventInternal eventInternal) {
        return new DefaultScheduler$$Lambda$2(defaultScheduler, transportContext, eventInternal);
    }

    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
    public Object execute() {
        return DefaultScheduler.m15368b(this.f6695a, this.f6696b, this.f6697c);
    }
}
