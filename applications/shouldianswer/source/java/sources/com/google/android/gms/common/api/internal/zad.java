package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zad.class */
public abstract class zad<T> extends zac {
    protected final TaskCompletionSource<T> zacn;

    public zad(int i, TaskCompletionSource<T> taskCompletionSource) {
        super(i);
        this.zacn = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.zab
    public void zaa(Status status) {
        this.zacn.trySetException(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.zab
    public final void zaa(GoogleApiManager.zaa<?> zaaVar) {
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
    public void zaa(zaab zaabVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zab
    public void zaa(RuntimeException runtimeException) {
        this.zacn.trySetException(runtimeException);
    }

    protected abstract void zad(GoogleApiManager.zaa<?> zaaVar);
}
