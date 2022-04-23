package com.google.firebase.messaging;

import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/k.class */
final /* synthetic */ class k implements Executor {

    /* renamed from: a  reason: collision with root package name */
    static final Executor f32552a = new k();

    private k() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
