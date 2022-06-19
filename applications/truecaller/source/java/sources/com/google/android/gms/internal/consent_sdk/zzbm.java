package com.google.android.gms.internal.consent_sdk;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzbm.class */
public final /* synthetic */ class zzbm implements Executor {
    private final Handler zza;

    private zzbm(Handler handler) {
        this.zza = handler;
    }

    public static Executor zza(Handler handler) {
        return new zzbm(handler);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.zza.post(runnable);
    }
}
