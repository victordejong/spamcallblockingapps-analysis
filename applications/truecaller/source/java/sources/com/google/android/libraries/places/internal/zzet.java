package com.google.android.libraries.places.internal;

import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.Task;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzet.class */
public abstract class zzet<T> {
    private Task<T> zza;

    private zzet() {
    }

    public abstract CancellationTokenSource zza();

    public final void zza(Task<T> task) {
        this.zza = task;
    }

    public final Task<T> zzc() {
        return this.zza;
    }
}
