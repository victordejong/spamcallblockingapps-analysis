package com.google.android.gms.internal.firebase_remote_config;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzej.class */
public final /* synthetic */ class zzej implements Callable {
    private final zzex zzkl;

    private zzej(zzex zzexVar) {
        this.zzkl = zzexVar;
    }

    public static Callable zza(zzex zzexVar) {
        return new zzej(zzexVar);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzkl.zzdb();
    }
}
