package com.google.android.gms.location;

import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.internal.location.zzaz;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/zzap.class */
abstract class zzap implements RemoteCall<zzaz, TaskCompletionSource<Boolean>> {
    private boolean zza = true;

    public final boolean zza() {
        return this.zza;
    }

    public final void zzb(boolean z) {
        this.zza = false;
    }
}
