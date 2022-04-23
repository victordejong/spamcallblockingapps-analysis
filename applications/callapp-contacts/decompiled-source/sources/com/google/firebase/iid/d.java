package com.google.firebase.iid;

import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/d.class */
final /* synthetic */ class d implements Executor {

    /* renamed from: a  reason: collision with root package name */
    static final Executor f32328a = new d();

    private d() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
