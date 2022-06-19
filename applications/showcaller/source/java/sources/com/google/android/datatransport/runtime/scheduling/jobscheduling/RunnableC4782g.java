package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.p232h.AbstractC4673m;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.g */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/g.class */
public final /* synthetic */ class RunnableC4782g implements Runnable {

    /* renamed from: d */
    private final C4787l f14407d;

    /* renamed from: e */
    private final AbstractC4673m f14408e;

    /* renamed from: f */
    private final int f14409f;

    /* renamed from: g */
    private final Runnable f14410g;

    private RunnableC4782g(C4787l c4787l, AbstractC4673m abstractC4673m, int i, Runnable runnable) {
        this.f14407d = c4787l;
        this.f14408e = abstractC4673m;
        this.f14409f = i;
        this.f14410g = runnable;
    }

    /* renamed from: a */
    public static Runnable m21787a(C4787l c4787l, AbstractC4673m abstractC4673m, int i, Runnable runnable) {
        return new RunnableC4782g(c4787l, abstractC4673m, i, runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        C4787l.m21778e(this.f14407d, this.f14408e, this.f14409f, this.f14410g);
    }
}
