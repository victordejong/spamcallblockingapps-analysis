package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzen;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzbj.class */
public final class zzbj extends Enum<zzbj> implements zzel {
    private final int value;
    public static final com.google.android.gms.internal.firebase-perf.zzbj zzii = new zzbj("APPLICATION_PROCESS_STATE_UNKNOWN", 0, 0);
    public static final com.google.android.gms.internal.firebase-perf.zzbj zzij = new zzbj("FOREGROUND", 1, 1);
    public static final com.google.android.gms.internal.firebase-perf.zzbj zzik = new zzbj("BACKGROUND", 2, 2);
    public static final com.google.android.gms.internal.firebase-perf.zzbj zzil = new zzbj("FOREGROUND_BACKGROUND", 3, 3);
    private static final /* synthetic */ com.google.android.gms.internal.firebase-perf.zzbj[] zzin = {zzii, zzij, zzik, zzil};
    private static final zzek<zzbj> zzim = new zzek<zzbj>() { // from class: com.google.android.gms.internal.firebase_perf.zzbl
    };

    private zzbj(String str, int i, int i2) {
        super(str, i);
        this.value = i2;
    }

    public static com.google.android.gms.internal.firebase-perf.zzbj[] values() {
        return (zzbj[]) zzin.clone();
    }

    public static zzen zzcr() {
        return zzbk.zzip;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzel
    public final int zzcq() {
        return this.value;
    }
}
