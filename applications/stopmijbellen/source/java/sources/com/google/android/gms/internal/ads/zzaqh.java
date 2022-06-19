package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.AudioTimestamp;
import android.media.AudioTrack;
@TargetApi(19)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqh.class */
final class zzaqh extends zzaqg {
    private final AudioTimestamp zzb = new AudioTimestamp();
    private long zzc;
    private long zzd;
    private long zze;

    public zzaqh() {
        super(null);
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final long zzc() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final long zzd() {
        return this.zzb.nanoTime;
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void zzg(AudioTrack audioTrack, boolean z) {
        super.zzg(audioTrack, z);
        this.zzc = 0L;
        this.zzd = 0L;
        this.zze = 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final boolean zzh() {
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
}
