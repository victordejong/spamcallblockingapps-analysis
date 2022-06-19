package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzen;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzct.class */
public final class zzct extends Enum<zzct> implements zzel {
    private final int value;
    private static final com.google.android.gms.internal.firebase-perf.zzct zzlq = new zzct("VISIBILITY_STATE_UNKNOWN", 0, 0);
    private static final com.google.android.gms.internal.firebase-perf.zzct zzlr = new zzct("VISIBLE", 1, 1);
    private static final com.google.android.gms.internal.firebase-perf.zzct zzls = new zzct("HIDDEN", 2, 2);
    private static final com.google.android.gms.internal.firebase-perf.zzct zzlt = new zzct("PRERENDER", 3, 3);
    private static final com.google.android.gms.internal.firebase-perf.zzct zzlu = new zzct("UNLOADED", 4, 4);
    private static final /* synthetic */ com.google.android.gms.internal.firebase-perf.zzct[] zzlv = {zzlq, zzlr, zzls, zzlt, zzlu};
    private static final zzek<zzct> zzim = new zzek<zzct>() { // from class: com.google.android.gms.internal.firebase_perf.zzcs
    };

    private zzct(String str, int i, int i2) {
        super(str, i);
        this.value = i2;
    }

    public static com.google.android.gms.internal.firebase-perf.zzct[] values() {
        return (zzct[]) zzlv.clone();
    }

    public static zzen zzcr() {
        return zzcv.zzip;
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
