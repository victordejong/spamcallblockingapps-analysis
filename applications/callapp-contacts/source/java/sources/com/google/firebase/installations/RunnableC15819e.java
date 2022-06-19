package com.google.firebase.installations;
/* renamed from: com.google.firebase.installations.e */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/e.class */
final /* synthetic */ class RunnableC15819e implements Runnable {

    /* renamed from: a */
    private final C15813c f56251a;

    /* renamed from: b */
    private final boolean f56252b;

    private RunnableC15819e(C15813c c15813c, boolean z) {
        this.f56251a = c15813c;
        this.f56252b = z;
    }

    /* renamed from: a */
    public static Runnable m8289a(C15813c c15813c, boolean z) {
        return new RunnableC15819e(c15813c, false);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f56251a.m8304a(this.f56252b);
    }
}
