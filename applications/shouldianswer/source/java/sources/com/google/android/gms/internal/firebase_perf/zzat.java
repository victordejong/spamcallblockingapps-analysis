package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzas;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzat.class */
public class zzat extends Enum<zzat> {
    private static final com.google.android.gms.internal.firebase-perf.zzat zzhe = new zzat("TERABYTES", 0, 1099511627776L) { // from class: com.google.android.gms.internal.firebase_perf.zzas
    };
    private static final com.google.android.gms.internal.firebase-perf.zzat zzhf = new zzat("GIGABYTES", 1, 1073741824) { // from class: com.google.android.gms.internal.firebase_perf.zzav
    };
    public static final com.google.android.gms.internal.firebase-perf.zzat zzhg = new zzat("MEGABYTES", 2, 1048576) { // from class: com.google.android.gms.internal.firebase_perf.zzau
    };
    private static final com.google.android.gms.internal.firebase-perf.zzat zzhh = new zzat("KILOBYTES", 3, 1024) { // from class: com.google.android.gms.internal.firebase_perf.zzax
    };
    public static final com.google.android.gms.internal.firebase-perf.zzat zzhi = new zzat("BYTES", 4, 1) { // from class: com.google.android.gms.internal.firebase_perf.zzaw
    };
    private static final /* synthetic */ com.google.android.gms.internal.firebase-perf.zzat[] zzhk = {zzhe, zzhf, zzhg, zzhh, zzhi};
    private long zzhj;

    private zzat(String str, int i, long j) {
        super(str, i);
        this.zzhj = j;
    }

    public /* synthetic */ zzat(String str, int i, long j, zzas zzasVar) {
        this(str, i, j);
    }

    public static com.google.android.gms.internal.firebase-perf.zzat[] values() {
        return (zzat[]) zzhk.clone();
    }

    public final long zzn(long j) {
        return (j * this.zzhj) / zzhh.zzhj;
    }
}
