package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.view.Surface;
import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzjc.class */
public final class zzjc extends zzlv implements zzpk {
    private int zzaho;
    private int zzahq;
    private final zzik zzamm;
    private final zzit zzamn;
    private boolean zzamo;
    private boolean zzamp;
    private MediaFormat zzamq;
    private long zzamr;
    private boolean zzams;

    public zzjc(zzlx zzlxVar, Handler handler, zzil zzilVar) {
        this(zzlxVar, null, true, handler, zzilVar);
    }

    private zzjc(zzlx zzlxVar, zzjt<zzjv> zzjtVar, boolean z, Handler handler, zzil zzilVar) {
        this(zzlxVar, null, true, handler, zzilVar, null, new zzij[0]);
    }

    private zzjc(zzlx zzlxVar, zzjt<zzjv> zzjtVar, boolean z, Handler handler, zzil zzilVar, zzig zzigVar, zzij... zzijVarArr) {
        super(1, zzlxVar, null, true);
        this.zzamn = new zzit(null, zzijVarArr, new zzje(this));
        this.zzamm = new zzik(handler, zzilVar);
    }

    private final boolean zzax(String str) {
        return false;
    }

    public static void zzb(int i, long j, long j2) {
    }

    public static void zzgd() {
    }

    public static void zzx(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzlv, com.google.android.gms.internal.ads.zzhy
    public final boolean isReady() {
        return this.zzamn.zzfr() || super.isReady();
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    protected final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) throws zzhe {
        int[] iArr;
        int i;
        MediaFormat mediaFormat2 = this.zzamq;
        boolean z = mediaFormat2 != null;
        String string = z ? mediaFormat2.getString("mime") : "audio/raw";
        if (z) {
            mediaFormat = this.zzamq;
        }
        int integer = mediaFormat.getInteger("channel-count");
        int integer2 = mediaFormat.getInteger("sample-rate");
        if (!this.zzamp || integer != 6 || (i = this.zzaho) >= 6) {
            iArr = null;
        } else {
            int[] iArr2 = new int[i];
            int i2 = 0;
            while (true) {
                iArr = iArr2;
                if (i2 < this.zzaho) {
                    iArr2[i2] = i2;
                    i2++;
                }
            }
        }
        try {
            this.zzamn.zza(string, integer, integer2, this.zzahq, 0, iArr);
        } catch (zzix e) {
            throw zzhe.zza(e, getIndex());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlv, com.google.android.gms.internal.ads.zzhd
    public final void onStarted() {
        super.onStarted();
        this.zzamn.play();
    }

    @Override // com.google.android.gms.internal.ads.zzlv, com.google.android.gms.internal.ads.zzhd
    public final void onStopped() {
        this.zzamn.pause();
        super.onStopped();
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0071, code lost:
        if (r0.zzaw(r6.zzahp) != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0088, code lost:
        if (r0.zzax(r6.zzaho) != false) goto L28;
     */
    @Override // com.google.android.gms.internal.ads.zzlv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final int zza(com.google.android.gms.internal.ads.zzlx r5, com.google.android.gms.internal.ads.zzht r6) throws com.google.android.gms.internal.ads.zzmd {
        /*
            r4 = this;
            r0 = r6
            java.lang.String r0 = r0.zzahe
            r7 = r0
            r0 = r7
            boolean r0 = com.google.android.gms.internal.ads.zzpj.zzbc(r0)
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L15
            r0 = 0
            return r0
        L15:
            int r0 = com.google.android.gms.internal.ads.zzpt.SDK_INT
            r1 = 21
            if (r0 < r1) goto L24
            r0 = 16
            r10 = r0
            goto L27
        L24:
            r0 = 0
            r10 = r0
        L27:
            r0 = r4
            r1 = r7
            boolean r0 = r0.zzax(r1)
            r8 = r0
            r0 = 3
            r11 = r0
            r0 = r8
            if (r0 == 0) goto L46
            r0 = r5
            com.google.android.gms.internal.ads.zzlw r0 = r0.zzhj()
            if (r0 == 0) goto L46
            r0 = r10
            r1 = 4
            r0 = r0 | r1
            r1 = 3
            r0 = r0 | r1
            return r0
        L46:
            r0 = r5
            r1 = r7
            r2 = 0
            com.google.android.gms.internal.ads.zzlw r0 = r0.zzc(r1, r2)
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L55
            r0 = 1
            return r0
        L55:
            int r0 = com.google.android.gms.internal.ads.zzpt.SDK_INT
            r1 = 21
            if (r0 < r1) goto L8b
            r0 = r6
            int r0 = r0.zzahp
            r1 = -1
            if (r0 == r1) goto L74
            r0 = r9
            r12 = r0
            r0 = r5
            r1 = r6
            int r1 = r1.zzahp
            boolean r0 = r0.zzaw(r1)
            if (r0 == 0) goto L8e
        L74:
            r0 = r6
            int r0 = r0.zzaho
            r1 = -1
            if (r0 == r1) goto L8b
            r0 = r9
            r12 = r0
            r0 = r5
            r1 = r6
            int r1 = r1.zzaho
            boolean r0 = r0.zzax(r1)
            if (r0 == 0) goto L8e
        L8b:
            r0 = 1
            r12 = r0
        L8e:
            r0 = r12
            if (r0 == 0) goto L9a
            r0 = r11
            r12 = r0
            goto L9d
        L9a:
            r0 = 2
            r12 = r0
        L9d:
            r0 = r10
            r1 = 4
            r0 = r0 | r1
            r1 = r12
            r0 = r0 | r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjc.zza(com.google.android.gms.internal.ads.zzlx, com.google.android.gms.internal.ads.zzht):int");
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public final zzlw zza(zzlx zzlxVar, zzht zzhtVar, boolean z) throws zzmd {
        zzlw zzhj;
        if (!zzax(zzhtVar.zzahe) || (zzhj = zzlxVar.zzhj()) == null) {
            this.zzamo = false;
            return super.zza(zzlxVar, zzhtVar, z);
        }
        this.zzamo = true;
        return zzhj;
    }

    @Override // com.google.android.gms.internal.ads.zzhd, com.google.android.gms.internal.ads.zzhj
    public final void zza(int i, Object obj) throws zzhe {
        if (i == 2) {
            this.zzamn.setVolume(((Float) obj).floatValue());
        } else if (i != 3) {
            super.zza(i, obj);
        } else {
            this.zzamn.setStreamType(((Integer) obj).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlv, com.google.android.gms.internal.ads.zzhd
    public final void zza(long j, boolean z) throws zzhe {
        super.zza(j, z);
        this.zzamn.reset();
        this.zzamr = j;
        this.zzams = true;
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    protected final void zza(zzlw zzlwVar, MediaCodec mediaCodec, zzht zzhtVar, MediaCrypto mediaCrypto) {
        this.zzamp = zzpt.SDK_INT < 24 && "OMX.SEC.aac.dec".equals(zzlwVar.name) && "samsung".equals(zzpt.MANUFACTURER) && (zzpt.DEVICE.startsWith("zeroflte") || zzpt.DEVICE.startsWith("herolte") || zzpt.DEVICE.startsWith("heroqlte"));
        if (!this.zzamo) {
            mediaCodec.configure(zzhtVar.zzfa(), (Surface) null, (MediaCrypto) null, 0);
            this.zzamq = null;
            return;
        }
        MediaFormat zzfa = zzhtVar.zzfa();
        this.zzamq = zzfa;
        zzfa.setString("mime", "audio/raw");
        mediaCodec.configure(this.zzamq, (Surface) null, (MediaCrypto) null, 0);
        this.zzamq.setString("mime", zzhtVar.zzahe);
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    protected final boolean zza(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws zzhe {
        if (this.zzamo && (i2 & 2) != 0) {
            mediaCodec.releaseOutputBuffer(i, false);
            return true;
        } else if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            this.zzbcq.zzaoe++;
            this.zzamn.zzfo();
            return true;
        } else {
            try {
                if (!this.zzamn.zzb(byteBuffer, j3)) {
                    return false;
                }
                mediaCodec.releaseOutputBuffer(i, false);
                this.zzbcq.zzaod++;
                return true;
            } catch (zziw | zzjb e) {
                throw zzhe.zza(e, getIndex());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpk
    public final zzhz zzb(zzhz zzhzVar) {
        return this.zzamn.zzb(zzhzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    protected final void zzc(String str, long j, long j2) {
        this.zzamm.zza(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public final void zzd(zzht zzhtVar) throws zzhe {
        super.zzd(zzhtVar);
        this.zzamm.zzb(zzhtVar);
        this.zzahq = "audio/raw".equals(zzhtVar.zzahe) ? zzhtVar.zzahq : 2;
        this.zzaho = zzhtVar.zzaho;
    }

    @Override // com.google.android.gms.internal.ads.zzlv, com.google.android.gms.internal.ads.zzhd
    public final void zze(boolean z) throws zzhe {
        super.zze(z);
        this.zzamm.zza(this.zzbcq);
        int i = zzei().zzaif;
        this.zzamn.zzft();
    }

    @Override // com.google.android.gms.internal.ads.zzhd, com.google.android.gms.internal.ads.zzhy
    public final zzpk zzea() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzlv, com.google.android.gms.internal.ads.zzhd
    public final void zzeh() {
        try {
            this.zzamn.release();
            try {
                super.zzeh();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.zzeh();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlv, com.google.android.gms.internal.ads.zzhy
    public final boolean zzfe() {
        return super.zzfe() && this.zzamn.zzfe();
    }

    @Override // com.google.android.gms.internal.ads.zzpk
    public final zzhz zzfs() {
        return this.zzamn.zzfs();
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzpk
    public final long zzgc() {
        char zzj = this.zzamn.zzj(zzfe());
        if (zzj != Long.MIN_VALUE) {
            if (!this.zzams) {
                zzj = Math.max(this.zzamr, (long) zzj);
            }
            this.zzamr = zzj;
            this.zzams = false;
        }
        return this.zzamr;
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    protected final void zzge() throws zzhe {
        try {
            this.zzamn.zzfp();
        } catch (zzjb e) {
            throw zzhe.zza(e, getIndex());
        }
    }
}
