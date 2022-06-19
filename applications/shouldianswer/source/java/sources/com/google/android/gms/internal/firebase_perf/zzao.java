package com.google.android.gms.internal.firebase_perf;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzao.class */
public final class zzao extends Enum<zzao> {
    public static final com.google.android.gms.internal.firebase-perf.zzao zzgo = new zzao("APP_START_TRACE_NAME", 0, "_as");
    public static final com.google.android.gms.internal.firebase-perf.zzao zzgp = new zzao("ON_CREATE_TRACE_NAME", 1, "_astui");
    public static final com.google.android.gms.internal.firebase-perf.zzao zzgq = new zzao("ON_START_TRACE_NAME", 2, "_astfd");
    public static final com.google.android.gms.internal.firebase-perf.zzao zzgr = new zzao("ON_RESUME_TRACE_NAME", 3, "_asti");
    public static final com.google.android.gms.internal.firebase-perf.zzao zzgs = new zzao("FOREGROUND_TRACE_NAME", 4, "_fs");
    public static final com.google.android.gms.internal.firebase-perf.zzao zzgt = new zzao("BACKGROUND_TRACE_NAME", 5, "_bs");
    private static final /* synthetic */ com.google.android.gms.internal.firebase-perf.zzao[] zzgu = {zzgo, zzgp, zzgq, zzgr, zzgs, zzgt};
    private String mName;

    private zzao(String str, int i, String str2) {
        super(str, i);
        this.mName = str2;
    }

    public static com.google.android.gms.internal.firebase-perf.zzao[] values() {
        return (zzao[]) zzgu.clone();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.mName;
    }
}
