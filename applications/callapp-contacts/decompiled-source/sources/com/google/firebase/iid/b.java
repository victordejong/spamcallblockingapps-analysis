package com.google.firebase.iid;

import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/b.class */
final /* synthetic */ class b implements Executor {

    /* renamed from: a  reason: collision with root package name */
    static final Executor f32324a = new b();

    private b() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
