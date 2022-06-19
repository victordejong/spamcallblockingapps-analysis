package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzgj.class */
public abstract class zzgj {
    int zzpd;
    int zzpe;
    int zzpf;
    zzgq zzpg;
    private boolean zzph;

    /* JADX INFO: Access modifiers changed from: private */
    public zzgj() {
        this.zzpe = 100;
        this.zzpf = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzph = false;
    }

    public static zzgj zza(byte[] bArr, int i, int i2, boolean z) {
        zzgl zzglVar = new zzgl(bArr, 0, i2, false);
        try {
            zzglVar.zzaa(i2);
            return zzglVar;
        } catch (zzhq e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static int zzac(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public static long zze(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public abstract double readDouble();

    public abstract float readFloat();

    public abstract String readString();

    public abstract int zzaa(int i);

    public abstract void zzab(int i);

    public abstract int zzfb();

    public abstract long zzfc();

    public abstract long zzfd();

    public abstract int zzfe();

    public abstract long zzff();

    public abstract int zzfg();

    public abstract boolean zzfh();

    public abstract String zzfi();

    public abstract zzfx zzfj();

    public abstract int zzfk();

    public abstract int zzfl();

    public abstract int zzfm();

    public abstract long zzfn();

    public abstract int zzfo();

    public abstract long zzfp();

    public abstract long zzfq();

    public abstract boolean zzfr();

    public abstract int zzfs();

    public abstract void zzy(int i);

    public abstract boolean zzz(int i);
}
