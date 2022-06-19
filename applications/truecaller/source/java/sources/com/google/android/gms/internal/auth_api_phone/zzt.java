package com.google.android.gms.internal.auth_api_phone;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.auth-api-phone.zzn;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api_phone/zzt.class */
public final class zzt extends zze {
    private final /* synthetic */ TaskCompletionSource zza;

    public zzt(zzn zznVar, TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    public final void zza(Status status, int i) {
        TaskUtil.m39015a(status, Integer.valueOf(i), this.zza);
    }
}
