package com.google.android.gms.internal.appset;

import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.appset.zzc;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/appset/zzo.class */
public final class zzo extends zze {
    public final /* synthetic */ TaskCompletionSource zza;

    public zzo(zzp zzpVar, TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.appset.zzf
    public final void zzb(Status status, zzc zzcVar) {
        TaskUtil.m39015a(status, zzcVar != null ? new AppSetIdInfo(zzcVar.f5319a, zzcVar.f5320b) : null, this.zza);
    }
}
