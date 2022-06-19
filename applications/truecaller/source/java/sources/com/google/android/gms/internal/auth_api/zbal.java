package com.google.android.gms.internal.auth_api;

import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.SavePasswordResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.auth-api.zbam;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/zbal.class */
public final class zbal extends zbae {
    public final /* synthetic */ TaskCompletionSource zba;

    public zbal(zbam zbamVar, TaskCompletionSource taskCompletionSource) {
        this.zba = taskCompletionSource;
    }

    public final void zbb(Status status, SavePasswordResult savePasswordResult) throws RemoteException {
        TaskUtil.m39015a(status, savePasswordResult, this.zba);
    }
}
