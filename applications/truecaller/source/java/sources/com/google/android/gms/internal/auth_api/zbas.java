package com.google.android.gms.internal.auth_api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.auth-api.zbau;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/zbas.class */
public final class zbas extends IStatusCallback.Stub {
    public final /* synthetic */ TaskCompletionSource zba;

    public zbas(zbau zbauVar, TaskCompletionSource taskCompletionSource) {
        this.zba = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    public final void onResult(Status status) throws RemoteException {
        TaskUtil.m39015a(status, null, this.zba);
    }
}
