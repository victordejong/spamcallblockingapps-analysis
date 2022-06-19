package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzfp;
import com.google.android.gms.internal.firebase-perf.zzfr;
import com.google.android.gms.internal.firebase_perf.zzeh;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzgf.class */
public final class zzgf implements zzfp {
    private final int flags;
    private final String info;
    private final zzfr zzsm;
    private final Object[] zzst;

    public zzgf(zzfr zzfrVar, String str, Object[] objArr) {
        this.zzsm = zzfrVar;
        this.info = str;
        this.zzst = objArr;
        int charAt = str.charAt(0);
        if (charAt < 55296) {
            this.flags = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int charAt2 = str.charAt(i3);
            if (charAt2 < 55296) {
                this.flags = i | (charAt2 << i2);
                return;
            }
            i |= (charAt2 & 8191) << i2;
            i3++;
            i2 += 13;
        }
    }

    public final int zzhk() {
        return (this.flags & 1) == 1 ? zzeh.zzd.zzqo : zzeh.zzd.zzqp;
    }

    public final boolean zzhl() {
        return (this.flags & 2) == 2;
    }

    public final zzfr zzhm() {
        return this.zzsm;
    }

    public final String zzhs() {
        return this.info;
    }

    public final Object[] zzht() {
        return this.zzst;
    }
}
