package com.google.firebase.perf.p084g;

import com.google.firebase.perf.p085v1.ApplicationProcessState;
import com.google.firebase.perf.p085v1.C2483f;
/* renamed from: com.google.firebase.perf.g.j */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/g/j.class */
final /* synthetic */ class RunnableC2430j implements Runnable {

    /* renamed from: b */
    private final C2431k f10636b;

    /* renamed from: c */
    private final C2483f f10637c;

    /* renamed from: d */
    private final ApplicationProcessState f10638d;

    private RunnableC2430j(C2431k c2431k, C2483f c2483f, ApplicationProcessState applicationProcessState) {
        this.f10636b = c2431k;
        this.f10637c = c2483f;
        this.f10638d = applicationProcessState;
    }

    /* renamed from: a */
    public static Runnable m3687a(C2431k c2431k, C2483f c2483f, ApplicationProcessState applicationProcessState) {
        return new RunnableC2430j(c2431k, c2483f, applicationProcessState);
    }

    @Override // java.lang.Runnable
    public void run() {
        C2431k.m3666s(this.f10636b, this.f10637c, this.f10638d);
    }
}
