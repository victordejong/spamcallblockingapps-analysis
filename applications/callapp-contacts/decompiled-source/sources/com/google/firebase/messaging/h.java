package com.google.firebase.messaging;

import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/h.class */
final /* synthetic */ class h implements Executor {

    /* renamed from: a  reason: collision with root package name */
    static final Executor f32547a = new h();

    private h() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
