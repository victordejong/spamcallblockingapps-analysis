package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzee.class */
public final class zzee {
    public final zzafv zza;
    public final int zzb;
    public final int zzc = 0;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final zzde[] zzi;

    public zzee(zzafv zzafvVar, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, zzde[] zzdeVarArr) {
        this.zza = zzafvVar;
        this.zzb = i;
        boolean z2 = false;
        this.zzd = i3;
        this.zze = i4;
        this.zzf = i5;
        this.zzg = i6;
        this.zzi = zzdeVarArr;
        int minBufferSize = AudioTrack.getMinBufferSize(i4, i5, i6);
        zzakt.zzd(minBufferSize != -2 ? true : z2);
        this.zzh = zzamq.zzx(minBufferSize * 4, ((int) zzb(250000L)) * i3, Math.max(minBufferSize, ((int) zzb(750000L)) * i3));
    }

    public final long zza(long j) {
        return (j * 1000000) / this.zze;
    }

    public final long zzb(long j) {
        return (j * this.zze) / 1000000;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0108 -> B:19:0x00cd). Please submit an issue!!! */
    public final AudioTrack zzc(boolean z, zzg zzgVar, int i) throws zzds {
        AudioTrack audioTrack;
        AudioFormat build;
        AudioFormat build2;
        try {
            int i2 = zzamq.zza;
            if (i2 >= 29) {
                build2 = new AudioFormat.Builder().setSampleRate(this.zze).setChannelMask(this.zzf).setEncoding(this.zzg).build();
                audioTrack = new AudioTrack.Builder().setAudioAttributes(zzgVar.zza()).setAudioFormat(build2).setTransferMode(1).setBufferSizeInBytes(this.zzh).setSessionId(i).setOffloadedPlayback(false).build();
            } else if (i2 >= 21) {
                AudioAttributes zza = zzgVar.zza();
                build = new AudioFormat.Builder().setSampleRate(this.zze).setChannelMask(this.zzf).setEncoding(this.zzg).build();
                audioTrack = new AudioTrack(zza, build, this.zzh, 1, i);
            } else {
                int i3 = zzgVar.zzb;
                audioTrack = i == 0 ? new AudioTrack(3, this.zze, this.zzf, this.zzg, this.zzh, 1) : new AudioTrack(3, this.zze, this.zzf, this.zzg, this.zzh, 1, i);
            }
            int state = audioTrack.getState();
            if (state == 1) {
                return audioTrack;
            }
            try {
                audioTrack.release();
            } catch (Exception e) {
            }
            throw new zzds(state, this.zze, this.zzf, this.zzh, this.zza, false, null);
        } catch (IllegalArgumentException | UnsupportedOperationException e2) {
            throw new zzds(0, this.zze, this.zzf, this.zzh, this.zza, false, e2);
        }
    }
}
