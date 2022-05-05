package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$2.class */
public final /* synthetic */ class Uploader$$Lambda$2 implements SynchronizationGuard.CriticalSection {

    /* renamed from: a */
    private final Uploader f6740a;

    /* renamed from: b */
    private final TransportContext f6741b;

    private Uploader$$Lambda$2(Uploader uploader, TransportContext transportContext) {
        this.f6740a = uploader;
        this.f6741b = transportContext;
    }

    /* renamed from: a */
    public static SynchronizationGuard.CriticalSection m15317a(Uploader uploader, TransportContext transportContext) {
        return new Uploader$$Lambda$2(uploader, transportContext);
    }

    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
    public Object execute() {
        Iterable v;
        v = this.f6740a.f6731c.mo15238v(this.f6741b);
        return v;
    }
}
