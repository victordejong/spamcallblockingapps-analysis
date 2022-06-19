package com.google.firebase.installations;

import java.util.concurrent.Callable;
/* renamed from: com.google.firebase.installations.f */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/f.class */
final /* synthetic */ class CallableC15820f implements Callable {

    /* renamed from: a */
    private final C15813c f56253a;

    private CallableC15820f(C15813c c15813c) {
        this.f56253a = c15813c;
    }

    /* renamed from: a */
    public static Callable m8288a(C15813c c15813c) {
        return new CallableC15820f(c15813c);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Void m8293l;
        m8293l = this.f56253a.m8293l();
        return m8293l;
    }
}
