package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzt.class */
public final class zzt implements Executor {
    private final /* synthetic */ Handler val$handler;

    public zzt(zzq zzqVar, Handler handler) {
        this.val$handler = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.val$handler.post(runnable);
    }
}
