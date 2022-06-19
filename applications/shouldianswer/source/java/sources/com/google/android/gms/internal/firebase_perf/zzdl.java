package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzdd;
import com.google.android.gms.internal.firebase-perf.zzdg;
import com.google.android.gms.internal.firebase-perf.zzdu;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzdl.class */
public final class zzdl {
    private final byte[] buffer;
    private final zzdu zzmn;

    private zzdl(int i) {
        this.buffer = new byte[i];
        this.zzmn = zzdu.zzb(this.buffer);
    }

    public /* synthetic */ zzdl(int i, zzdg zzdgVar) {
        this(i);
    }

    public final zzdd zzfq() {
        this.zzmn.zzfu();
        return new zzdn(this.buffer);
    }

    public final zzdu zzfr() {
        return this.zzmn;
    }
}
