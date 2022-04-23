package com.google.firebase.perf.p084g;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.perf.g.f */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/g/f.class */
public final /* synthetic */ class RunnableC2426f implements Runnable {

    /* renamed from: b */
    private final C2431k f10627b;

    /* renamed from: c */
    private final C2422c f10628c;

    private RunnableC2426f(C2431k kVar, C2422c cVar) {
        this.f10627b = kVar;
        this.f10628c = cVar;
    }

    /* renamed from: a */
    public static Runnable m3691a(C2431k kVar, C2422c cVar) {
        return new RunnableC2426f(kVar, cVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f10627b.m3659z(r1.f10607a, this.f10628c.f10608b);
    }
}
