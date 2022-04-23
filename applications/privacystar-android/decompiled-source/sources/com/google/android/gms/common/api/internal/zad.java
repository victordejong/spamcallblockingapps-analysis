package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.tasks.TaskCompletionSource;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zad.class */
public abstract class zad<T> extends zac {
    protected final TaskCompletionSource<T> zacm;

    public zad(int i, TaskCompletionSource<T> taskCompletionSource) {
        super(i);
        this.zacm = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.zab
    public void zaa(@NonNull Status status) {
        this.zacm.trySetException(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.zab
    public final void zaa(GoogleApiManager.zaa<?> zaaVar) throws DeadObjectException {
        Status zaa;
        Status zaa2;
        try {
            zad(zaaVar);
        } catch (DeadObjectException e) {
            zaa = zab.zaa(e);
            zaa(zaa);
            throw e;
        } catch (RemoteException e2) {
            zaa2 = zab.zaa(e2);
            zaa(zaa2);
        } catch (RuntimeException e3) {
            zaa(e3);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zab
    public void zaa(@NonNull zaab zaabVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zab
    public void zaa(@NonNull RuntimeException runtimeException) {
        this.zacm.trySetException(runtimeException);
    }

    protected abstract void zad(GoogleApiManager.zaa<?> zaaVar) throws RemoteException;
}
