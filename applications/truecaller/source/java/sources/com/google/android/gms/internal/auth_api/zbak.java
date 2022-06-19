package com.google.android.gms.internal.auth_api;

import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.internal.auth-api.zbam;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/zbak.class */
public final class zbak extends zbac {
    public final /* synthetic */ TaskCompletionSource zba;

    public zbak(zbam zbamVar, TaskCompletionSource taskCompletionSource) {
        this.zba = taskCompletionSource;
    }

    public final void zbb(Status status, SaveAccountLinkingTokenResult saveAccountLinkingTokenResult) throws RemoteException {
        if (status.m39042q2()) {
            this.zba.f6493a.w(saveAccountLinkingTokenResult);
            return;
        }
        TaskCompletionSource taskCompletionSource = this.zba;
        taskCompletionSource.f6493a.v(ApiExceptionUtil.m38920a(status));
    }
}
