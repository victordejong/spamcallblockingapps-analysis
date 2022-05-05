package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$5.class */
public final /* synthetic */ class Uploader$$Lambda$5 implements SynchronizationGuard.CriticalSection {

    /* renamed from: a */
    private final Uploader f6748a;

    /* renamed from: b */
    private final TransportContext f6749b;

    /* renamed from: c */
    private final int f6750c;

    private Uploader$$Lambda$5(Uploader uploader, TransportContext transportContext, int i) {
        this.f6748a = uploader;
        this.f6749b = transportContext;
        this.f6750c = i;
    }

    /* renamed from: a */
    public static SynchronizationGuard.CriticalSection m15314a(Uploader uploader, TransportContext transportContext, int i) {
        return new Uploader$$Lambda$5(uploader, transportContext, i);
    }

    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
    public Object execute() {
        return this.f6748a.f6732d.mo15304a(this.f6749b, this.f6750c + 1);
    }
}
