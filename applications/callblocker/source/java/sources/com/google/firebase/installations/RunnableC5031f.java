package com.google.firebase.installations;
/* renamed from: com.google.firebase.installations.f */
/* loaded from: classes-dex2jar.jar:com/google/firebase/installations/f.class */
final /* synthetic */ class RunnableC5031f implements Runnable {

    /* renamed from: a */
    private final C5026c f21283a;

    private RunnableC5031f(C5026c c5026c) {
        this.f21283a = c5026c;
    }

    /* renamed from: a */
    public static Runnable m1784a(C5026c c5026c) {
        return new RunnableC5031f(c5026c);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f21283a.m1789i();
    }
}
