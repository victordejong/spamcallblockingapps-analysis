package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.TransportContext;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$1.class */
public final /* synthetic */ class Uploader$$Lambda$1 implements Runnable {

    /* renamed from: f */
    private final Uploader f6736f;

    /* renamed from: g */
    private final TransportContext f6737g;

    /* renamed from: h */
    private final int f6738h;

    /* renamed from: i */
    private final Runnable f6739i;

    private Uploader$$Lambda$1(Uploader uploader, TransportContext transportContext, int i, Runnable runnable) {
        this.f6736f = uploader;
        this.f6737g = transportContext;
        this.f6738h = i;
        this.f6739i = runnable;
    }

    /* renamed from: a */
    public static Runnable m15318a(Uploader uploader, TransportContext transportContext, int i, Runnable runnable) {
        return new Uploader$$Lambda$1(uploader, transportContext, i, runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        Uploader.m15321e(this.f6736f, this.f6737g, this.f6738h, this.f6739i);
    }
}
