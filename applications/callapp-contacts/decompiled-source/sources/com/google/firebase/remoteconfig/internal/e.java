package com.google.firebase.remoteconfig.internal;

import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/e.class */
final /* synthetic */ class e implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private static final e f32609a = new e();

    private e() {
    }

    public static Executor a() {
        return f32609a;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
