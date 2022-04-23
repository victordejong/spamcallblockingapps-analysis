package com.google.firebase.appindexing.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzn.class */
final class zzn extends IStatusCallback.Stub {
    private final /* synthetic */ TaskCompletionSource zzcx;
    private final /* synthetic */ zzm zzcy;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzn(zzm zzmVar, TaskCompletionSource taskCompletionSource) {
        this.zzcy = zzmVar;
        this.zzcx = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    public final void onResult(Status status) throws RemoteException {
        TaskCompletionSource taskCompletionSource;
        TaskCompletionSource taskCompletionSource2;
        if (!this.zzcx.trySetResult(null)) {
            return;
        }
        if (status.isSuccess()) {
            taskCompletionSource2 = this.zzcy.zzcw.zzct;
            taskCompletionSource2.setResult(null);
            return;
        }
        taskCompletionSource = this.zzcy.zzcw.zzct;
        taskCompletionSource.setException(zzab.zza(status, "Indexing error, please try again."));
    }
}
