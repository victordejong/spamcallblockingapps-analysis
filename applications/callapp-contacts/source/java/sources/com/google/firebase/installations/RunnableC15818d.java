package com.google.firebase.installations;
/* renamed from: com.google.firebase.installations.d */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/d.class */
public final /* synthetic */ class RunnableC15818d implements Runnable {

    /* renamed from: a */
    private final C15813c f56250a;

    private RunnableC15818d(C15813c c15813c) {
        this.f56250a = c15813c;
    }

    /* renamed from: a */
    public static Runnable m8290a(C15813c c15813c) {
        return new RunnableC15818d(c15813c);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f56250a.m8304a(false);
    }
}
