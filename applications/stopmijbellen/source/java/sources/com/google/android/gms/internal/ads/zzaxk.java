package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import java.nio.ByteBuffer;
@TargetApi(16)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxk.class */
public final class zzaxk extends zzate {
    private int zzA;
    private final Context zzb;
    private final zzaxm zzc;
    private final zzaxu zzd;
    private final boolean zze;
    private final long[] zzf;
    private zzapg[] zzg;
    private zzaxj zzh;
    private Surface zzi;
    private Surface zzj;
    private boolean zzk;
    private long zzl;
    private long zzm;
    private int zzn;
    private int zzo;
    private int zzp;
    private float zzq;
    private int zzr;
    private int zzs;
    private int zzt;
    private float zzu;
    private int zzv;
    private int zzw;
    private int zzx;
    private float zzy;
    private long zzz;

    public zzaxk(Context context, zzatg zzatgVar, long j, Handler handler, zzaxv zzaxvVar, int i) {
        super(2, zzatgVar, null, false);
        this.zzb = context.getApplicationContext();
        this.zzc = new zzaxm(context);
        this.zzd = new zzaxu(handler, zzaxvVar);
        boolean z = false;
        if (zzaxb.zza <= 22) {
            z = false;
            if ("foster".equals(zzaxb.zzb)) {
                z = false;
                if ("NVIDIA".equals(zzaxb.zzc)) {
                    z = true;
                }
            }
        }
        this.zze = z;
        this.zzf = new long[10];
        this.zzz = -9223372036854775807L;
        this.zzl = -9223372036854775807L;
        this.zzr = -1;
        this.zzs = -1;
        this.zzu = -1.0f;
        this.zzq = -1.0f;
        zzab();
    }

    private static int zzN(zzapg zzapgVar) {
        int i = zzapgVar.zzm;
        int i2 = i;
        if (i == -1) {
            i2 = 0;
        }
        return i2;
    }

    private final void zzab() {
        this.zzv = -1;
        this.zzw = -1;
        this.zzy = -1.0f;
        this.zzx = -1;
    }

    private final void zzac() {
        if (this.zzn > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.zzd.zzd(this.zzn, elapsedRealtime - this.zzm);
            this.zzn = 0;
            this.zzm = elapsedRealtime;
        }
    }

    private final void zzad() {
        int i = this.zzv;
        int i2 = this.zzr;
        if (i == i2 && this.zzw == this.zzs && this.zzx == this.zzt && this.zzy == this.zzu) {
            return;
        }
        this.zzd.zzh(i2, this.zzs, this.zzt, this.zzu);
        this.zzv = this.zzr;
        this.zzw = this.zzs;
        this.zzx = this.zzt;
        this.zzy = this.zzu;
    }

    private final void zzae() {
        if (this.zzv == -1 && this.zzw == -1) {
            return;
        }
        this.zzd.zzh(this.zzr, this.zzs, this.zzt, this.zzu);
    }

    private static boolean zzaf(long j) {
        return j < -30000;
    }

    private final boolean zzag(boolean z) {
        boolean z2 = true;
        if (zzaxb.zza >= 23) {
            if (z) {
                if (zzaxh.zzb(this.zzb)) {
                    return true;
                }
            }
            return z2;
        }
        z2 = false;
        return z2;
    }

    @Override // com.google.android.gms.internal.ads.zzate, com.google.android.gms.internal.ads.zzapl
    public final boolean zzF() {
        Surface surface;
        if (super.zzF() && (this.zzk || (((surface = this.zzj) != null && this.zzi == surface) || zzU() == null))) {
            this.zzl = -9223372036854775807L;
            return true;
        } else if (this.zzl == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.zzl) {
                return true;
            }
            this.zzl = -9223372036854775807L;
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzate
    public final int zzH(zzatg zzatgVar, zzapg zzapgVar) throws zzatj {
        boolean z;
        String str = zzapgVar.zzf;
        int i = 0;
        if (!zzawr.zzb(str)) {
            return 0;
        }
        zzarf zzarfVar = zzapgVar.zzi;
        if (zzarfVar != null) {
            int i2 = 0;
            boolean z2 = false;
            while (true) {
                z = z2;
                if (i2 >= zzarfVar.zza) {
                    break;
                }
                z2 |= zzarfVar.zza(i2).zzc;
                i2++;
            }
        } else {
            z = false;
        }
        zzatc zzc = zzato.zzc(str, z);
        if (zzc == null) {
            return 1;
        }
        boolean zze = zzc.zze(zzapgVar.zzc);
        boolean z3 = zze;
        if (zze) {
            int i3 = zzapgVar.zzj;
            z3 = zze;
            if (i3 > 0) {
                int i4 = zzapgVar.zzk;
                z3 = zze;
                if (i4 > 0) {
                    if (zzaxb.zza >= 21) {
                        z3 = zzc.zzf(i3, i4, zzapgVar.zzl);
                    } else {
                        boolean z4 = i3 * i4 <= zzato.zza();
                        z3 = z4;
                        if (!z4) {
                            new StringBuilder(String.valueOf(zzaxb.zze).length() + 56);
                            z3 = z4;
                        }
                    }
                }
            }
        }
        int i5 = true != zzc.zzb ? 4 : 8;
        if (true == zzc.zzc) {
            i = 16;
        }
        return (true != z3 ? 2 : 3) | i5 | i;
    }

    public final void zzI() {
        if (!this.zzk) {
            this.zzk = true;
            this.zzd.zzg(this.zzi);
        }
    }

    public final void zzJ(MediaCodec mediaCodec, int i, long j) {
        zzad();
        zzawz.zza("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        zzawz.zzb();
        ((zzate) this).zza.zzd++;
        this.zzo = 0;
        zzI();
    }

    @TargetApi(21)
    public final void zzK(MediaCodec mediaCodec, int i, long j, long j2) {
        zzad();
        zzawz.zza("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j2);
        zzawz.zzb();
        ((zzate) this).zza.zzd++;
        this.zzo = 0;
        zzI();
    }

    public final void zzL(MediaCodec mediaCodec, int i, long j) {
        zzawz.zza("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        zzawz.zzb();
        ((zzate) this).zza.zze++;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzate
    public final void zzO(zzatc zzatcVar, MediaCodec mediaCodec, zzapg zzapgVar, MediaCrypto mediaCrypto) throws zzatj {
        boolean z;
        int i;
        zzapg[] zzapgVarArr = this.zzg;
        int i2 = zzapgVar.zzj;
        int i3 = zzapgVar.zzk;
        int i4 = zzapgVar.zzg;
        int i5 = i4;
        if (i4 == -1) {
            String str = zzapgVar.zzf;
            if (i2 != -1 && i3 != -1) {
                int i6 = 4;
                switch (str.hashCode()) {
                    case -1664118616:
                        if (str.equals("video/3gpp")) {
                            z = false;
                            break;
                        }
                        z = true;
                        break;
                    case -1662541442:
                        if (str.equals("video/hevc")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 1187890754:
                        if (str.equals("video/mp4v-es")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 1331836730:
                        if (str.equals("video/avc")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 1599127256:
                        if (str.equals("video/x-vnd.on2.vp8")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 1599127257:
                        if (str.equals("video/x-vnd.on2.vp9")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    default:
                        z = true;
                        break;
                }
                if (z && !z) {
                    if (!z) {
                        if (!z) {
                            if (z || z) {
                                i = i2 * i3;
                                i5 = (i * 3) / (i6 + i6);
                            }
                        }
                    } else if (!"BRAVIA 4K 2015".equals(zzaxb.zzd)) {
                        i = zzaxb.zzd(i3, 16) * zzaxb.zzd(i2, 16) * 256;
                        i6 = 2;
                        i5 = (i * 3) / (i6 + i6);
                    }
                }
                i = i2 * i3;
                i6 = 2;
                i5 = (i * 3) / (i6 + i6);
            }
            i5 = -1;
        }
        int length = zzapgVarArr.length;
        zzaxj zzaxjVar = new zzaxj(i2, i3, i5);
        this.zzh = zzaxjVar;
        boolean z2 = this.zze;
        MediaFormat zzb = zzapgVar.zzb();
        zzb.setInteger("max-width", zzaxjVar.zza);
        zzb.setInteger("max-height", zzaxjVar.zzb);
        int i7 = zzaxjVar.zzc;
        if (i7 != -1) {
            zzb.setInteger("max-input-size", i7);
        }
        if (z2) {
            zzb.setInteger("auto-frc", 0);
        }
        if (this.zzi == null) {
            zzawm.zze(zzag(zzatcVar.zzd));
            if (this.zzj == null) {
                this.zzj = zzaxh.zza(this.zzb, zzatcVar.zzd);
            }
            this.zzi = this.zzj;
        }
        mediaCodec.configure(zzb, this.zzi, (MediaCrypto) null, 0);
        int i8 = zzaxb.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzate
    public final void zzP(String str, long j, long j2) {
        this.zzd.zzb(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzate
    public final void zzQ(zzapg zzapgVar) throws zzaos {
        super.zzQ(zzapgVar);
        this.zzd.zzf(zzapgVar);
        float f = zzapgVar.zzn;
        float f2 = f;
        if (f == -1.0f) {
            f2 = 1.0f;
        }
        this.zzq = f2;
        this.zzp = zzN(zzapgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzate
    public final void zzR(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        boolean z = false;
        if (mediaFormat.containsKey("crop-right")) {
            z = false;
            if (mediaFormat.containsKey("crop-left")) {
                z = false;
                if (mediaFormat.containsKey("crop-bottom")) {
                    z = false;
                    if (mediaFormat.containsKey("crop-top")) {
                        z = true;
                    }
                }
            }
        }
        this.zzr = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
        int integer = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        this.zzs = integer;
        float f = this.zzq;
        this.zzu = f;
        if (zzaxb.zza >= 21) {
            int i = this.zzp;
            if (i == 90 || i == 270) {
                int i2 = this.zzr;
                this.zzr = integer;
                this.zzs = i2;
                this.zzu = 1.0f / f;
            }
        } else {
            this.zzt = this.zzp;
        }
        mediaCodec.setVideoScalingMode(1);
    }

    @Override // com.google.android.gms.internal.ads.zzate
    public final boolean zzT(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) {
        while (true) {
            int i3 = this.zzA;
            if (i3 == 0) {
                break;
            }
            long[] jArr = this.zzf;
            long j4 = jArr[0];
            if (j3 < j4) {
                break;
            }
            this.zzz = j4;
            int i4 = i3 - 1;
            this.zzA = i4;
            System.arraycopy(jArr, 1, jArr, 0, i4);
        }
        long j5 = j3 - this.zzz;
        if (z) {
            zzL(mediaCodec, i, j5);
            return true;
        }
        long j6 = j3 - j;
        if (this.zzi == this.zzj) {
            if (!zzaf(j6)) {
                return false;
            }
            zzL(mediaCodec, i, j5);
            return true;
        } else if (!this.zzk) {
            if (zzaxb.zza >= 21) {
                zzK(mediaCodec, i, j5, System.nanoTime());
                return true;
            }
            zzJ(mediaCodec, i, j5);
            return true;
        } else if (zzb() != 2) {
            return false;
        } else {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long nanoTime = System.nanoTime();
            long zza = this.zzc.zza(j3, ((j6 - ((elapsedRealtime * 1000) - j2)) * 1000) + nanoTime);
            long j7 = (zza - nanoTime) / 1000;
            if (!zzaf(j7)) {
                if (zzaxb.zza >= 21) {
                    if (j7 >= 50000) {
                        return false;
                    }
                    zzK(mediaCodec, i, j5, zza);
                    return true;
                } else if (j7 >= 30000) {
                    return false;
                } else {
                    if (j7 > 11000) {
                        try {
                            Thread.sleep((j7 - 10000) / 1000);
                        } catch (InterruptedException e) {
                            Thread.currentThread().interrupt();
                        }
                    }
                    zzJ(mediaCodec, i, j5);
                    return true;
                }
            }
            zzawz.zza("dropVideoBuffer");
            mediaCodec.releaseOutputBuffer(i, false);
            zzawz.zzb();
            zzara zzaraVar = ((zzate) this).zza;
            zzaraVar.zzf++;
            this.zzn++;
            int i5 = this.zzo + 1;
            this.zzo = i5;
            zzaraVar.zzg = Math.max(i5, zzaraVar.zzg);
            if (this.zzn != -1) {
                return true;
            }
            zzac();
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzate
    public final void zzX(zzarb zzarbVar) {
        int i = zzaxb.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzate
    public final void zzY() {
        try {
            super.zzY();
            Surface surface = this.zzj;
            if (surface == null) {
                return;
            }
            if (this.zzi == surface) {
                this.zzi = null;
            }
            surface.release();
            this.zzj = null;
        } catch (Throwable th) {
            Surface surface2 = this.zzj;
            if (surface2 != null) {
                if (this.zzi == surface2) {
                    this.zzi = null;
                }
                surface2.release();
                this.zzj = null;
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzate
    public final boolean zzZ(MediaCodec mediaCodec, boolean z, zzapg zzapgVar, zzapg zzapgVar2) {
        if (!zzapgVar.zzf.equals(zzapgVar2.zzf) || zzN(zzapgVar) != zzN(zzapgVar2)) {
            return false;
        }
        if (!z && (zzapgVar.zzj != zzapgVar2.zzj || zzapgVar.zzk != zzapgVar2.zzk)) {
            return false;
        }
        int i = zzapgVar2.zzj;
        zzaxj zzaxjVar = this.zzh;
        return i <= zzaxjVar.zza && zzapgVar2.zzk <= zzaxjVar.zzb && zzapgVar2.zzg <= zzaxjVar.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzate
    public final boolean zzaa(zzatc zzatcVar) {
        return this.zzi != null || zzag(zzatcVar.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzaoq, com.google.android.gms.internal.ads.zzaou
    public final void zzl(int i, Object obj) throws zzaos {
        if (i == 1) {
            Surface surface = (Surface) obj;
            zzaxh zzaxhVar = surface;
            if (surface == null) {
                zzaxhVar = this.zzj;
                if (zzaxhVar == null) {
                    zzatc zzV = zzV();
                    zzaxhVar = surface;
                    if (zzV != null) {
                        zzaxhVar = surface;
                        if (zzag(zzV.zzd)) {
                            zzaxhVar = zzaxh.zza(this.zzb, zzV.zzd);
                            this.zzj = zzaxhVar;
                        }
                    }
                }
            }
            if (this.zzi == zzaxhVar) {
                if (zzaxhVar == null || zzaxhVar == this.zzj) {
                    return;
                }
                zzae();
                if (!this.zzk) {
                    return;
                }
                this.zzd.zzg(this.zzi);
                return;
            }
            this.zzi = zzaxhVar;
            int zzb = zzb();
            if (zzb == 1 || zzb == 2) {
                MediaCodec zzU = zzU();
                if (zzaxb.zza < 23 || zzU == null || zzaxhVar == null) {
                    zzY();
                    zzW();
                } else {
                    zzU.setOutputSurface(zzaxhVar);
                }
            }
            if (zzaxhVar == null || zzaxhVar == this.zzj) {
                zzab();
                this.zzk = false;
                int i2 = zzaxb.zza;
                return;
            }
            zzae();
            this.zzk = false;
            int i3 = zzaxb.zza;
            if (zzb != 2) {
                return;
            }
            this.zzl = -9223372036854775807L;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzate, com.google.android.gms.internal.ads.zzaoq
    public final void zzn() {
        this.zzr = -1;
        this.zzs = -1;
        this.zzu = -1.0f;
        this.zzq = -1.0f;
        this.zzz = -9223372036854775807L;
        this.zzA = 0;
        zzab();
        this.zzk = false;
        int i = zzaxb.zza;
        this.zzc.zzb();
        try {
            super.zzn();
        } finally {
            ((zzate) this).zza.zza();
            this.zzd.zzc(((zzate) this).zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzate, com.google.android.gms.internal.ads.zzaoq
    public final void zzo(boolean z) throws zzaos {
        super.zzo(z);
        int i = zzg().zzb;
        this.zzd.zze(((zzate) this).zza);
        this.zzc.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzate, com.google.android.gms.internal.ads.zzaoq
    public final void zzp(long j, boolean z) throws zzaos {
        super.zzp(j, z);
        this.zzk = false;
        int i = zzaxb.zza;
        this.zzo = 0;
        int i2 = this.zzA;
        if (i2 != 0) {
            this.zzz = this.zzf[i2 - 1];
            this.zzA = 0;
        }
        this.zzl = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzaoq
    public final void zzq() {
        this.zzn = 0;
        this.zzm = SystemClock.elapsedRealtime();
        this.zzl = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzaoq
    public final void zzr() {
        zzac();
    }

    @Override // com.google.android.gms.internal.ads.zzaoq
    public final void zzs(zzapg[] zzapgVarArr, long j) throws zzaos {
        this.zzg = zzapgVarArr;
        if (this.zzz == -9223372036854775807L) {
            this.zzz = j;
            return;
        }
        int i = this.zzA;
        if (i == 10) {
            long j2 = this.zzf[9];
            StringBuilder sb = new StringBuilder(65);
            sb.append("Too many stream changes, so dropping offset: ");
            sb.append(j2);
            Log.w("MediaCodecVideoRenderer", sb.toString());
        } else {
            this.zzA = i + 1;
        }
        this.zzf[this.zzA - 1] = j;
    }
}
