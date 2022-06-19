package com.google.android.gms.internal.ads;

import android.os.SystemClock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzadz.class */
public final class zzadz {
    private final long zza;
    private final long zzb;
    private long zzc = -9223372036854775807L;
    private long zzd = -9223372036854775807L;
    private long zzf = -9223372036854775807L;
    private long zzg = -9223372036854775807L;
    private float zzj = 0.97f;
    private float zzi = 1.03f;
    private float zzk = 1.0f;
    private long zzl = -9223372036854775807L;
    private long zze = -9223372036854775807L;
    private long zzh = -9223372036854775807L;
    private long zzm = -9223372036854775807L;
    private long zzn = -9223372036854775807L;

    public /* synthetic */ zzadz(float f, float f2, long j, float f3, long j2, long j3, float f4, zzady zzadyVar) {
        this.zza = j2;
        this.zzb = j3;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    private final void zzf() {
        char c;
        char c2 = this.zzc;
        if (c2 != -9223372036854775807L) {
            ?? r0 = this.zzd;
            if (r0 != -9223372036854775807L) {
                c2 = r0;
            }
            ?? r02 = this.zzf;
            char c3 = c2;
            if (r02 != -9223372036854775807L) {
                c3 = c2;
                if (c2 < r02) {
                    c3 = r02;
                }
            }
            ?? r03 = this.zzg;
            c = c3;
            if (r03 != -9223372036854775807L) {
                c = c3;
                if (c3 > r03) {
                    c = r03;
                }
            }
        } else {
            c = 1;
        }
        if (this.zze == c) {
            return;
        }
        this.zze = c;
        this.zzh = c;
        this.zzm = -9223372036854775807L;
        this.zzn = -9223372036854775807L;
        this.zzl = -9223372036854775807L;
    }

    private static long zzg(long j, long j2, float f) {
        return (((float) j2) * 9.999871E-4f) + (((float) j) * 0.999f);
    }

    public final void zza(zzagh zzaghVar) {
        long j = zzaghVar.zzb;
        this.zzc = zzadx.zzb(-9223372036854775807L);
        this.zzf = zzadx.zzb(-9223372036854775807L);
        this.zzg = zzadx.zzb(-9223372036854775807L);
        this.zzj = 0.97f;
        this.zzi = 1.03f;
        zzf();
    }

    public final void zzb(long j) {
        this.zzd = j;
        zzf();
    }

    public final void zzc() {
        long j = this.zzh;
        if (j == -9223372036854775807L) {
            return;
        }
        long j2 = j + this.zzb;
        this.zzh = j2;
        long j3 = this.zzg;
        if (j3 != -9223372036854775807L && j2 > j3) {
            this.zzh = j3;
        }
        this.zzl = -9223372036854775807L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v68 */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    public final float zzd(long j, long j2) {
        char c;
        float f = 1.0f;
        if (this.zzc != -9223372036854775807L) {
            long j3 = j - j2;
            long j4 = this.zzm;
            if (j4 == -9223372036854775807L) {
                this.zzm = j3;
                this.zzn = 0L;
            } else {
                long max = Math.max(j3, zzg(j4, j3, 0.999f));
                this.zzm = max;
                this.zzn = zzg(this.zzn, Math.abs(j3 - max), 0.999f);
            }
            if (this.zzl != -9223372036854775807L && SystemClock.elapsedRealtime() - this.zzl < 1000) {
                return this.zzk;
            }
            this.zzl = SystemClock.elapsedRealtime();
            long j5 = (this.zzn * 3) + this.zzm;
            if (this.zzh > j5) {
                float zzb = (float) zzadx.zzb(1000L);
                int i = 1;
                ?? r0 = {j5, this.zze, this.zzh - (((this.zzk - 1.0f) * zzb) + ((this.zzi - 1.0f) * zzb))};
                char c2 = r0[0];
                while (true) {
                    c = c2;
                    if (i >= 3) {
                        break;
                    }
                    ?? r02 = r0[i];
                    char c3 = c;
                    if (r02 > c) {
                        c3 = r02;
                    }
                    i++;
                    c2 = c3;
                }
                this.zzh = c;
            } else {
                ?? zzy = zzamq.zzy(j - (Math.max(0.0f, this.zzk - 1.0f) / 1.0E-7f), this.zzh, j5);
                this.zzh = zzy;
                c = this.zzg;
                if (c == -9223372036854775807L || zzy <= c) {
                    c = zzy;
                } else {
                    this.zzh = c;
                }
            }
            long j6 = j - c;
            if (Math.abs(j6) < this.zza) {
                this.zzk = 1.0f;
                f = 1.0f;
            } else {
                f = zzamq.zzz((((float) j6) * 1.0E-7f) + 1.0f, this.zzj, this.zzi);
                this.zzk = f;
            }
        }
        return f;
    }

    public final long zze() {
        return this.zzh;
    }
}
