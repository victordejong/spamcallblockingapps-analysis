package com.google.android.gms.common.util.concurrent;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.common.zzh;
import java.util.concurrent.Executor;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/concurrent/HandlerExecutor.class */
public class HandlerExecutor implements Executor {
    private final Handler zza;

    @KeepForSdk
    public HandlerExecutor(@RecentlyNonNull Looper looper) {
        this.zza = new zzh(looper);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(@RecentlyNonNull Runnable runnable) {
        this.zza.post(runnable);
    }
}
