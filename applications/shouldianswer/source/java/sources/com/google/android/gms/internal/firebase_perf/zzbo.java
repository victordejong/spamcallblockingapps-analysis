package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzen;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzbo.class */
public final class zzbo extends Enum<zzbo> implements zzel {
    private final int value;
    private static final com.google.android.gms.internal.firebase-perf.zzbo zzit = new zzbo("EFFECTIVE_CONNECTION_TYPE_UNKNOWN", 0, 0);
    private static final com.google.android.gms.internal.firebase-perf.zzbo zziu = new zzbo("EFFECTIVE_CONNECTION_TYPE_SLOW_2G", 1, 1);
    private static final com.google.android.gms.internal.firebase-perf.zzbo zziv = new zzbo("EFFECTIVE_CONNECTION_TYPE_2G", 2, 2);
    private static final com.google.android.gms.internal.firebase-perf.zzbo zziw = new zzbo("EFFECTIVE_CONNECTION_TYPE_3G", 3, 3);
    private static final com.google.android.gms.internal.firebase-perf.zzbo zzix = new zzbo("EFFECTIVE_CONNECTION_TYPE_4G", 4, 4);
    private static final /* synthetic */ com.google.android.gms.internal.firebase-perf.zzbo[] zziy = {zzit, zziu, zziv, zziw, zzix};
    private static final zzek<zzbo> zzim = new zzek<zzbo>() { // from class: com.google.android.gms.internal.firebase_perf.zzbq
    };

    private zzbo(String str, int i, int i2) {
        super(str, i);
        this.value = i2;
    }

    public static com.google.android.gms.internal.firebase-perf.zzbo[] values() {
        return (zzbo[]) zziy.clone();
    }

    public static zzen zzcr() {
        return zzbp.zzip;
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
