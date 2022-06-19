package com.google.firebase.installations;
/* renamed from: com.google.firebase.installations.g */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/g.class */
public final /* synthetic */ class RunnableC15821g implements Runnable {

    /* renamed from: a */
    private final C15813c f56254a;

    /* renamed from: b */
    private final boolean f56255b;

    private RunnableC15821g(C15813c c15813c, boolean z) {
        this.f56254a = c15813c;
        this.f56255b = z;
    }

    /* renamed from: a */
    public static Runnable m8287a(C15813c c15813c, boolean z) {
        return new RunnableC15821g(c15813c, z);
    }

    @Override // java.lang.Runnable
    public final void run() {
        C15813c.m8308a(this.f56254a, this.f56255b);
    }
}
