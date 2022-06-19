package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.view.Surface;
import java.nio.ByteBuffer;
@TargetApi(16)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqs.class */
public final class zzaqs extends zzate implements zzawq {
    private final zzaqc zzb;
    private final zzaqo zzc = new zzaqo(null, new zzapv[0], new zzaqr(this, null));
    private boolean zzd;
    private int zze;
    private int zzf;
    private long zzg;
    private boolean zzh;

    public zzaqs(zzatg zzatgVar, zzarg zzargVar, boolean z, Handler handler, zzaqd zzaqdVar) {
        super(1, zzatgVar, null, true);
        this.zzb = new zzaqc(handler, zzaqdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzate, com.google.android.gms.internal.ads.zzapl
    public final boolean zzE() {
        return super.zzE() && this.zzc.zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzate, com.google.android.gms.internal.ads.zzapl
    public final boolean zzF() {
        return this.zzc.zzn() || super.zzF();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
        if (r0.zzd(r0) != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0064, code lost:
        if (r0.zzc(r0) != false) goto L22;
     */
    @Override // com.google.android.gms.internal.ads.zzate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzH(com.google.android.gms.internal.ads.zzatg r4, com.google.android.gms.internal.ads.zzapg r5) throws com.google.android.gms.internal.ads.zzatj {
        /*
            r3 = this;
            r0 = r5
            java.lang.String r0 = r0.zzf
            r4 = r0
            r0 = r4
            boolean r0 = com.google.android.gms.internal.ads.zzawr.zza(r0)
            if (r0 != 0) goto Le
            r0 = 0
            return r0
        Le:
            int r0 = com.google.android.gms.internal.ads.zzaxb.zza
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
            com.google.android.gms.internal.ads.zzatc r0 = com.google.android.gms.internal.ads.zzato.zzc(r0, r1)
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
            boolean r0 = r0.zzd(r1)
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
            boolean r0 = r0.zzc(r1)
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaqs.zzH(com.google.android.gms.internal.ads.zzatg, com.google.android.gms.internal.ads.zzapg):int");
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzawq
    public final long zzI() {
        char zza = this.zzc.zza(zzE());
        if (zza != Long.MIN_VALUE) {
            if (!this.zzh) {
                zza = Math.max(this.zzg, (long) zza);
            }
            this.zzg = zza;
            this.zzh = false;
        }
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzawq
    public final zzapk zzJ() {
        return this.zzc.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzawq
    public final zzapk zzK(zzapk zzapkVar) {
        return this.zzc.zzd(zzapkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzate
    public final zzatc zzM(zzatg zzatgVar, zzapg zzapgVar, boolean z) throws zzatj {
        return super.zzM(zzatgVar, zzapgVar, false);
    }

    @Override // com.google.android.gms.internal.ads.zzate
    public final void zzO(zzatc zzatcVar, MediaCodec mediaCodec, zzapg zzapgVar, MediaCrypto mediaCrypto) {
        boolean z;
        String str = zzatcVar.zza;
        if (zzaxb.zza < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(zzaxb.zzc)) {
            String str2 = zzaxb.zzb;
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
            mediaCodec.configure(zzapgVar.zzb(), (Surface) null, (MediaCrypto) null, 0);
        }
        z = false;
        this.zzd = z;
        mediaCodec.configure(zzapgVar.zzb(), (Surface) null, (MediaCrypto) null, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzate
    public final void zzP(String str, long j, long j2) {
        this.zzb.zzd(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzate
    public final void zzQ(zzapg zzapgVar) throws zzaos {
        super.zzQ(zzapgVar);
        this.zzb.zzg(zzapgVar);
        this.zze = "audio/raw".equals(zzapgVar.zzf) ? zzapgVar.zzt : 2;
        this.zzf = zzapgVar.zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzate
    public final void zzR(MediaCodec mediaCodec, MediaFormat mediaFormat) throws zzaos {
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
            this.zzc.zze("audio/raw", integer, integer2, this.zze, 0, iArr);
        } catch (zzaqi e) {
            throw zzaos.zza(e, zza());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzate
    public final void zzS() throws zzaos {
        try {
            this.zzc.zzi();
        } catch (zzaqn e) {
            throw zzaos.zza(e, zza());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzate
    public final boolean zzT(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws zzaos {
        if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            ((zzate) this).zza.zze++;
            this.zzc.zzf();
            return true;
        }
        try {
            if (!this.zzc.zzm(byteBuffer, j3)) {
                return false;
            }
            mediaCodec.releaseOutputBuffer(i, false);
            ((zzate) this).zza.zzd++;
            return true;
        } catch (zzaqj | zzaqn e) {
            throw zzaos.zza(e, zza());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaoq, com.google.android.gms.internal.ads.zzapl
    public final zzawq zzi() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzaoq, com.google.android.gms.internal.ads.zzaou
    public final void zzl(int i, Object obj) throws zzaos {
        if (i != 2) {
            return;
        }
        this.zzc.zzl(((Float) obj).floatValue());
    }

    @Override // com.google.android.gms.internal.ads.zzate, com.google.android.gms.internal.ads.zzaoq
    public final void zzn() {
        try {
            this.zzc.zzj();
            try {
                super.zzn();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.zzn();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzate, com.google.android.gms.internal.ads.zzaoq
    public final void zzo(boolean z) throws zzaos {
        super.zzo(z);
        this.zzb.zzf(((zzate) this).zza);
        int i = zzg().zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzate, com.google.android.gms.internal.ads.zzaoq
    public final void zzp(long j, boolean z) throws zzaos {
        super.zzp(j, z);
        this.zzc.zzk();
        this.zzg = j;
        this.zzh = true;
    }

    @Override // com.google.android.gms.internal.ads.zzaoq
    public final void zzq() {
        this.zzc.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzaoq
    public final void zzr() {
        this.zzc.zzg();
    }
}
