package com.google.android.gms.internal.firebase_perf;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzeg.class */
final class zzeg extends Enum<zzeg> {
    public static final com.google.android.gms.internal.firebase-perf.zzeg zzpt = new zzeg("SCALAR", 0, false);
    public static final com.google.android.gms.internal.firebase-perf.zzeg zzpu = new zzeg("VECTOR", 1, true);
    public static final com.google.android.gms.internal.firebase-perf.zzeg zzpv = new zzeg("PACKED_VECTOR", 2, true);
    public static final com.google.android.gms.internal.firebase-perf.zzeg zzpw = new zzeg("MAP", 3, false);
    private static final /* synthetic */ com.google.android.gms.internal.firebase-perf.zzeg[] zzpy = {zzpt, zzpu, zzpv, zzpw};
    private final boolean zzpx;

    private zzeg(String str, int i, boolean z) {
        super(str, i);
        this.zzpx = z;
    }

    public static com.google.android.gms.internal.firebase-perf.zzeg[] values() {
        return (zzeg[]) zzpy.clone();
    }
}
