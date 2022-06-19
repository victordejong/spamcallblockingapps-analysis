package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfk.class */
public final class zzfk {
    private long zza;
    private long zzb;
    private boolean zzc;

    private final long zzd(long j) {
        return Math.max(0L, ((this.zzb - 529) * 1000000) / j) + this.zza;
    }

    public final void zza() {
        this.zza = 0L;
        this.zzb = 0L;
        this.zzc = false;
    }

    public final long zzb(zzafv zzafvVar, zzaf zzafVar) {
        if (this.zzb == 0) {
            this.zza = zzafVar.zzd;
        }
        if (this.zzc) {
            return zzafVar.zzd;
        }
        ByteBuffer byteBuffer = zzafVar.zzb;
        Objects.requireNonNull(byteBuffer);
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            i = (i << 8) | (byteBuffer.get(i2) & 255);
        }
        int zzi = zzoo.zzi(i);
        if (zzi != -1) {
            long zzd = zzd(zzafvVar.zzz);
            this.zzb += zzi;
            return zzd;
        }
        this.zzc = true;
        this.zzb = 0L;
        long j = zzafVar.zzd;
        this.zza = j;
        return j;
    }

    public final long zzc(zzafv zzafvVar) {
        return zzd(zzafvVar.zzz);
    }
}
