package com.google.android.gms.internal.firebase_remote_config;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzia.class */
public abstract class zzia {
    private static final zzia zzva = new zzic();
    private static final zzia zzvb = new zzib();

    /* JADX INFO: Access modifiers changed from: private */
    public zzia() {
    }

    public static zzia zzhs() {
        return zzva;
    }

    public static zzia zzht() {
        return zzvb;
    }

    public abstract <L> List<L> zza(Object obj, long j);

    public abstract <L> void zza(Object obj, Object obj2, long j);

    public abstract void zzb(Object obj, long j);
}
