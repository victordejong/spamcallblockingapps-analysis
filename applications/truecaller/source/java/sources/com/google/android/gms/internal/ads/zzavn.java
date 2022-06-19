package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;
import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzavn.class */
public final class zzavn extends zzari {
    private int zzA;
    private final Context zzb;
    private final zzavp zzc;
    private final zzavx zzd;
    private final boolean zze;
    private final long[] zzf;
    private zzanm[] zzg;
    private zzavm zzh;
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

    public zzavn(Context context, zzark zzarkVar, long j, Handler handler, zzavy zzavyVar, int i) {
        super(2, zzarkVar, null, false);
        this.zzb = context.getApplicationContext();
        this.zzc = new zzavp(context);
        this.zzd = new zzavx(handler, zzavyVar);
        boolean z = false;
        if (zzave.zza <= 22) {
            z = false;
            if ("foster".equals(zzave.zzb)) {
                z = false;
                if ("NVIDIA".equals(zzave.zzc)) {
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

    private final boolean zzR(boolean z) {
        boolean z2 = true;
        if (zzave.zza >= 23) {
            if (z) {
                if (zzavk.zza(this.zzb)) {
                    return true;
                }
            }
            return z2;
        }
        z2 = false;
        return z2;
    }

    private final void zzab() {
        this.zzv = -1;
        this.zzw = -1;
        this.zzy = -1.0f;
        this.zzx = -1;
    }

    private final void zzac() {
        int i = this.zzv;
        int i2 = this.zzr;
        if (i == i2 && this.zzw == this.zzs && this.zzx == this.zzt && this.zzy == this.zzu) {
            return;
        }
        this.zzd.zzf(i2, this.zzs, this.zzt, this.zzu);
        this.zzv = this.zzr;
        this.zzw = this.zzs;
        this.zzx = this.zzt;
        this.zzy = this.zzu;
    }

    private final void zzad() {
        if (this.zzv == -1 && this.zzw == -1) {
            return;
        }
        this.zzd.zzf(this.zzr, this.zzs, this.zzt, this.zzu);
    }

    private final void zzae() {
        if (this.zzn > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.zzd.zze(this.zzn, elapsedRealtime - this.zzm);
            this.zzn = 0;
            this.zzm = elapsedRealtime;
        }
    }

    private static boolean zzaf(long j) {
        return j < -30000;
    }

    private static int zzag(zzanm zzanmVar) {
        int i = zzanmVar.zzm;
        int i2 = i;
        if (i == -1) {
            i2 = 0;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzari, com.google.android.gms.internal.ads.zzanr
    public final boolean zzE() {
        Surface surface;
        if (super.zzE() && (this.zzk || (((surface = this.zzj) != null && this.zzi == surface) || zzW() == null))) {
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

    public final void zzH(MediaCodec mediaCodec, int i, long j) {
        zzavc.zza("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        zzavc.zzb();
        ((zzari) this).zza.zze++;
    }

    public final void zzI(MediaCodec mediaCodec, int i, long j) {
        zzac();
        zzavc.zza("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        zzavc.zzb();
        ((zzari) this).zza.zzd++;
        this.zzo = 0;
        zzQ();
    }

    @Override // com.google.android.gms.internal.ads.zzari
    public final int zzJ(zzark zzarkVar, zzanm zzanmVar) throws zzarm {
        boolean z;
        String str = zzanmVar.zzf;
        if (!zzauu.zzb(str)) {
            return 0;
        }
        zzapk zzapkVar = zzanmVar.zzi;
        if (zzapkVar != null) {
            int i = 0;
            boolean z2 = false;
            while (true) {
                z = z2;
                if (i >= zzapkVar.zza) {
                    break;
                }
                z2 |= zzapkVar.zza(i).zzc;
                i++;
            }
        } else {
            z = false;
        }
        zzarg zza = zzarr.zza(str, z);
        if (zza == null) {
            return 1;
        }
        boolean zzd = zza.zzd(zzanmVar.zzc);
        boolean z3 = zzd;
        if (zzd) {
            int i2 = zzanmVar.zzj;
            z3 = zzd;
            if (i2 > 0) {
                int i3 = zzanmVar.zzk;
                z3 = zzd;
                if (i3 > 0) {
                    if (zzave.zza >= 21) {
                        z3 = zza.zze(i2, i3, zzanmVar.zzl);
                    } else {
                        boolean z4 = i2 * i3 <= zzarr.zzc();
                        z3 = z4;
                        if (!z4) {
                            String.valueOf(zzave.zze).length();
                            z3 = z4;
                        }
                    }
                }
            }
        }
        return (true != z3 ? 2 : 3) | (true != zza.zzb ? 4 : 8) | (true != zza.zzc ? 0 : 16);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzari
    public final void zzL(zzarg zzargVar, MediaCodec mediaCodec, zzanm zzanmVar, MediaCrypto mediaCrypto) throws zzarm {
        boolean z;
        int i;
        zzanm[] zzanmVarArr = this.zzg;
        int i2 = zzanmVar.zzj;
        int i3 = zzanmVar.zzk;
        int i4 = zzanmVar.zzg;
        int i5 = i4;
        if (i4 == -1) {
            String str = zzanmVar.zzf;
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
                    } else if (!"BRAVIA 4K 2015".equals(zzave.zzd)) {
                        i = zzave.zze(i3, 16) * zzave.zze(i2, 16) * 256;
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
        int length = zzanmVarArr.length;
        zzavm zzavmVar = new zzavm(i2, i3, i5);
        this.zzh = zzavmVar;
        boolean z2 = this.zze;
        MediaFormat zzl = zzanmVar.zzl();
        zzl.setInteger("max-width", zzavmVar.zza);
        zzl.setInteger("max-height", zzavmVar.zzb);
        int i7 = zzavmVar.zzc;
        if (i7 != -1) {
            zzl.setInteger("max-input-size", i7);
        }
        if (z2) {
            zzl.setInteger("auto-frc", 0);
        }
        if (this.zzi == null) {
            zzaup.zzd(zzR(zzargVar.zzd));
            if (this.zzj == null) {
                this.zzj = zzavk.zzb(this.zzb, zzargVar.zzd);
            }
            this.zzi = this.zzj;
        }
        mediaCodec.configure(zzl, this.zzi, (MediaCrypto) null, 0);
        int i8 = zzave.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzari
    public final void zzM(String str, long j, long j2) {
        this.zzd.zzc(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzari
    public final void zzN(zzanm zzanmVar) throws zzamy {
        super.zzN(zzanmVar);
        this.zzd.zzd(zzanmVar);
        float f = zzanmVar.zzn;
        float f2 = f;
        if (f == -1.0f) {
            f2 = 1.0f;
        }
        this.zzq = f2;
        this.zzp = zzag(zzanmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzari
    public final void zzO(MediaCodec mediaCodec, MediaFormat mediaFormat) {
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
        if (zzave.zza >= 21) {
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

    public final void zzP(MediaCodec mediaCodec, int i, long j, long j2) {
        zzac();
        zzavc.zza("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j2);
        zzavc.zzb();
        ((zzari) this).zza.zzd++;
        this.zzo = 0;
        zzQ();
    }

    public final void zzQ() {
        if (!this.zzk) {
            this.zzk = true;
            this.zzd.zzg(this.zzi);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzari
    public final boolean zzS(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) {
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
            zzH(mediaCodec, i, j5);
            return true;
        }
        long j6 = j3 - j;
        if (this.zzi == this.zzj) {
            if (!zzaf(j6)) {
                return false;
            }
            zzH(mediaCodec, i, j5);
            return true;
        } else if (!this.zzk) {
            if (zzave.zza >= 21) {
                zzP(mediaCodec, i, j5, System.nanoTime());
                return true;
            }
            zzI(mediaCodec, i, j5);
            return true;
        } else if (zze() != 2) {
            return false;
        } else {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long nanoTime = System.nanoTime();
            long zzc = this.zzc.zzc(j3, ((j6 - ((elapsedRealtime * 1000) - j2)) * 1000) + nanoTime);
            long j7 = (zzc - nanoTime) / 1000;
            if (!zzaf(j7)) {
                if (zzave.zza >= 21) {
                    if (j7 >= 50000) {
                        return false;
                    }
                    zzP(mediaCodec, i, j5, zzc);
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
                    zzI(mediaCodec, i, j5);
                    return true;
                }
            }
            zzavc.zza("dropVideoBuffer");
            mediaCodec.releaseOutputBuffer(i, false);
            zzavc.zzb();
            zzapf zzapfVar = ((zzari) this).zza;
            zzapfVar.zzf++;
            this.zzn++;
            int i5 = this.zzo + 1;
            this.zzo = i5;
            zzapfVar.zzg = Math.max(i5, zzapfVar.zzg);
            if (this.zzn != -1) {
                return true;
            }
            zzae();
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzari
    public final boolean zzV(zzarg zzargVar) {
        return this.zzi != null || zzR(zzargVar.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzari
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

    @Override // com.google.android.gms.internal.ads.zzari
    public final void zzZ(zzapg zzapgVar) {
        int i = zzave.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzari
    public final boolean zzaa(MediaCodec mediaCodec, boolean z, zzanm zzanmVar, zzanm zzanmVar2) {
        if (!zzanmVar.zzf.equals(zzanmVar2.zzf) || zzag(zzanmVar) != zzag(zzanmVar2)) {
            return false;
        }
        if (!z && (zzanmVar.zzj != zzanmVar2.zzj || zzanmVar.zzk != zzanmVar2.zzk)) {
            return false;
        }
        int i = zzanmVar2.zzj;
        zzavm zzavmVar = this.zzh;
        return i <= zzavmVar.zza && zzanmVar2.zzk <= zzavmVar.zzb && zzanmVar2.zzg <= zzavmVar.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzamw, com.google.android.gms.internal.ads.zzana
    public final void zzr(int i, Object obj) throws zzamy {
        if (i == 1) {
            Surface surface = (Surface) obj;
            zzavk zzavkVar = surface;
            if (surface == null) {
                zzavkVar = this.zzj;
                if (zzavkVar == null) {
                    zzarg zzX = zzX();
                    zzavkVar = surface;
                    if (zzX != null) {
                        zzavkVar = surface;
                        if (zzR(zzX.zzd)) {
                            zzavkVar = zzavk.zzb(this.zzb, zzX.zzd);
                            this.zzj = zzavkVar;
                        }
                    }
                }
            }
            if (this.zzi == zzavkVar) {
                if (zzavkVar == null || zzavkVar == this.zzj) {
                    return;
                }
                zzad();
                if (!this.zzk) {
                    return;
                }
                this.zzd.zzg(this.zzi);
                return;
            }
            this.zzi = zzavkVar;
            int zze = zze();
            if (zze == 1 || zze == 2) {
                MediaCodec zzW = zzW();
                if (zzave.zza < 23 || zzW == null || zzavkVar == null) {
                    zzY();
                    zzU();
                } else {
                    zzW.setOutputSurface(zzavkVar);
                }
            }
            if (zzavkVar == null || zzavkVar == this.zzj) {
                zzab();
                this.zzk = false;
                int i2 = zzave.zza;
                return;
            }
            zzad();
            this.zzk = false;
            int i3 = zzave.zza;
            if (zze != 2) {
                return;
            }
            this.zzl = -9223372036854775807L;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzari, com.google.android.gms.internal.ads.zzamw
    public final void zzs(boolean z) throws zzamy {
        super.zzs(z);
        int i = zzy().zzb;
        this.zzd.zzb(((zzari) this).zza);
        this.zzc.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzamw
    public final void zzt(zzanm[] zzanmVarArr, long j) throws zzamy {
        this.zzg = zzanmVarArr;
        if (this.zzz == -9223372036854775807L) {
            this.zzz = j;
            return;
        }
        int i = this.zzA;
        if (i == 10) {
            long j2 = this.zzf[9];
        } else {
            this.zzA = i + 1;
        }
        this.zzf[this.zzA - 1] = j;
    }

    @Override // com.google.android.gms.internal.ads.zzari, com.google.android.gms.internal.ads.zzamw
    public final void zzu(long j, boolean z) throws zzamy {
        super.zzu(j, z);
        this.zzk = false;
        int i = zzave.zza;
        this.zzo = 0;
        int i2 = this.zzA;
        if (i2 != 0) {
            this.zzz = this.zzf[i2 - 1];
            this.zzA = 0;
        }
        this.zzl = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzamw
    public final void zzv() {
        this.zzn = 0;
        this.zzm = SystemClock.elapsedRealtime();
        this.zzl = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzamw
    public final void zzw() {
        zzae();
    }

    @Override // com.google.android.gms.internal.ads.zzari, com.google.android.gms.internal.ads.zzamw
    public final void zzx() {
        this.zzr = -1;
        this.zzs = -1;
        this.zzu = -1.0f;
        this.zzq = -1.0f;
        this.zzz = -9223372036854775807L;
        this.zzA = 0;
        zzab();
        this.zzk = false;
        int i = zzave.zza;
        this.zzc.zzb();
        try {
            super.zzx();
        } finally {
            ((zzari) this).zza.zza();
            this.zzd.zzh(((zzari) this).zza);
        }
    }
}
