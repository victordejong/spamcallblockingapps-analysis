package com.google.firebase.appindexing.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.icing.zzab;
import com.google.android.gms.internal.icing.zzag;
import com.google.android.gms.tasks.TaskCompletionSource;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzr.class */
public abstract class zzr extends TaskApiCall<zzag, Void> implements BaseImplementation.ResultHolder<Status> {
    private TaskCompletionSource<Void> zzdb;

    private zzr() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzr(zzp zzpVar) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    public /* synthetic */ void doExecute(zzag zzagVar, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException {
        this.zzdb = taskCompletionSource;
        zza((zzab) zzagVar.getService());
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public void setFailedResult(Status status) {
        Preconditions.checkArgument(!status.isSuccess(), "Failed result must not be success.");
        this.zzdb.setException(zzab.zza(status, status.getStatusMessage()));
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public /* synthetic */ void setResult(Status status) {
        Status status2 = status;
        if (status2.isSuccess()) {
            this.zzdb.setResult(null);
        } else {
            this.zzdb.setException(zzab.zza(status2, "User Action indexing error, please try again."));
        }
    }

    protected abstract void zza(zzab zzabVar) throws RemoteException;
}
