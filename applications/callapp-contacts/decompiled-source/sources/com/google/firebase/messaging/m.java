package com.google.firebase.messaging;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/m.class */
public final /* synthetic */ class m implements Executor {

    /* renamed from: a  reason: collision with root package name */
    static final Executor f32554a = new m();

    private m() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
