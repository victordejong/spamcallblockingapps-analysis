package com.google.android.gms.common.util.concurrent;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.common.zze;
import java.util.concurrent.Executor;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/concurrent/HandlerExecutor.class */
public class HandlerExecutor implements Executor {

    /* renamed from: f */
    private final Handler f7653f;

    @KeepForSdk
    public HandlerExecutor(Looper looper) {
        this.f7653f = new zze(looper);
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NonNull Runnable runnable) {
        this.f7653f.post(runnable);
    }
}
