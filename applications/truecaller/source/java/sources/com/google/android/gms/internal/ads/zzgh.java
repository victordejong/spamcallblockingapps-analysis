package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.view.Surface;
import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgh.class */
public final class zzgh {
    private final MediaCodec zza;
    private ByteBuffer[] zzb;
    private ByteBuffer[] zzc;

    public /* synthetic */ zzgh(MediaCodec mediaCodec, Surface surface, zzgg zzggVar) {
        this.zza = mediaCodec;
        if (zzamq.zza < 21) {
            this.zzb = mediaCodec.getInputBuffers();
            this.zzc = mediaCodec.getOutputBuffers();
        }
    }

    public final int zza() {
        return this.zza.dequeueInputBuffer(0L);
    }

    public final int zzb(MediaCodec.BufferInfo bufferInfo) {
        int i;
        do {
            int dequeueOutputBuffer = this.zza.dequeueOutputBuffer(bufferInfo, 0L);
            i = dequeueOutputBuffer;
            if (dequeueOutputBuffer == -3) {
                if (zzamq.zza < 21) {
                    this.zzc = this.zza.getOutputBuffers();
                }
                i = -3;
            }
        } while (i == -3);
        return i;
    }

    public final MediaFormat zzc() {
        return this.zza.getOutputFormat();
    }

    public final ByteBuffer zzd(int i) {
        return zzamq.zza >= 21 ? this.zza.getInputBuffer(i) : ((ByteBuffer[]) zzamq.zzd(this.zzb))[i];
    }

    public final ByteBuffer zze(int i) {
        return zzamq.zza >= 21 ? this.zza.getOutputBuffer(i) : ((ByteBuffer[]) zzamq.zzd(this.zzc))[i];
    }

    public final void zzf(int i, int i2, int i3, long j, int i4) {
        this.zza.queueInputBuffer(i, 0, i3, j, i4);
    }

    public final void zzg(int i, int i2, zzac zzacVar, long j, int i3) {
        this.zza.queueSecureInputBuffer(i, 0, zzacVar.zzb(), j, 0);
    }

    public final void zzh(int i, boolean z) {
        this.zza.releaseOutputBuffer(i, z);
    }

    public final void zzi(int i, long j) {
        this.zza.releaseOutputBuffer(i, j);
    }

    public final void zzj() {
        this.zza.flush();
    }

    public final void zzk() {
        this.zzb = null;
        this.zzc = null;
        this.zza.release();
    }

    public final void zzl(Surface surface) {
        this.zza.setOutputSurface(surface);
    }

    public final void zzm(Bundle bundle) {
        this.zza.setParameters(bundle);
    }

    public final void zzn(int i) {
        this.zza.setVideoScalingMode(i);
    }
}
