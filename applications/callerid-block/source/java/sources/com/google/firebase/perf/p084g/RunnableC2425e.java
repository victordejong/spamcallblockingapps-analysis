package com.google.firebase.perf.p084g;
/* renamed from: com.google.firebase.perf.g.e */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/g/e.class */
final /* synthetic */ class RunnableC2425e implements Runnable {

    /* renamed from: b */
    private final C2431k f10626b;

    private RunnableC2425e(C2431k c2431k) {
        this.f10626b = c2431k;
    }

    /* renamed from: a */
    public static Runnable m3692a(C2431k c2431k) {
        return new RunnableC2425e(c2431k);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f10626b.m3660y();
    }
}
