package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgc.class */
public final class zzgc implements zzhs {
    private final zztk zza;
    private boolean zzh;
    private final long zzb = zzk.zzc(50000);
    private final long zzc = zzk.zzc(50000);
    private final long zzd = zzk.zzc(2500);
    private final long zze = zzk.zzc(5000);
    private int zzg = 13107200;
    private final long zzf = zzk.zzc(0);

    public zzgc() {
        zztk zztkVar = new zztk(true, 65536);
        zzj(2500, 0, "bufferForPlaybackMs", "0");
        zzj(5000, 0, "bufferForPlaybackAfterRebufferMs", "0");
        zzj(50000, 2500, "minBufferMs", "bufferForPlaybackMs");
        zzj(50000, 5000, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        zzj(50000, 50000, "maxBufferMs", "minBufferMs");
        zzj(0, 0, "backBufferDurationMs", "0");
        this.zza = zztkVar;
    }

    private static void zzj(int i, int i2, String str, String str2) {
        boolean z = i >= i2;
        StringBuilder sb = new StringBuilder(str2.length() + str.length() + 21);
        sb.append(str);
        sb.append(" cannot be less than ");
        sb.append(str2);
        zzdy.zze(z, sb.toString());
    }

    private final void zzk(boolean z) {
        this.zzg = 13107200;
        this.zzh = false;
        if (z) {
            this.zza.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final long zza() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final void zzb() {
        zzk(false);
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final void zzc() {
        zzk(true);
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final void zzd() {
        zzk(true);
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final boolean zze() {
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzhs
    public final boolean zzf(long j, long j2, float f) {
        int zza = this.zza.zza();
        int i = this.zzg;
        ?? r0 = this.zzb;
        char c = r0;
        if (f > 1.0f) {
            c = Math.min(zzfn.zzp(r0, f), this.zzc);
        }
        boolean z = false;
        if (j2 < Math.max((long) c, 500000L)) {
            if (zza < i) {
                z = true;
            }
            this.zzh = z;
            if (!z && j2 < 500000) {
                Log.w("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j2 >= this.zzc || zza >= i) {
            this.zzh = false;
        }
        return this.zzh;
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzhs
    public final boolean zzg(long j, float f, boolean z, long j2) {
        long zzr = zzfn.zzr(j, f);
        char c = z ? this.zze : this.zzd;
        char c2 = c;
        if (j2 != -9223372036854775807L) {
            c2 = Math.min(j2 / 2, (long) c);
        }
        return c2 <= 0 || zzr >= c2 || this.zza.zza() >= this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final zztk zzh() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final void zzi(zzil[] zzilVarArr, zzch zzchVar, zzsb[] zzsbVarArr) {
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= 2) {
                int max = Math.max(13107200, i3);
                this.zzg = max;
                this.zza.zzf(max);
                return;
            }
            int i4 = i3;
            if (zzsbVarArr[i] != null) {
                int i5 = 13107200;
                if (zzilVarArr[i].zzb() != 1) {
                    i5 = 131072000;
                }
                i4 = i3 + i5;
            }
            i++;
            i2 = i4;
        }
    }
}
