package com.google.android.gms.internal.ads;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaom.class */
public final class zzaom extends zzaol {
    private final AudioTimestamp zzb = new AudioTimestamp();
    private long zzc;
    private long zzd;
    private long zze;

    public zzaom() {
        super(null);
    }

    @Override // com.google.android.gms.internal.ads.zzaol
    public final void zza(AudioTrack audioTrack, boolean z) {
        super.zza(audioTrack, z);
        this.zzc = 0L;
        this.zzd = 0L;
        this.zze = 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzaol
    public final boolean zzf() {
        boolean timestamp = this.zza.getTimestamp(this.zzb);
        if (timestamp) {
            long j = this.zzb.framePosition;
            if (this.zzd > j) {
                this.zzc++;
            }
            this.zzd = j;
            this.zze = j + (this.zzc << 32);
        }
        return timestamp;
    }

    @Override // com.google.android.gms.internal.ads.zzaol
    public final long zzg() {
        return this.zzb.nanoTime;
    }

    @Override // com.google.android.gms.internal.ads.zzaol
    public final long zzh() {
        return this.zze;
    }
}
