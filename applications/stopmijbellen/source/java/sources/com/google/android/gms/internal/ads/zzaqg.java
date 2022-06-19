package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.SystemClock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqg.class */
class zzaqg {
    public AudioTrack zza;
    private boolean zzb;
    private int zzc;
    private long zzd;
    private long zze;
    private long zzf;
    private long zzg;
    private long zzh;
    private long zzi;

    private zzaqg() {
    }

    public /* synthetic */ zzaqg(zzaqf zzaqfVar) {
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    public final long zza() {
        if (this.zzg != -9223372036854775807L) {
            return Math.min(this.zzi, ((((SystemClock.elapsedRealtime() * 1000) - this.zzg) * this.zzc) / 1000000) + this.zzh);
        }
        int playState = this.zza.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        ?? playbackHeadPosition = this.zza.getPlaybackHeadPosition() & 4294967295L;
        char c = playbackHeadPosition;
        if (this.zzb) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.zzf = this.zzd;
            }
            c = playbackHeadPosition + this.zzf;
        }
        if (this.zzd > c) {
            this.zze++;
        }
        this.zzd = c;
        return c + (this.zze << 32);
    }

    public final long zzb() {
        return (zza() * 1000000) / this.zzc;
    }

    public long zzc() {
        throw new UnsupportedOperationException();
    }

    public long zzd() {
        throw new UnsupportedOperationException();
    }

    public final void zze(long j) {
        this.zzh = zza();
        this.zzg = SystemClock.elapsedRealtime() * 1000;
        this.zzi = j;
        this.zza.stop();
    }

    public final void zzf() {
        if (this.zzg != -9223372036854775807L) {
            return;
        }
        this.zza.pause();
    }

    public void zzg(AudioTrack audioTrack, boolean z) {
        this.zza = audioTrack;
        this.zzb = z;
        this.zzg = -9223372036854775807L;
        this.zzd = 0L;
        this.zze = 0L;
        this.zzf = 0L;
        if (audioTrack != null) {
            this.zzc = audioTrack.getSampleRate();
        }
    }

    public boolean zzh() {
        return false;
    }
}
