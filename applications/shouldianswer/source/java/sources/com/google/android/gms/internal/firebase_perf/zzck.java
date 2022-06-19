package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzen;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzck.class */
public final class zzck extends Enum<zzck> implements zzel {
    private final int value;
    private static final com.google.android.gms.internal.firebase-perf.zzck zzlc = new zzck("SERVICE_WORKER_STATUS_UNKNOWN", 0, 0);
    private static final com.google.android.gms.internal.firebase-perf.zzck zzld = new zzck("UNSUPPORTED", 1, 1);
    private static final com.google.android.gms.internal.firebase-perf.zzck zzle = new zzck("CONTROLLED", 2, 2);
    private static final com.google.android.gms.internal.firebase-perf.zzck zzlf = new zzck("UNCONTROLLED", 3, 3);
    private static final /* synthetic */ com.google.android.gms.internal.firebase-perf.zzck[] zzlg = {zzlc, zzld, zzle, zzlf};
    private static final zzek<zzck> zzim = new zzek<zzck>() { // from class: com.google.android.gms.internal.firebase_perf.zzcm
    };

    private zzck(String str, int i, int i2) {
        super(str, i);
        this.value = i2;
    }

    public static com.google.android.gms.internal.firebase-perf.zzck[] values() {
        return (zzck[]) zzlg.clone();
    }

    public static zzen zzcr() {
        return zzcl.zzip;
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
