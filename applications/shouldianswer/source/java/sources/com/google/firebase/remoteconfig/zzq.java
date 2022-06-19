package com.google.firebase.remoteconfig;

import com.google.android.gms.internal.firebase_remote_config.zzfd;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/firebase/remoteconfig/zzq.class */
public final /* synthetic */ class zzq implements Callable {
    private final zzfd zzkc;

    private zzq(zzfd zzfdVar) {
        this.zzkc = zzfdVar;
    }

    public static Callable zza(zzfd zzfdVar) {
        return new zzq(zzfdVar);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return Boolean.valueOf(this.zzkc.zzdg());
    }
}
