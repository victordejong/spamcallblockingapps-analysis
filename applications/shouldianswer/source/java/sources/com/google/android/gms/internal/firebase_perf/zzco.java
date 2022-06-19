package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzen;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzco.class */
public final class zzco extends Enum<zzco> implements zzel {
    private final int value;
    public static final com.google.android.gms.internal.firebase-perf.zzco zzlh = new zzco("SESSION_VERBOSITY_NONE", 0, 0);
    public static final com.google.android.gms.internal.firebase-perf.zzco zzli = new zzco("GAUGES_AND_SYSTEM_EVENTS", 1, 1);
    private static final /* synthetic */ com.google.android.gms.internal.firebase-perf.zzco[] zzlj = {zzlh, zzli};
    private static final zzek<zzco> zzim = new zzek<zzco>() { // from class: com.google.android.gms.internal.firebase_perf.zzcn
    };

    private zzco(String str, int i, int i2) {
        super(str, i);
        this.value = i2;
    }

    public static com.google.android.gms.internal.firebase-perf.zzco[] values() {
        return (zzco[]) zzlj.clone();
    }

    public static zzen zzcr() {
        return zzcq.zzip;
    }

    public static com.google.android.gms.internal.firebase-perf.zzco zzo(int i) {
        if (i != 0) {
            if (i == 1) {
                return zzli;
            }
            return null;
        }
        return zzlh;
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
