package com.google.android.gms.internal.firebase_perf;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzap.class */
public final class zzap extends Enum<zzap> {
    public static final com.google.android.gms.internal.firebase-perf.zzap zzgv = new zzap("TRACE_EVENT_RATE_LIMITED", 0, "_fstec");
    public static final com.google.android.gms.internal.firebase-perf.zzap zzgw = new zzap("NETWORK_TRACE_EVENT_RATE_LIMITED", 1, "_fsntc");
    public static final com.google.android.gms.internal.firebase-perf.zzap zzgx = new zzap("TRACE_STARTED_NOT_STOPPED", 2, "_tsns");
    public static final com.google.android.gms.internal.firebase-perf.zzap zzgy = new zzap("FRAMES_TOTAL", 3, "_fr_tot");
    public static final com.google.android.gms.internal.firebase-perf.zzap zzgz = new zzap("FRAMES_SLOW", 4, "_fr_slo");
    public static final com.google.android.gms.internal.firebase-perf.zzap zzha = new zzap("FRAMES_FROZEN", 5, "_fr_fzn");
    private static final /* synthetic */ com.google.android.gms.internal.firebase-perf.zzap[] zzhb = {zzgv, zzgw, zzgx, zzgy, zzgz, zzha};
    private String mName;

    private zzap(String str, int i, String str2) {
        super(str, i);
        this.mName = str2;
    }

    public static com.google.android.gms.internal.firebase-perf.zzap[] values() {
        return (zzap[]) zzhb.clone();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.mName;
    }
}
