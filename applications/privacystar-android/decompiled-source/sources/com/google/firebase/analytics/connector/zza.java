package com.google.firebase.analytics.connector;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/firebase/analytics/connector/zza.class */
final /* synthetic */ class zza implements Executor {
    static final Executor zzbsi = new zza();

    private zza() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
