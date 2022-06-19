package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.HandlerThread;
import android.view.Surface;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zznt.class */
public final class zznt implements zzof {
    private final MediaCodec zza;
    private final zzny zzb;
    private final zznw zzc;
    private boolean zzd;
    private int zze = 0;

    public /* synthetic */ zznt(MediaCodec mediaCodec, HandlerThread handlerThread, HandlerThread handlerThread2, boolean z, zzns zznsVar) {
        this.zza = mediaCodec;
        this.zzb = new zzny(handlerThread);
        this.zzc = new zznw(mediaCodec, handlerThread2);
    }

    public static /* synthetic */ String zzd(int i) {
        return zzs(i, "ExoPlayer:MediaCodecAsyncAdapter:");
    }

    public static /* synthetic */ String zze(int i) {
        return zzs(i, "ExoPlayer:MediaCodecQueueingThread:");
    }

    public static /* bridge */ /* synthetic */ void zzh(zznt zzntVar, MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i, boolean z) {
        zzntVar.zzb.zze(zzntVar.zza);
        zzfl.zza("configureCodec");
        zzntVar.zza.configure(mediaFormat, surface, (MediaCrypto) null, 0);
        zzfl.zzb();
        zzntVar.zzc.zzf();
        zzfl.zza("startCodec");
        zzntVar.zza.start();
        zzfl.zzb();
        zzntVar.zze = 1;
    }

    public static String zzs(int i, String str) {
        StringBuilder sb = new StringBuilder(str);
        if (i == 1) {
            sb.append("Audio");
        } else if (i == 2) {
            sb.append("Video");
        } else {
            sb.append("Unknown(");
            sb.append(i);
            sb.append(")");
        }
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final int zza() {
        return this.zzb.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final int zzb(MediaCodec.BufferInfo bufferInfo) {
        return this.zzb.zzb(bufferInfo);
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final MediaFormat zzc() {
        return this.zzb.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final ByteBuffer zzf(int i) {
        return this.zza.getInputBuffer(i);
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final ByteBuffer zzg(int i) {
        return this.zza.getOutputBuffer(i);
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final void zzi() {
        this.zzc.zzb();
        this.zza.flush();
        zzny zznyVar = this.zzb;
        MediaCodec mediaCodec = this.zza;
        Objects.requireNonNull(mediaCodec);
        zznyVar.zzd(new zzno(mediaCodec));
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final void zzj(int i, int i2, int i3, long j, int i4) {
        this.zzc.zzc(i, 0, i3, j, i4);
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final void zzk(int i, int i2, zzcx zzcxVar, long j, int i3) {
        this.zzc.zzd(i, 0, zzcxVar, j, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final void zzl() {
        try {
            if (this.zze == 1) {
                this.zzc.zze();
                this.zzb.zzg();
            }
            this.zze = 2;
            if (this.zzd) {
                return;
            }
            this.zza.release();
            this.zzd = true;
        } catch (Throwable th) {
            if (!this.zzd) {
                this.zza.release();
                this.zzd = true;
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final void zzm(int i, long j) {
        this.zza.releaseOutputBuffer(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final void zzn(int i, boolean z) {
        this.zza.releaseOutputBuffer(i, z);
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final void zzo(Surface surface) {
        this.zza.setOutputSurface(surface);
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final void zzp(Bundle bundle) {
        this.zza.setParameters(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final void zzq(int i) {
        this.zza.setVideoScalingMode(i);
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final boolean zzr() {
        return false;
    }
}
