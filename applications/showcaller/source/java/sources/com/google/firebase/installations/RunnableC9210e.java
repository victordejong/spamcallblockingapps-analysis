package com.google.firebase.installations;
/* renamed from: com.google.firebase.installations.e */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/e.class */
public final /* synthetic */ class RunnableC9210e implements Runnable {

    /* renamed from: d */
    private final C9211f f39590d;

    /* renamed from: e */
    private final boolean f39591e;

    private RunnableC9210e(C9211f c9211f, boolean z) {
        this.f39590d = c9211f;
        this.f39591e = z;
    }

    /* renamed from: a */
    public static Runnable m1557a(C9211f c9211f, boolean z) {
        return new RunnableC9210e(c9211f, z);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f39590d.m1553e(this.f39591e);
    }
}
