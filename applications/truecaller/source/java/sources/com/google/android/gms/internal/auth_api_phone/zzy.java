package com.google.android.gms.internal.auth_api_phone;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.auth-api-phone.zzu;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api_phone/zzy.class */
public final class zzy extends zzk {
    private final /* synthetic */ TaskCompletionSource zza;

    public zzy(zzu zzuVar, TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    public final void zza(Status status) {
        TaskUtil.m39015a(status, null, this.zza);
    }
}
