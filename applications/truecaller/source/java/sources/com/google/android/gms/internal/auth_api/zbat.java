package com.google.android.gms.internal.auth_api;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.auth-api.zbau;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/zbat.class */
public final class zbat extends zbaa {
    public final /* synthetic */ TaskCompletionSource zba;

    public zbat(zbau zbauVar, TaskCompletionSource taskCompletionSource) {
        this.zba = taskCompletionSource;
    }

    public final void zbb(Status status, PendingIntent pendingIntent) throws RemoteException {
        TaskUtil.m39015a(status, pendingIntent, this.zba);
    }
}
