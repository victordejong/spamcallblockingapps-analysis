package com.google.firebase.messaging;

import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/ax.class */
final /* synthetic */ class ax implements Executor {

    /* renamed from: a  reason: collision with root package name */
    static final Executor f32523a = new ax();

    private ax() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
