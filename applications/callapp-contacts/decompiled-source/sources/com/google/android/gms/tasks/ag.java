package com.google.android.gms.tasks;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.g.a;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/ag.class */
final class ag implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f30006a = new a(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f30006a.post(runnable);
    }
}
