package com.google.android.gms.cloudmessaging;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/z.class */
final /* synthetic */ class z implements Executor {

    /* renamed from: a  reason: collision with root package name */
    static final Executor f22583a = new z();

    private z() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
