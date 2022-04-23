package com.google.android.gms.common.api.internal;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/z.class */
final /* synthetic */ class z implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f22775a;

    private z(Handler handler) {
        this.f22775a = handler;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor a(Handler handler) {
        return new z(handler);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f22775a.post(runnable);
    }
}
