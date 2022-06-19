package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Looper;
import android.os.SystemClock;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzlv.class */
public abstract class zzlv extends zzhd {
    private static final byte[] zzbbg = zzpt.zzbi("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78");
    private zzht zzahz;
    private ByteBuffer[] zzalh;
    private final zzlx zzbbh;
    private final zzjt<zzjv> zzbbi;
    private final boolean zzbbj;
    private final zzjp zzbbk;
    private final zzjp zzbbl;
    private final zzhv zzbbm;
    private final List<Long> zzbbn;
    private final MediaCodec.BufferInfo zzbbo;
    private zzjr<zzjv> zzbbp;
    private zzjr<zzjv> zzbbq;
    private MediaCodec zzbbr;
    private zzlw zzbbs;
    private boolean zzbbt;
    private boolean zzbbu;
    private boolean zzbbv;
    private boolean zzbbw;
    private boolean zzbbx;
    private boolean zzbby;
    private boolean zzbbz;
    private boolean zzbca;
    private boolean zzbcb;
    private ByteBuffer[] zzbcc;
    private long zzbcd;
    private int zzbce;
    private int zzbcf;
    private boolean zzbcg;
    private boolean zzbch;
    private int zzbci;
    private int zzbcj;
    private boolean zzbck;
    private boolean zzbcl;
    private boolean zzbcm;
    private boolean zzbcn;
    private boolean zzbco;
    private boolean zzbcp;
    protected zzjm zzbcq;

    public zzlv(int i, zzlx zzlxVar, zzjt<zzjv> zzjtVar, boolean z) {
        super(i);
        zzpg.checkState(zzpt.SDK_INT >= 16);
        this.zzbbh = (zzlx) zzpg.checkNotNull(zzlxVar);
        this.zzbbi = null;
        this.zzbbj = z;
        this.zzbbk = new zzjp(0);
        this.zzbbl = new zzjp(0);
        this.zzbbm = new zzhv();
        this.zzbbn = new ArrayList();
        this.zzbbo = new MediaCodec.BufferInfo();
        this.zzbci = 0;
        this.zzbcj = 0;
    }

    private final void zza(zzly zzlyVar) throws zzhe {
        throw zzhe.zza(zzlyVar, getIndex());
    }

    private final boolean zzd(long j, long j2) throws zzhe {
        boolean z;
        boolean z2;
        if (this.zzbcf < 0) {
            if (!this.zzbby || !this.zzbcl) {
                this.zzbcf = this.zzbbr.dequeueOutputBuffer(this.zzbbo, 0L);
            } else {
                try {
                    this.zzbcf = this.zzbbr.dequeueOutputBuffer(this.zzbbo, 0L);
                } catch (IllegalStateException e) {
                    zzhh();
                    if (!this.zzbcn) {
                        return false;
                    }
                    zzhf();
                    return false;
                }
            }
            int i = this.zzbcf;
            if (i < 0) {
                if (i == -2) {
                    MediaFormat outputFormat = this.zzbbr.getOutputFormat();
                    if (this.zzbbv && outputFormat.getInteger(ViewHierarchyConstants.DIMENSION_WIDTH_KEY) == 32 && outputFormat.getInteger(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY) == 32) {
                        this.zzbcb = true;
                        return true;
                    }
                    if (this.zzbbz) {
                        outputFormat.setInteger("channel-count", 1);
                    }
                    onOutputFormatChanged(this.zzbbr, outputFormat);
                    return true;
                } else if (i == -3) {
                    this.zzalh = this.zzbbr.getOutputBuffers();
                    return true;
                } else if (!this.zzbbw) {
                    return false;
                } else {
                    if (!this.zzbcm && this.zzbcj != 2) {
                        return false;
                    }
                    zzhh();
                    return false;
                }
            } else if (this.zzbcb) {
                this.zzbcb = false;
                this.zzbbr.releaseOutputBuffer(i, false);
                this.zzbcf = -1;
                return true;
            } else if ((this.zzbbo.flags & 4) != 0) {
                zzhh();
                this.zzbcf = -1;
                return false;
            } else {
                ByteBuffer byteBuffer = this.zzalh[this.zzbcf];
                if (byteBuffer != null) {
                    byteBuffer.position(this.zzbbo.offset);
                    byteBuffer.limit(this.zzbbo.offset + this.zzbbo.size);
                }
                long j3 = this.zzbbo.presentationTimeUs;
                int size = this.zzbbn.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        z2 = false;
                        break;
                    } else if (this.zzbbn.get(i2).longValue() == j3) {
                        this.zzbbn.remove(i2);
                        z2 = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                this.zzbcg = z2;
            }
        }
        if (!this.zzbby || !this.zzbcl) {
            MediaCodec mediaCodec = this.zzbbr;
            ByteBuffer[] byteBufferArr = this.zzalh;
            int i3 = this.zzbcf;
            z = zza(j, j2, mediaCodec, byteBufferArr[i3], i3, this.zzbbo.flags, this.zzbbo.presentationTimeUs, this.zzbcg);
        } else {
            try {
                MediaCodec mediaCodec2 = this.zzbbr;
                ByteBuffer[] byteBufferArr2 = this.zzalh;
                int i4 = this.zzbcf;
                z = zza(j, j2, mediaCodec2, byteBufferArr2[i4], i4, this.zzbbo.flags, this.zzbbo.presentationTimeUs, this.zzbcg);
            } catch (IllegalStateException e2) {
                zzhh();
                if (!this.zzbcn) {
                    return false;
                }
                zzhf();
                return false;
            }
        }
        if (z) {
            long j4 = this.zzbbo.presentationTimeUs;
            this.zzbcf = -1;
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:86:0x022b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x022d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzhg() throws com.google.android.gms.internal.ads.zzhe {
        /*
            Method dump skipped, instructions count: 790
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlv.zzhg():boolean");
    }

    private final void zzhh() throws zzhe {
        if (this.zzbcj == 2) {
            zzhf();
            zzhc();
            return;
        }
        this.zzbcn = true;
        zzge();
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public boolean isReady() {
        if (this.zzahz == null || this.zzbco) {
            return false;
        }
        if (zzej() || this.zzbcf >= 0) {
            return true;
        }
        return this.zzbcd != -9223372036854775807L && SystemClock.elapsedRealtime() < this.zzbcd;
    }

    protected void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) throws zzhe {
    }

    @Override // com.google.android.gms.internal.ads.zzhd
    public void onStarted() {
    }

    @Override // com.google.android.gms.internal.ads.zzhd
    public void onStopped() {
    }

    @Override // com.google.android.gms.internal.ads.zzib
    public final int zza(zzht zzhtVar) throws zzhe {
        try {
            return zza(this.zzbbh, zzhtVar);
        } catch (zzmd e) {
            throw zzhe.zza(e, getIndex());
        }
    }

    protected abstract int zza(zzlx zzlxVar, zzht zzhtVar) throws zzmd;

    public zzlw zza(zzlx zzlxVar, zzht zzhtVar, boolean z) throws zzmd {
        return zzlxVar.zzc(zzhtVar.zzahe, z);
    }

    @Override // com.google.android.gms.internal.ads.zzhd
    public void zza(long j, boolean z) throws zzhe {
        this.zzbcm = false;
        this.zzbcn = false;
        if (this.zzbbr != null) {
            this.zzbcd = -9223372036854775807L;
            this.zzbce = -1;
            this.zzbcf = -1;
            this.zzbcp = true;
            this.zzbco = false;
            this.zzbcg = false;
            this.zzbbn.clear();
            this.zzbca = false;
            this.zzbcb = false;
            if (this.zzbbu || (this.zzbbx && this.zzbcl)) {
                zzhf();
                zzhc();
            } else if (this.zzbcj != 0) {
                zzhf();
                zzhc();
            } else {
                this.zzbbr.flush();
                this.zzbck = false;
            }
            if (!this.zzbch || this.zzahz == null) {
                return;
            }
            this.zzbci = 1;
        }
    }

    protected void zza(zzjp zzjpVar) {
    }

    protected abstract void zza(zzlw zzlwVar, MediaCodec mediaCodec, zzht zzhtVar, MediaCrypto mediaCrypto) throws zzmd;

    protected abstract boolean zza(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws zzhe;

    protected boolean zza(MediaCodec mediaCodec, boolean z, zzht zzhtVar, zzht zzhtVar2) {
        return false;
    }

    protected boolean zza(zzlw zzlwVar) {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void zzb(long j, long j2) throws zzhe {
        if (this.zzbcn) {
            zzge();
            return;
        }
        if (this.zzahz == null) {
            this.zzbbl.clear();
            int zza = zza(this.zzbbm, this.zzbbl, true);
            if (zza != -5) {
                if (zza != -4) {
                    return;
                }
                zzpg.checkState(this.zzbbl.zzgi());
                this.zzbcm = true;
                zzhh();
                return;
            }
            zzd(this.zzbbm.zzahz);
        }
        zzhc();
        if (this.zzbbr != null) {
            zzpu.beginSection("drainAndFeed");
            do {
            } while (zzd(j, j2));
            do {
            } while (zzhg());
            zzpu.endSection();
        } else {
            zzdn(j);
            this.zzbbl.clear();
            int zza2 = zza(this.zzbbm, this.zzbbl, false);
            if (zza2 == -5) {
                zzd(this.zzbbm.zzahz);
            } else if (zza2 == -4) {
                zzpg.checkState(this.zzbbl.zzgi());
                this.zzbcm = true;
                zzhh();
            }
        }
        this.zzbcq.zzgn();
    }

    protected void zzc(String str, long j, long j2) {
    }

    public void zzd(zzht zzhtVar) throws zzhe {
        MediaCodec mediaCodec;
        zzht zzhtVar2 = this.zzahz;
        this.zzahz = zzhtVar;
        boolean z = true;
        if (!zzpt.zza(zzhtVar.zzahh, zzhtVar2 == null ? null : zzhtVar2.zzahh)) {
            if (this.zzahz.zzahh != null) {
                zzjt<zzjv> zzjtVar = this.zzbbi;
                if (zzjtVar == null) {
                    throw zzhe.zza(new IllegalStateException("Media requires a DrmSessionManager"), getIndex());
                }
                zzjr<zzjv> zza = zzjtVar.zza(Looper.myLooper(), this.zzahz.zzahh);
                this.zzbbq = zza;
                if (zza == this.zzbbp) {
                    this.zzbbi.zza(zza);
                }
            } else {
                this.zzbbq = null;
            }
        }
        if (this.zzbbq != this.zzbbp || (mediaCodec = this.zzbbr) == null || !zza(mediaCodec, this.zzbbs.zzbcr, zzhtVar2, this.zzahz)) {
            if (this.zzbck) {
                this.zzbcj = 1;
                return;
            }
            zzhf();
            zzhc();
            return;
        }
        this.zzbch = true;
        this.zzbci = 1;
        if (!this.zzbbv || this.zzahz.width != zzhtVar2.width || this.zzahz.height != zzhtVar2.height) {
            z = false;
        }
        this.zzbca = z;
    }

    @Override // com.google.android.gms.internal.ads.zzhd
    public void zze(boolean z) throws zzhe {
        this.zzbcq = new zzjm();
    }

    @Override // com.google.android.gms.internal.ads.zzhd, com.google.android.gms.internal.ads.zzib
    public final int zzeg() {
        return 4;
    }

    @Override // com.google.android.gms.internal.ads.zzhd
    public void zzeh() {
        this.zzahz = null;
        try {
            zzhf();
            try {
                zzjr<zzjv> zzjrVar = this.zzbbp;
                if (zzjrVar != null) {
                    this.zzbbi.zza(zzjrVar);
                }
                try {
                    zzjr<zzjv> zzjrVar2 = this.zzbbq;
                    if (zzjrVar2 != null && zzjrVar2 != this.zzbbp) {
                        this.zzbbi.zza(zzjrVar2);
                    }
                } finally {
                }
            } catch (Throwable th) {
                try {
                    zzjr<zzjv> zzjrVar3 = this.zzbbq;
                    if (zzjrVar3 != null && zzjrVar3 != this.zzbbp) {
                        this.zzbbi.zza(zzjrVar3);
                    }
                    throw th;
                } finally {
                }
            }
        } catch (Throwable th2) {
            try {
                if (this.zzbbp != null) {
                    this.zzbbi.zza(this.zzbbp);
                }
                try {
                    zzjr<zzjv> zzjrVar4 = this.zzbbq;
                    if (zzjrVar4 != null && zzjrVar4 != this.zzbbp) {
                        this.zzbbi.zza(zzjrVar4);
                    }
                    throw th2;
                } finally {
                }
            } catch (Throwable th3) {
                try {
                    zzjr<zzjv> zzjrVar5 = this.zzbbq;
                    if (zzjrVar5 != null && zzjrVar5 != this.zzbbp) {
                        this.zzbbi.zza(zzjrVar5);
                    }
                    throw th3;
                } finally {
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public boolean zzfe() {
        return this.zzbcn;
    }

    protected void zzge() throws zzhe {
    }

    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    public final void zzhc() throws zzhe {
        zzht zzhtVar;
        if (this.zzbbr != null || (zzhtVar = this.zzahz) == null) {
            return;
        }
        this.zzbbp = this.zzbbq;
        String str = zzhtVar.zzahe;
        zzjr<zzjv> zzjrVar = this.zzbbp;
        if (zzjrVar != null) {
            int state = zzjrVar.getState();
            if (state == 0) {
                throw zzhe.zza(this.zzbbp.zzgp(), getIndex());
            }
            if (state != 3 && state != 4) {
                return;
            }
            this.zzbbp.zzgo();
            throw new NoSuchMethodError();
        }
        if (this.zzbbs == null) {
            try {
                this.zzbbs = zza(this.zzbbh, this.zzahz, false);
            } catch (zzmd e) {
                zza(new zzly(this.zzahz, (Throwable) e, false, -49998));
            }
            if (this.zzbbs == null) {
                zza(new zzly(this.zzahz, (Throwable) null, false, -49999));
            }
        }
        if (!zza(this.zzbbs)) {
            return;
        }
        String str2 = this.zzbbs.name;
        this.zzbbt = zzpt.SDK_INT < 21 && this.zzahz.zzahg.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str2);
        this.zzbbu = zzpt.SDK_INT < 18 || (zzpt.SDK_INT == 18 && ("OMX.SEC.avc.dec".equals(str2) || "OMX.SEC.avc.dec.secure".equals(str2))) || (zzpt.SDK_INT == 19 && zzpt.MODEL.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str2) || "OMX.Exynos.avc.dec.secure".equals(str2)));
        this.zzbbv = zzpt.SDK_INT < 24 && ("OMX.Nvidia.h264.decode".equals(str2) || "OMX.Nvidia.h264.decode.secure".equals(str2)) && ("flounder".equals(zzpt.DEVICE) || "flounder_lte".equals(zzpt.DEVICE) || "grouper".equals(zzpt.DEVICE) || "tilapia".equals(zzpt.DEVICE));
        this.zzbbw = zzpt.SDK_INT <= 17 && ("OMX.rk.video_decoder.avc".equals(str2) || "OMX.allwinner.video.decoder.avc".equals(str2));
        this.zzbbx = (zzpt.SDK_INT <= 23 && "OMX.google.vorbis.decoder".equals(str2)) || (zzpt.SDK_INT <= 19 && "hb2000".equals(zzpt.DEVICE) && ("OMX.amlogic.avc.decoder.awesome".equals(str2) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str2)));
        this.zzbby = zzpt.SDK_INT == 21 && "OMX.google.aac.decoder".equals(str2);
        this.zzbbz = zzpt.SDK_INT <= 18 && this.zzahz.zzaho == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str2);
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            String valueOf = String.valueOf(str2);
            zzpu.beginSection(valueOf.length() != 0 ? "createCodec:".concat(valueOf) : new String("createCodec:"));
            this.zzbbr = MediaCodec.createByCodecName(str2);
            zzpu.endSection();
            zzpu.beginSection("configureCodec");
            zza(this.zzbbs, this.zzbbr, this.zzahz, (MediaCrypto) null);
            zzpu.endSection();
            zzpu.beginSection("startCodec");
            this.zzbbr.start();
            zzpu.endSection();
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            zzc(str2, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
            this.zzbcc = this.zzbbr.getInputBuffers();
            this.zzalh = this.zzbbr.getOutputBuffers();
        } catch (Exception e2) {
            zza(new zzly(this.zzahz, (Throwable) e2, false, str2));
        }
        this.zzbcd = getState() == 2 ? SystemClock.elapsedRealtime() + 1000 : (char) 1;
        this.zzbce = -1;
        this.zzbcf = -1;
        this.zzbcp = true;
        this.zzbcq.zzaoa++;
    }

    public final MediaCodec zzhd() {
        return this.zzbbr;
    }

    public final zzlw zzhe() {
        return this.zzbbs;
    }

    public void zzhf() {
        this.zzbcd = -9223372036854775807L;
        this.zzbce = -1;
        this.zzbcf = -1;
        this.zzbco = false;
        this.zzbcg = false;
        this.zzbbn.clear();
        this.zzbcc = null;
        this.zzalh = null;
        this.zzbbs = null;
        this.zzbch = false;
        this.zzbck = false;
        this.zzbbt = false;
        this.zzbbu = false;
        this.zzbbv = false;
        this.zzbbw = false;
        this.zzbbx = false;
        this.zzbbz = false;
        this.zzbca = false;
        this.zzbcb = false;
        this.zzbcl = false;
        this.zzbci = 0;
        this.zzbcj = 0;
        this.zzbbk.zzdr = null;
        if (this.zzbbr != null) {
            this.zzbcq.zzaob++;
            try {
                this.zzbbr.stop();
                try {
                    this.zzbbr.release();
                    this.zzbbr = null;
                    zzjr<zzjv> zzjrVar = this.zzbbp;
                    if (zzjrVar == null || this.zzbbq == zzjrVar) {
                        return;
                    }
                    try {
                        this.zzbbi.zza(zzjrVar);
                    } finally {
                    }
                } catch (Throwable th) {
                    this.zzbbr = null;
                    zzjr<zzjv> zzjrVar2 = this.zzbbp;
                    if (zzjrVar2 != null && this.zzbbq != zzjrVar2) {
                        try {
                            this.zzbbi.zza(zzjrVar2);
                        } finally {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    this.zzbbr.release();
                    this.zzbbr = null;
                    zzjr<zzjv> zzjrVar3 = this.zzbbp;
                    if (zzjrVar3 != null && this.zzbbq != zzjrVar3) {
                        try {
                            this.zzbbi.zza(zzjrVar3);
                        } finally {
                        }
                    }
                    throw th2;
                } catch (Throwable th3) {
                    this.zzbbr = null;
                    zzjr<zzjv> zzjrVar4 = this.zzbbp;
                    if (zzjrVar4 != null && this.zzbbq != zzjrVar4) {
                        try {
                            this.zzbbi.zza(zzjrVar4);
                        } finally {
                        }
                    }
                    throw th3;
                }
            }
        }
    }
}
