package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzfa;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzfb.class */
public abstract class zzfb {
    private static final com.google.android.gms.internal.firebase-perf.zzfb zzrv = new zzfd(null);
    private static final com.google.android.gms.internal.firebase-perf.zzfb zzrw = new zzfc(null);

    private zzfb() {
    }

    public /* synthetic */ zzfb(zzfa zzfaVar) {
        this();
    }

    public static com.google.android.gms.internal.firebase-perf.zzfb zzha() {
        return zzrv;
    }

    public static com.google.android.gms.internal.firebase-perf.zzfb zzhb() {
        return zzrw;
    }

    public abstract void zza(Object obj, long j);

    public abstract <L> void zza(Object obj, Object obj2, long j);
}
