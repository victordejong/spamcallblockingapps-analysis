package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.view.Surface;
import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaox.class */
public final class zzaox extends zzari implements zzaut {
    private final zzaoi zzb;
    private final zzaot zzc = new zzaot(null, new zzaob[0], new zzaov(this, null));
    private boolean zzd;
    private int zze;
    private int zzf;
    private long zzg;
    private boolean zzh;

    public zzaox(zzark zzarkVar, zzapl zzaplVar, boolean z, Handler handler, zzaoj zzaojVar) {
        super(1, zzarkVar, null, true);
        this.zzb = new zzaoi(handler, zzaojVar);
    }

    @Override // com.google.android.gms.internal.ads.zzari, com.google.android.gms.internal.ads.zzanr
    public final boolean zzE() {
        return this.zzc.zzi() || super.zzE();
    }

    @Override // com.google.android.gms.internal.ads.zzari, com.google.android.gms.internal.ads.zzanr
    public final boolean zzF() {
        return super.zzF() && this.zzc.zzh();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
        if (r0.zzf(r0) != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0064, code lost:
        if (r0.zzg(r0) != false) goto L22;
     */
    @Override // com.google.android.gms.internal.ads.zzari
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzJ(com.google.android.gms.internal.ads.zzark r4, com.google.android.gms.internal.ads.zzanm r5) throws com.google.android.gms.internal.ads.zzarm {
        /*
            r3 = this;
            r0 = r5
            java.lang.String r0 = r0.zzf
            r4 = r0
            r0 = r4
            boolean r0 = com.google.android.gms.internal.ads.zzauu.zza(r0)
            if (r0 != 0) goto Le
            r0 = 0
            return r0
        Le:
            int r0 = com.google.android.gms.internal.ads.zzave.zza
            r6 = r0
            r0 = r6
            r1 = 21
            if (r0 < r1) goto L1f
            r0 = 16
            r7 = r0
            goto L22
        L1f:
            r0 = 0
            r7 = r0
        L22:
            r0 = r4
            r1 = 0
            com.google.android.gms.internal.ads.zzarg r0 = com.google.android.gms.internal.ads.zzarr.zza(r0, r1)
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L2e
            r0 = 1
            return r0
        L2e:
            r0 = 2
            r8 = r0
            r0 = r6
            r1 = 21
            if (r0 < r1) goto L67
            r0 = r5
            int r0 = r0.zzs
            r9 = r0
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L4f
            r0 = r8
            r6 = r0
            r0 = r4
            r1 = r9
            boolean r0 = r0.zzf(r1)
            if (r0 == 0) goto L69
        L4f:
            r0 = r5
            int r0 = r0.zzr
            r9 = r0
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L67
            r0 = r8
            r6 = r0
            r0 = r4
            r1 = r9
            boolean r0 = r0.zzg(r1)
            if (r0 == 0) goto L69
        L67:
            r0 = 3
            r6 = r0
        L69:
            r0 = r7
            r1 = 4
            r0 = r0 | r1
            r1 = r6
            r0 = r0 | r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaox.zzJ(com.google.android.gms.internal.ads.zzark, com.google.android.gms.internal.ads.zzanm):int");
    }

    @Override // com.google.android.gms.internal.ads.zzari
    public final zzarg zzK(zzark zzarkVar, zzanm zzanmVar, boolean z) throws zzarm {
        return super.zzK(zzarkVar, zzanmVar, false);
    }

    @Override // com.google.android.gms.internal.ads.zzari
    public final void zzL(zzarg zzargVar, MediaCodec mediaCodec, zzanm zzanmVar, MediaCrypto mediaCrypto) {
        boolean z;
        String str = zzargVar.zza;
        if (zzave.zza < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(zzave.zzc)) {
            String str2 = zzave.zzb;
            z = true;
            if (!str2.startsWith("zeroflte")) {
                z = true;
                if (!str2.startsWith("herolte")) {
                    if (str2.startsWith("heroqlte")) {
                        z = true;
                    }
                }
            }
            this.zzd = z;
            mediaCodec.configure(zzanmVar.zzl(), (Surface) null, (MediaCrypto) null, 0);
        }
        z = false;
        this.zzd = z;
        mediaCodec.configure(zzanmVar.zzl(), (Surface) null, (MediaCrypto) null, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzari
    public final void zzM(String str, long j, long j2) {
        this.zzb.zzc(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzari
    public final void zzN(zzanm zzanmVar) throws zzamy {
        super.zzN(zzanmVar);
        this.zzb.zzd(zzanmVar);
        this.zze = "audio/raw".equals(zzanmVar.zzf) ? zzanmVar.zzt : 2;
        this.zzf = zzanmVar.zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzari
    public final void zzO(MediaCodec mediaCodec, MediaFormat mediaFormat) throws zzamy {
        int[] iArr;
        int integer = mediaFormat.getInteger("channel-count");
        int integer2 = mediaFormat.getInteger("sample-rate");
        if (!this.zzd || integer != 6) {
            iArr = null;
        } else {
            int i = this.zzf;
            if (i < 6) {
                iArr = new int[i];
                for (int i2 = 0; i2 < this.zzf; i2++) {
                    iArr[i2] = i2;
                }
            } else {
                iArr = null;
            }
            integer = 6;
        }
        try {
            this.zzc.zzc("audio/raw", integer, integer2, this.zze, 0, iArr);
        } catch (zzaon e) {
            throw zzamy.zza(e, zzz());
        }
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzaut
    public final long zzP() {
        char zzb = this.zzc.zzb(zzF());
        if (zzb != Long.MIN_VALUE) {
            if (!this.zzh) {
                zzb = Math.max(this.zzg, (long) zzb);
            }
            this.zzg = zzb;
            this.zzh = false;
        }
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzaut
    public final zzanq zzQ(zzanq zzanqVar) {
        return this.zzc.zzj(zzanqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaut
    public final zzanq zzR() {
        return this.zzc.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzari
    public final boolean zzS(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws zzamy {
        if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            ((zzari) this).zza.zze++;
            this.zzc.zze();
            return true;
        }
        try {
            if (!this.zzc.zzf(byteBuffer, j3)) {
                return false;
            }
            mediaCodec.releaseOutputBuffer(i, false);
            ((zzari) this).zza.zzd++;
            return true;
        } catch (zzaoo | zzaos e) {
            throw zzamy.zza(e, zzz());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzari
    public final void zzT() throws zzamy {
        try {
            this.zzc.zzg();
        } catch (zzaos e) {
            throw zzamy.zza(e, zzz());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamw, com.google.android.gms.internal.ads.zzanr
    public final zzaut zzd() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzamw, com.google.android.gms.internal.ads.zzana
    public final void zzr(int i, Object obj) throws zzamy {
        if (i != 2) {
            return;
        }
        this.zzc.zzl(((Float) obj).floatValue());
    }

    @Override // com.google.android.gms.internal.ads.zzari, com.google.android.gms.internal.ads.zzamw
    public final void zzs(boolean z) throws zzamy {
        super.zzs(z);
        this.zzb.zzb(((zzari) this).zza);
        int i = zzy().zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzari, com.google.android.gms.internal.ads.zzamw
    public final void zzu(long j, boolean z) throws zzamy {
        super.zzu(j, z);
        this.zzc.zzn();
        this.zzg = j;
        this.zzh = true;
    }

    @Override // com.google.android.gms.internal.ads.zzamw
    public final void zzv() {
        this.zzc.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzamw
    public final void zzw() {
        this.zzc.zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzari, com.google.android.gms.internal.ads.zzamw
    public final void zzx() {
        try {
            this.zzc.zzo();
            try {
                super.zzx();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.zzx();
                throw th;
            } finally {
            }
        }
    }
}
