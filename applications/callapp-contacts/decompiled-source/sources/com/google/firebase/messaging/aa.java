package com.google.firebase.messaging;

import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/aa.class */
final /* synthetic */ class aa implements Executor {

    /* renamed from: a  reason: collision with root package name */
    static final Executor f32460a = new aa();

    private aa() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
