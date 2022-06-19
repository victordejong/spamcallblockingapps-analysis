package com.google.android.libraries.places.internal;

import android.os.Handler;
import android.os.HandlerThread;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.CancellationToken;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzcr.class */
public final class zzcr {
    private final zzco zza;
    private final Map<TaskCompletionSource<?>, HandlerThread> zzb = new HashMap();

    public zzcr(zzco zzcoVar) {
        this.zza = zzcoVar;
    }

    public final <T> Task<T> zza(Task<T> task, CancellationToken cancellationToken, long j, String str) {
        TaskCompletionSource<T> taskCompletionSource = cancellationToken == null ? new TaskCompletionSource<>() : new TaskCompletionSource<>(cancellationToken);
        zza(taskCompletionSource, j, str);
        task.m38526l(new zzct(this, taskCompletionSource));
        taskCompletionSource.f6493a.c(new zzcs(this, taskCompletionSource));
        return taskCompletionSource.f6493a;
    }

    public final /* synthetic */ void zza(TaskCompletionSource taskCompletionSource, Task task) {
        zza(taskCompletionSource);
    }

    public final boolean zza(TaskCompletionSource<?> taskCompletionSource) {
        HandlerThread remove = this.zzb.remove(taskCompletionSource);
        if (remove == null) {
            return false;
        }
        return remove.quit();
    }

    public final <T> boolean zza(TaskCompletionSource<T> taskCompletionSource, long j, String str) {
        if (this.zzb.containsKey(taskCompletionSource)) {
            return false;
        }
        HandlerThread handlerThread = new HandlerThread("timeoutHandlerThread");
        handlerThread.start();
        this.zzb.put(taskCompletionSource, handlerThread);
        return new Handler(handlerThread.getLooper()).postDelayed(new Runnable(taskCompletionSource, str) { // from class: com.google.android.libraries.places.internal.zzcq
            private final TaskCompletionSource zza;
            private final String zzb;

            {
                this.zza = taskCompletionSource;
                this.zzb = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.m38516a(new ApiException(new Status(15, this.zzb)));
            }
        }, j);
    }
}
