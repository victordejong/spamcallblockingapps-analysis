package com.google.firebase.installations;

import java.util.concurrent.Callable;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/f.class */
final /* synthetic */ class f implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private final c f32429a;

    private f(c cVar) {
        this.f32429a = cVar;
    }

    public static Callable a(c cVar) {
        return new f(cVar);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Void l;
        l = this.f32429a.l();
        return l;
    }
}
