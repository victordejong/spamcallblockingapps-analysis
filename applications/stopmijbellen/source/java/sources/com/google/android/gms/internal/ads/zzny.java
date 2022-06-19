package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import java.util.ArrayDeque;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzny.class */
public final class zzny extends MediaCodec.Callback {
    private final HandlerThread zzb;
    private Handler zzc;
    private MediaFormat zzh;
    private MediaFormat zzi;
    private MediaCodec.CodecException zzj;
    private long zzk;
    private boolean zzl;
    private IllegalStateException zzm;
    private final Object zza = new Object();
    private final zzoc zzd = new zzoc();
    private final zzoc zze = new zzoc();
    private final ArrayDeque<MediaCodec.BufferInfo> zzf = new ArrayDeque<>();
    private final ArrayDeque<MediaFormat> zzg = new ArrayDeque<>();

    public zzny(HandlerThread handlerThread) {
        this.zzb = handlerThread;
    }

    private final void zzh(MediaFormat mediaFormat) {
        this.zze.zzb(-2);
        this.zzg.add(mediaFormat);
    }

    private final void zzi() {
        if (!this.zzg.isEmpty()) {
            this.zzi = this.zzg.getLast();
        }
        this.zzd.zzc();
        this.zze.zzc();
        this.zzf.clear();
        this.zzg.clear();
        this.zzj = null;
    }

    private final void zzj() {
        IllegalStateException illegalStateException = this.zzm;
        if (illegalStateException == null) {
            return;
        }
        this.zzm = null;
        throw illegalStateException;
    }

    private final void zzk() {
        MediaCodec.CodecException codecException = this.zzj;
        if (codecException == null) {
            return;
        }
        this.zzj = null;
        throw codecException;
    }

    private final void zzl(IllegalStateException illegalStateException) {
        synchronized (this.zza) {
            this.zzm = illegalStateException;
        }
    }

    private final boolean zzm() {
        return this.zzk > 0 || this.zzl;
    }

    @Override // android.media.MediaCodec.Callback
    public final void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.zza) {
            this.zzj = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
        synchronized (this.zza) {
            this.zzd.zzb(i);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputBufferAvailable(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.zza) {
            MediaFormat mediaFormat = this.zzi;
            if (mediaFormat != null) {
                zzh(mediaFormat);
                this.zzi = null;
            }
            this.zze.zzb(i);
            this.zzf.add(bufferInfo);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.zza) {
            zzh(mediaFormat);
            this.zzi = null;
        }
    }

    public final int zza() {
        synchronized (this.zza) {
            int i = -1;
            if (zzm()) {
                return -1;
            }
            zzj();
            zzk();
            if (!this.zzd.zzd()) {
                i = this.zzd.zza();
            }
            return i;
        }
    }

    public final int zzb(MediaCodec.BufferInfo bufferInfo) {
        int i;
        synchronized (this.zza) {
            if (zzm()) {
                return -1;
            }
            zzj();
            zzk();
            if (this.zze.zzd()) {
                return -1;
            }
            int zza = this.zze.zza();
            if (zza >= 0) {
                zzdy.zzb(this.zzh);
                MediaCodec.BufferInfo remove = this.zzf.remove();
                bufferInfo.set(remove.offset, remove.size, remove.presentationTimeUs, remove.flags);
                i = zza;
            } else {
                i = zza;
                if (zza == -2) {
                    this.zzh = this.zzg.remove();
                    i = -2;
                }
            }
            return i;
        }
    }

    public final MediaFormat zzc() {
        MediaFormat mediaFormat;
        synchronized (this.zza) {
            mediaFormat = this.zzh;
            if (mediaFormat == null) {
                throw new IllegalStateException();
            }
        }
        return mediaFormat;
    }

    public final void zzd(final Runnable runnable) {
        synchronized (this.zza) {
            this.zzk++;
            Handler handler = this.zzc;
            int i = zzfn.zza;
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zznx
                @Override // java.lang.Runnable
                public final void run() {
                    zzny.this.zzf(runnable);
                }
            });
        }
    }

    public final void zze(MediaCodec mediaCodec) {
        zzdy.zzf(this.zzc == null);
        this.zzb.start();
        Handler handler = new Handler(this.zzb.getLooper());
        mediaCodec.setCallback(this, handler);
        this.zzc = handler;
    }

    public final /* synthetic */ void zzf(Runnable runnable) {
        synchronized (this.zza) {
            if (!this.zzl) {
                long j = this.zzk - 1;
                this.zzk = j;
                int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                if (i <= 0) {
                    if (i < 0) {
                        zzl(new IllegalStateException());
                    } else {
                        zzi();
                        try {
                            ((zzno) runnable).zza.start();
                        } catch (IllegalStateException e) {
                            zzl(e);
                        } catch (Exception e2) {
                            zzl(new IllegalStateException(e2));
                        }
                    }
                }
            }
        }
    }

    public final void zzg() {
        synchronized (this.zza) {
            this.zzl = true;
            this.zzb.quit();
            zzi();
        }
    }
}
