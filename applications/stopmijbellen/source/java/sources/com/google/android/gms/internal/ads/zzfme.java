package com.google.android.gms.internal.ads;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfme.class */
public final /* synthetic */ class zzfme implements Continuation {
    public static final /* synthetic */ zzfme zza = new zzfme();

    private /* synthetic */ zzfme() {
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final Object then(Task task) {
        return Boolean.valueOf(task.isSuccessful());
    }
}
