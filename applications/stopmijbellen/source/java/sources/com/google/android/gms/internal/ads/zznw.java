package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zznw.class */
public final class zznw {
    private static final ArrayDeque<zznv> zza = new ArrayDeque<>();
    private static final Object zzb = new Object();
    private final MediaCodec zzc;
    private final HandlerThread zzd;
    private Handler zze;
    private final AtomicReference<RuntimeException> zzf = new AtomicReference<>();
    private final zzeb zzg;
    private boolean zzh;

    public zznw(MediaCodec mediaCodec, HandlerThread handlerThread) {
        zzeb zzebVar = new zzeb(zzdz.zza);
        this.zzc = mediaCodec;
        this.zzd = handlerThread;
        this.zzg = zzebVar;
    }

    public static /* bridge */ /* synthetic */ void zza(zznw zznwVar, Message message) {
        zznv zznvVar;
        int i = message.what;
        if (i == 0) {
            zznv zznvVar2 = (zznv) message.obj;
            try {
                zznwVar.zzc.queueInputBuffer(zznvVar2.zza, 0, zznvVar2.zzc, zznvVar2.zze, zznvVar2.zzf);
                zznvVar = zznvVar2;
            } catch (RuntimeException e) {
                zznwVar.zzf.set(e);
                zznvVar = zznvVar2;
            }
        } else if (i == 1) {
            zznv zznvVar3 = (zznv) message.obj;
            int i2 = zznvVar3.zza;
            MediaCodec.CryptoInfo cryptoInfo = zznvVar3.zzd;
            long j = zznvVar3.zze;
            int i3 = zznvVar3.zzf;
            try {
                synchronized (zzb) {
                    zznwVar.zzc.queueSecureInputBuffer(i2, 0, cryptoInfo, j, i3);
                }
                zznvVar = zznvVar3;
            } catch (RuntimeException e2) {
                zznwVar.zzf.set(e2);
                zznvVar = zznvVar3;
            }
        } else if (i != 2) {
            zznwVar.zzf.set(new IllegalStateException(String.valueOf(message.what)));
            zznvVar = null;
        } else {
            zznwVar.zzg.zze();
            zznvVar = null;
        }
        if (zznvVar != null) {
            ArrayDeque<zznv> arrayDeque = zza;
            synchronized (arrayDeque) {
                arrayDeque.add(zznvVar);
            }
        }
    }

    private static zznv zzg() {
        ArrayDeque<zznv> arrayDeque = zza;
        synchronized (arrayDeque) {
            if (arrayDeque.isEmpty()) {
                return new zznv();
            }
            return arrayDeque.removeFirst();
        }
    }

    private final void zzh() {
        RuntimeException andSet = this.zzf.getAndSet(null);
        if (andSet == null) {
            return;
        }
        throw andSet;
    }

    private static byte[] zzi(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return bArr2;
        }
        if (bArr2 != null) {
            int length = bArr2.length;
            int length2 = bArr.length;
            if (length >= length2) {
                System.arraycopy(bArr, 0, bArr2, 0, length2);
                return bArr2;
            }
        }
        return Arrays.copyOf(bArr, bArr.length);
    }

    private static int[] zzj(int[] iArr, int[] iArr2) {
        if (iArr == null) {
            return iArr2;
        }
        if (iArr2 != null) {
            int length = iArr2.length;
            int length2 = iArr.length;
            if (length >= length2) {
                System.arraycopy(iArr, 0, iArr2, 0, length2);
                return iArr2;
            }
        }
        return Arrays.copyOf(iArr, iArr.length);
    }

    public final void zzb() {
        if (this.zzh) {
            try {
                Handler handler = this.zze;
                int i = zzfn.zza;
                handler.removeCallbacksAndMessages(null);
                this.zzg.zzc();
                this.zze.obtainMessage(2).sendToTarget();
                this.zzg.zza();
                zzh();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e);
            }
        }
    }

    public final void zzc(int i, int i2, int i3, long j, int i4) {
        zzh();
        zznv zzg = zzg();
        zzg.zza(i, 0, i3, j, i4);
        Handler handler = this.zze;
        int i5 = zzfn.zza;
        handler.obtainMessage(0, zzg).sendToTarget();
    }

    public final void zzd(int i, int i2, zzcx zzcxVar, long j, int i3) {
        zzh();
        zznv zzg = zzg();
        zzg.zza(i, 0, 0, j, 0);
        MediaCodec.CryptoInfo cryptoInfo = zzg.zzd;
        cryptoInfo.numSubSamples = zzcxVar.zzf;
        cryptoInfo.numBytesOfClearData = zzj(zzcxVar.zzd, cryptoInfo.numBytesOfClearData);
        cryptoInfo.numBytesOfEncryptedData = zzj(zzcxVar.zze, cryptoInfo.numBytesOfEncryptedData);
        byte[] zzi = zzi(zzcxVar.zzb, cryptoInfo.key);
        Objects.requireNonNull(zzi);
        cryptoInfo.key = zzi;
        byte[] zzi2 = zzi(zzcxVar.zza, cryptoInfo.iv);
        Objects.requireNonNull(zzi2);
        cryptoInfo.iv = zzi2;
        cryptoInfo.mode = zzcxVar.zzc;
        if (zzfn.zza >= 24) {
            cryptoInfo.setPattern(new MediaCodec.CryptoInfo.Pattern(zzcxVar.zzg, zzcxVar.zzh));
        }
        this.zze.obtainMessage(1, zzg).sendToTarget();
    }

    public final void zze() {
        if (this.zzh) {
            zzb();
            this.zzd.quit();
        }
        this.zzh = false;
    }

    public final void zzf() {
        if (!this.zzh) {
            this.zzd.start();
            this.zze = new zznu(this, this.zzd.getLooper());
            this.zzh = true;
        }
    }
}
