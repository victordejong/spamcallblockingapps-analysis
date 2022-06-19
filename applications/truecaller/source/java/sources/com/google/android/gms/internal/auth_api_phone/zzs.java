package com.google.android.gms.internal.auth_api_phone;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.auth-api-phone.zzn;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api_phone/zzs.class */
public final class zzs extends zzg {
    private final /* synthetic */ TaskCompletionSource zza;

    public zzs(zzn zznVar, TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    public final void zza(Status status, boolean z) {
        TaskUtil.m39015a(status, Boolean.valueOf(z), this.zza);
    }
}
