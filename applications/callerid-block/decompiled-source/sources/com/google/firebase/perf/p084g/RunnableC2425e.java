package com.google.firebase.perf.p084g;
/* renamed from: com.google.firebase.perf.g.e */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/g/e.class */
final /* synthetic */ class RunnableC2425e implements Runnable {

    /* renamed from: b */
    private final C2431k f10626b;

    private RunnableC2425e(C2431k kVar) {
        this.f10626b = kVar;
    }

    /* renamed from: a */
    public static Runnable m3692a(C2431k kVar) {
        return new RunnableC2425e(kVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f10626b.m3660y();
    }
}
