package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.p062h.AbstractC1304m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.g */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/g.class */
public final /* synthetic */ class RunnableC1340g implements Runnable {

    /* renamed from: b */
    private final C1341l f5415b;

    /* renamed from: c */
    private final AbstractC1304m f5416c;

    /* renamed from: d */
    private final int f5417d;

    /* renamed from: e */
    private final Runnable f5418e;

    private RunnableC1340g(C1341l lVar, AbstractC1304m mVar, int i, Runnable runnable) {
        this.f5415b = lVar;
        this.f5416c = mVar;
        this.f5417d = i;
        this.f5418e = runnable;
    }

    /* renamed from: a */
    public static Runnable m9082a(C1341l lVar, AbstractC1304m mVar, int i, Runnable runnable) {
        return new RunnableC1340g(lVar, mVar, i, runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        C1341l.m9077e(this.f5415b, this.f5416c, this.f5417d, this.f5418e);
    }
}
