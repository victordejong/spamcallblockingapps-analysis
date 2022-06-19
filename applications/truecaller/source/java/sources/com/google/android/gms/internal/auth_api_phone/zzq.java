package com.google.android.gms.internal.auth_api_phone;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.internal.auth-api-phone.zzn;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api_phone/zzq.class */
public final class zzq extends IStatusCallback.Stub {
    private final /* synthetic */ TaskCompletionSource zza;

    public zzq(zzn zznVar, TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    public final void onResult(Status status) {
        if (status.f5728b == 6) {
            this.zza.m38516a(ApiExceptionUtil.m38920a(status));
        } else {
            TaskUtil.m39015a(status, null, this.zza);
        }
    }
}
