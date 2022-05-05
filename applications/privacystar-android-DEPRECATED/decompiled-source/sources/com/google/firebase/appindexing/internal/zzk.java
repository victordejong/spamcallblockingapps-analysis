package com.google.firebase.appindexing.internal;

import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Queue;
/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzk.class */
public final class zzk {
    private final zzx zzcs;
    private final TaskCompletionSource<Void> zzct = new TaskCompletionSource<>();
    final /* synthetic */ zzj zzcu;

    public zzk(zzj zzjVar, zzx zzxVar) {
        this.zzcu = zzjVar;
        this.zzcs = zzxVar;
    }

    public final void execute() {
        Queue queue;
        int i;
        GoogleApi googleApi;
        queue = this.zzcu.zzcq;
        synchronized (queue) {
            i = this.zzcu.zzcr;
            Preconditions.checkState(i == 0);
            this.zzcu.zzcr = 1;
        }
        googleApi = this.zzcu.zzcn;
        googleApi.doWrite(new zzm(this)).addOnFailureListener(this.zzcu, new OnFailureListener(this) { // from class: com.google.firebase.appindexing.internal.zzl
            private final zzk zzcv;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcv = this;
            }

            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                this.zzcv.zza(exc);
            }
        });
    }

    public final Task<Void> getTask() {
        return this.zzct.getTask();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zza(Exception exc) {
        Queue queue;
        Queue queue2;
        zzk zzkVar;
        Queue queue3;
        Queue queue4;
        queue = this.zzcu.zzcq;
        synchronized (queue) {
            queue2 = this.zzcu.zzcq;
            if (queue2.peek() == this) {
                queue3 = this.zzcu.zzcq;
                queue3.remove();
                this.zzcu.zzcr = 0;
                queue4 = this.zzcu.zzcq;
                zzkVar = (zzk) queue4.peek();
            } else {
                zzkVar = null;
            }
        }
        this.zzct.trySetException(exc);
        if (zzkVar != null) {
            zzkVar.execute();
        }
    }
}
