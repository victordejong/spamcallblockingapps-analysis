package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.gms.internal.firebase_remote_config.zzhi;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzjd.class */
public final class zzjd implements zzio {
    private final int flags;
    private final String info;
    private final Object[] zzvs;
    private final zziq zzvv;

    public zzjd(zziq zziqVar, String str, Object[] objArr) {
        this.zzvv = zziqVar;
        this.info = str;
        this.zzvs = objArr;
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

    @Override // com.google.android.gms.internal.firebase_remote_config.zzio
    public final int zzib() {
        return (this.flags & 1) == 1 ? zzhi.zze.zztu : zzhi.zze.zztv;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzio
    public final boolean zzic() {
        return (this.flags & 2) == 2;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzio
    public final zziq zzid() {
        return this.zzvv;
    }

    public final String zzij() {
        return this.info;
    }

    public final Object[] zzik() {
        return this.zzvs;
    }
}
