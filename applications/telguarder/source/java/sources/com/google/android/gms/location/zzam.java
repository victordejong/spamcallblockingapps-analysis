package com.google.android.gms.location;

import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/zzam.class */
final class zzam extends zzao {
    private final zzan zza;

    public zzam(TaskCompletionSource<Void> taskCompletionSource, zzan zzanVar) {
        super(taskCompletionSource);
        this.zza = zzanVar;
    }

    @Override // com.google.android.gms.location.zzao, com.google.android.gms.internal.location.zzai
    public final void zzc() {
        this.zza.zza();
    }
}
