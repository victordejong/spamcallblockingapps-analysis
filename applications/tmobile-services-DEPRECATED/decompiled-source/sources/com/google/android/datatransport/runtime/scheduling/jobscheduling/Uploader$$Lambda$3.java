package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$3.class */
public final /* synthetic */ class Uploader$$Lambda$3 implements SynchronizationGuard.CriticalSection {

    /* renamed from: a */
    private final Uploader f6742a;

    /* renamed from: b */
    private final BackendResponse f6743b;

    /* renamed from: c */
    private final Iterable f6744c;

    /* renamed from: d */
    private final TransportContext f6745d;

    /* renamed from: e */
    private final int f6746e;

    private Uploader$$Lambda$3(Uploader uploader, BackendResponse backendResponse, Iterable iterable, TransportContext transportContext, int i) {
        this.f6742a = uploader;
        this.f6743b = backendResponse;
        this.f6744c = iterable;
        this.f6745d = transportContext;
        this.f6746e = i;
    }

    /* renamed from: a */
    public static SynchronizationGuard.CriticalSection m15316a(Uploader uploader, BackendResponse backendResponse, Iterable iterable, TransportContext transportContext, int i) {
        return new Uploader$$Lambda$3(uploader, backendResponse, iterable, transportContext, i);
    }

    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
    public Object execute() {
        return Uploader.m15323c(this.f6742a, this.f6743b, this.f6744c, this.f6745d, this.f6746e);
    }
}
