package com.google.firebase.installations;
/* renamed from: com.google.firebase.installations.g */
/* loaded from: classes-dex2jar.jar:com/google/firebase/installations/g.class */
public final /* synthetic */ class RunnableC5032g implements Runnable {

    /* renamed from: a */
    private final C5026c f21284a;

    /* renamed from: b */
    private final boolean f21285b;

    private RunnableC5032g(C5026c c5026c, boolean z) {
        this.f21284a = c5026c;
        this.f21285b = z;
    }

    /* renamed from: a */
    public static Runnable m1783a(C5026c c5026c, boolean z) {
        return new RunnableC5032g(c5026c, z);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f21284a.m1795c(this.f21285b);
    }
}
