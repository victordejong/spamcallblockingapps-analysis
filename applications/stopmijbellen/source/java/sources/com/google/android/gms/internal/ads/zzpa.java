package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.view.Surface;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpa.class */
public final class zzpa implements zzof {
    private final MediaCodec zza;
    private ByteBuffer[] zzb;
    private ByteBuffer[] zzc;

    public /* synthetic */ zzpa(MediaCodec mediaCodec, Surface surface, zzoz zzozVar) {
        this.zza = mediaCodec;
        if (zzfn.zza < 21) {
            this.zzb = mediaCodec.getInputBuffers();
            this.zzc = mediaCodec.getOutputBuffers();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final int zza() {
        return this.zza.dequeueInputBuffer(0L);
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final int zzb(MediaCodec.BufferInfo bufferInfo) {
        int i;
        do {
            int dequeueOutputBuffer = this.zza.dequeueOutputBuffer(bufferInfo, 0L);
            i = dequeueOutputBuffer;
            if (dequeueOutputBuffer == -3) {
                if (zzfn.zza < 21) {
                    this.zzc = this.zza.getOutputBuffers();
                }
                i = -3;
            }
        } while (i == -3);
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final MediaFormat zzc() {
        return this.zza.getOutputFormat();
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final ByteBuffer zzf(int i) {
        return zzfn.zza >= 21 ? this.zza.getInputBuffer(i) : ((ByteBuffer[]) zzfn.zzC(this.zzb))[i];
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final ByteBuffer zzg(int i) {
        return zzfn.zza >= 21 ? this.zza.getOutputBuffer(i) : ((ByteBuffer[]) zzfn.zzC(this.zzc))[i];
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final void zzi() {
        this.zza.flush();
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final void zzj(int i, int i2, int i3, long j, int i4) {
        this.zza.queueInputBuffer(i, 0, i3, j, i4);
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final void zzk(int i, int i2, zzcx zzcxVar, long j, int i3) {
        this.zza.queueSecureInputBuffer(i, 0, zzcxVar.zza(), j, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final void zzl() {
        this.zzb = null;
        this.zzc = null;
        this.zza.release();
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
