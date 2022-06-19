package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfk.class */
public final class zzfk {
    private long zza;
    private long zzb;
    private long zzc;
    private final ThreadLocal<Long> zzd = new ThreadLocal<>();

    public zzfk(long j) {
        zzf(0L);
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    public final long zza(long j) {
        long j2;
        synchronized (this) {
            if (this.zzb == -9223372036854775807L) {
                ?? r0 = this.zza;
                char c = r0;
                if (r0 == 9223372036854775806L) {
                    Long l = this.zzd.get();
                    Objects.requireNonNull(l);
                    c = l.longValue();
                }
                this.zzb = c - j;
                notifyAll();
            }
            this.zzc = j;
            j2 = this.zzb;
        }
        return j + j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    public final long zzb(long j) {
        synchronized (this) {
            if (j == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            long j2 = this.zzc;
            char c = j;
            if (j2 != -9223372036854775807L) {
                long j3 = (j2 * 90000) / 1000000;
                long j4 = (4294967296L + j3) / 8589934592L;
                c = (((-1) + j4) * 8589934592L) + j;
                ?? r0 = (j4 * 8589934592L) + j;
                if (Math.abs(c - j3) >= Math.abs(r0 - j3)) {
                    c = r0;
                }
            }
            return zza((c * 16960) / 90000);
        }
    }

    public final long zzc() {
        synchronized (this) {
            long j = this.zza;
            if (j == Long.MAX_VALUE || j == 9223372036854775806L) {
                return -9223372036854775807L;
            }
            return j;
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    public final long zzd() {
        char zzc;
        synchronized (this) {
            long j = this.zzc;
            zzc = j != -9223372036854775807L ? j + this.zzb : zzc();
        }
        return zzc;
    }

    public final long zze() {
        long j;
        synchronized (this) {
            j = this.zzb;
        }
        return j;
    }

    public final void zzf(long j) {
        synchronized (this) {
            this.zza = j;
            this.zzb = j == Long.MAX_VALUE ? (char) 0 : (char) 1;
            this.zzc = -9223372036854775807L;
        }
    }
}
