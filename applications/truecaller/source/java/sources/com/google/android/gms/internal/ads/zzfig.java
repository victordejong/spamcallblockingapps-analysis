package com.google.android.gms.internal.ads;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfig.class */
public final /* synthetic */ class zzfig implements Continuation {
    public static final Continuation zza = new zzfig();

    private zzfig() {
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final Object then(Task task) {
        return Boolean.valueOf(task.m38519s());
    }
}
