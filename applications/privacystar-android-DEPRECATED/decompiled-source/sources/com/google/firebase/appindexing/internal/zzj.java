package com.google.firebase.appindexing.internal;

import android.os.Handler;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzj.class */
public final class zzj implements OnCompleteListener<Void>, Executor {
    @NonNull
    private final Handler handler;
    @NonNull
    private final GoogleApi<?> zzcn;
    @GuardedBy("pendingCalls")
    private final Queue<zzk> zzcq = new ArrayDeque();
    @GuardedBy("pendingCalls")
    private int zzcr = 0;

    public zzj(@NonNull GoogleApi<?> googleApi) {
        this.zzcn = googleApi;
        this.handler = new Handler(googleApi.getLooper());
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.handler.post(runnable);
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(@NonNull Task<Void> task) {
        zzk zzkVar;
        synchronized (this.zzcq) {
            if (this.zzcr == 2) {
                zzkVar = this.zzcq.peek();
                Preconditions.checkState(zzkVar != null);
            } else {
                zzkVar = null;
            }
            this.zzcr = 0;
        }
        if (zzkVar != null) {
            zzkVar.execute();
        }
    }

    public final Task<Void> zzb(zzx zzxVar) {
        boolean isEmpty;
        zzk zzkVar = new zzk(this, zzxVar);
        Task<Void> task = zzkVar.getTask();
        task.addOnCompleteListener(this, this);
        synchronized (this.zzcq) {
            isEmpty = this.zzcq.isEmpty();
            this.zzcq.add(zzkVar);
        }
        if (isEmpty) {
            zzkVar.execute();
        }
        return task;
    }
}
