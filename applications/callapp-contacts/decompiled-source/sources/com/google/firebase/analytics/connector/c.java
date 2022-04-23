package com.google.firebase.analytics.connector;

import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/connector/c.class */
final /* synthetic */ class c implements Executor {

    /* renamed from: a  reason: collision with root package name */
    static final Executor f32194a = new c();

    private c() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
