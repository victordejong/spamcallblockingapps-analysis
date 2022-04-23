package com.google.android.gms.internal.consent_sdk;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/an.class */
final /* synthetic */ class an implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f28705a;

    private an(Handler handler) {
        this.f28705a = handler;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor a(Handler handler) {
        return new an(handler);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f28705a.post(runnable);
    }
}
