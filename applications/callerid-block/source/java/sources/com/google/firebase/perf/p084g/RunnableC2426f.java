package com.google.firebase.perf.p084g;
/* renamed from: com.google.firebase.perf.g.f */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/g/f.class */
public final /* synthetic */ class RunnableC2426f implements Runnable {

    /* renamed from: b */
    private final C2431k f10627b;

    /* renamed from: c */
    private final C2422c f10628c;

    private RunnableC2426f(C2431k c2431k, C2422c c2422c) {
        this.f10627b = c2431k;
        this.f10628c = c2422c;
    }

    /* renamed from: a */
    public static Runnable m3691a(C2431k c2431k, C2422c c2422c) {
        return new RunnableC2426f(c2431k, c2422c);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f10627b.m3659z(r1.f10607a, this.f10628c.f10608b);
    }
}
