package com.google.firebase.messaging;

import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/e.class */
final /* synthetic */ class e implements Executor {

    /* renamed from: a  reason: collision with root package name */
    static final Executor f32540a = new e();

    private e() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
