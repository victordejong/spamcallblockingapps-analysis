package com.google.firebase.installations;
/* renamed from: com.google.firebase.installations.d */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/d.class */
final /* synthetic */ class RunnableC9209d implements Runnable {

    /* renamed from: d */
    private final C9211f f39588d;

    /* renamed from: e */
    private final boolean f39589e;

    private RunnableC9209d(C9211f c9211f, boolean z) {
        this.f39588d = c9211f;
        this.f39589e = z;
    }

    /* renamed from: a */
    public static Runnable m1558a(C9211f c9211f, boolean z) {
        return new RunnableC9209d(c9211f, z);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f39588d.m1552f(this.f39589e);
    }
}
