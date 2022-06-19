package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.RecyclerView;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzamn.class */
public final class zzamn {
    private long zza;
    private long zzb;
    private long zzc;
    private final ThreadLocal<Long> zzd = new ThreadLocal<>();

    public zzamn(long j) {
        zzd(0L);
    }

    public final long zza() {
        synchronized (this) {
            long j = this.zza;
            if (j == RecyclerView.FOREVER_NS || j == 9223372036854775806L) {
                return -9223372036854775807L;
            }
            return j;
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    public final long zzb() {
        char zza;
        synchronized (this) {
            long j = this.zzc;
            zza = j != -9223372036854775807L ? j + this.zzb : zza();
        }
        return zza;
    }

    public final long zzc() {
        long j;
        synchronized (this) {
            j = this.zzb;
        }
        return j;
    }

    public final void zzd(long j) {
        synchronized (this) {
            this.zza = j;
            this.zzb = j == RecyclerView.FOREVER_NS ? (char) 0 : (char) 1;
            this.zzc = -9223372036854775807L;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    public final long zze(long j) {
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
            return zzf((c * 16960) / 90000);
        }
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    public final long zzf(long j) {
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
}
