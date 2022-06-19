package com.google.firebase.installations;
/* renamed from: com.google.firebase.installations.c */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/c.class */
public final /* synthetic */ class RunnableC9208c implements Runnable {

    /* renamed from: d */
    private final C9211f f39587d;

    private RunnableC9208c(C9211f c9211f) {
        this.f39587d = c9211f;
    }

    /* renamed from: a */
    public static Runnable m1559a(C9211f c9211f) {
        return new RunnableC9208c(c9211f);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f39587d.m1552f(false);
    }
}
