package com.google.firebase.perf.p084g;

import com.google.firebase.perf.p085v1.ApplicationProcessState;
import com.google.firebase.perf.p085v1.C2494j;
/* renamed from: com.google.firebase.perf.g.h */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/g/h.class */
final /* synthetic */ class RunnableC2428h implements Runnable {

    /* renamed from: b */
    private final C2431k f10630b;

    /* renamed from: c */
    private final C2494j f10631c;

    /* renamed from: d */
    private final ApplicationProcessState f10632d;

    private RunnableC2428h(C2431k c2431k, C2494j c2494j, ApplicationProcessState applicationProcessState) {
        this.f10630b = c2431k;
        this.f10631c = c2494j;
        this.f10632d = applicationProcessState;
    }

    /* renamed from: a */
    public static Runnable m3689a(C2431k c2431k, C2494j c2494j, ApplicationProcessState applicationProcessState) {
        return new RunnableC2428h(c2431k, c2494j, applicationProcessState);
    }

    @Override // java.lang.Runnable
    public void run() {
        C2431k.m3668q(this.f10630b, this.f10631c, this.f10632d);
    }
}
