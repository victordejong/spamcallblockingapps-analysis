package com.google.firebase.appindexing.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzo.class */
final class zzo extends IStatusCallback.Stub {
    private final /* synthetic */ TaskCompletionSource zzfk;
    private final /* synthetic */ zzl zzfl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzo(zzl zzlVar, TaskCompletionSource taskCompletionSource) {
        this.zzfl = zzlVar;
        this.zzfk = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    public final void onResult(Status status) throws RemoteException {
        TaskCompletionSource taskCompletionSource;
        TaskCompletionSource taskCompletionSource2;
        if (!this.zzfk.m10826e(null)) {
            return;
        }
        if (status.m14996d0()) {
            taskCompletionSource2 = this.zzfl.zzfh.zzfd;
            taskCompletionSource2.m10828c(null);
            return;
        }
        taskCompletionSource = this.zzfl.zzfh.zzfd;
        taskCompletionSource.m10829b(zzaf.zza(status, "Indexing error, please try again."));
    }
}
