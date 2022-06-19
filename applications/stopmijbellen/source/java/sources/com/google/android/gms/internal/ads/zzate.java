package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.SystemClock;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
@TargetApi(19)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzate.class */
public abstract class zzate extends zzaoq {
    private static final byte[] zzb = zzaxb.zzp("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78");
    private boolean zzA;
    private int zzB;
    private int zzC;
    private boolean zzD;
    private boolean zzE;
    private boolean zzF;
    private boolean zzG;
    private boolean zzH;
    public zzara zza;
    private final zzatg zzc;
    private final zzarb zzd;
    private final zzarb zze;
    private final zzaph zzf;
    private final List<Long> zzg;
    private final MediaCodec.BufferInfo zzh;
    private zzapg zzi;
    private MediaCodec zzj;
    private zzatc zzk;
    private boolean zzl;
    private boolean zzm;
    private boolean zzn;
    private boolean zzo;
    private boolean zzp;
    private boolean zzq;
    private boolean zzr;
    private boolean zzs;
    private boolean zzt;
    private ByteBuffer[] zzu;
    private ByteBuffer[] zzv;
    private long zzw;
    private int zzx;
    private int zzy;
    private boolean zzz;

    public zzate(int i, zzatg zzatgVar, zzarg zzargVar, boolean z) {
        super(i);
        zzawm.zze(zzaxb.zza >= 16);
        this.zzc = zzatgVar;
        this.zzd = new zzarb(0);
        this.zze = new zzarb(0);
        this.zzf = new zzaph();
        this.zzg = new ArrayList();
        this.zzh = new MediaCodec.BufferInfo();
        this.zzB = 0;
        this.zzC = 0;
    }

    private final void zzI() throws zzaos {
        if (this.zzC == 2) {
            zzY();
            zzW();
            return;
        }
        this.zzG = true;
        zzS();
    }

    private final boolean zzJ() throws zzaos {
        int i;
        int i2;
        MediaCodec mediaCodec = this.zzj;
        if (mediaCodec == null || this.zzC == 2 || this.zzF) {
            return false;
        }
        if (this.zzx < 0) {
            int dequeueInputBuffer = mediaCodec.dequeueInputBuffer(0L);
            this.zzx = dequeueInputBuffer;
            if (dequeueInputBuffer < 0) {
                return false;
            }
            zzarb zzarbVar = this.zzd;
            zzarbVar.zzb = this.zzu[dequeueInputBuffer];
            zzarbVar.zzb();
        }
        if (this.zzC == 1) {
            if (!this.zzo) {
                this.zzE = true;
                this.zzj.queueInputBuffer(this.zzx, 0, 0, 0L, 4);
                this.zzx = -1;
            }
            this.zzC = 2;
            return false;
        } else if (this.zzs) {
            this.zzs = false;
            ByteBuffer byteBuffer = this.zzd.zzb;
            byte[] bArr = zzb;
            byteBuffer.put(bArr);
            MediaCodec mediaCodec2 = this.zzj;
            int i3 = this.zzx;
            int length = bArr.length;
            mediaCodec2.queueInputBuffer(i3, 0, 38, 0L, 0);
            this.zzx = -1;
            this.zzD = true;
            return true;
        } else {
            if (this.zzB == 1) {
                for (int i4 = 0; i4 < this.zzi.zzh.size(); i4++) {
                    this.zzd.zzb.put(this.zzi.zzh.get(i4));
                }
                this.zzB = 2;
            }
            int position = this.zzd.zzb.position();
            int zzd = zzd(this.zzf, this.zzd, false);
            if (zzd == -3) {
                return false;
            }
            if (zzd == -5) {
                if (this.zzB == 2) {
                    this.zzd.zzb();
                    this.zzB = 1;
                }
                zzQ(this.zzf.zza);
                return true;
            } else if (this.zzd.zzf()) {
                if (this.zzB == 2) {
                    this.zzd.zzb();
                    this.zzB = 1;
                }
                this.zzF = true;
                if (!this.zzD) {
                    zzI();
                    return false;
                }
                try {
                    if (this.zzo) {
                        return false;
                    }
                    this.zzE = true;
                    this.zzj.queueInputBuffer(this.zzx, 0, 0, 0L, 4);
                    this.zzx = -1;
                    return false;
                } catch (MediaCodec.CryptoException e) {
                    throw zzaos.zza(e, zza());
                }
            } else if (this.zzH && !this.zzd.zzg()) {
                this.zzd.zzb();
                if (this.zzB != 2) {
                    return true;
                }
                this.zzB = 1;
                return true;
            } else {
                this.zzH = false;
                boolean zzi = this.zzd.zzi();
                if (this.zzl && !zzi) {
                    ByteBuffer byteBuffer2 = this.zzd.zzb;
                    byte[] bArr2 = zzaws.zza;
                    int position2 = byteBuffer2.position();
                    int i5 = 0;
                    int i6 = 0;
                    while (true) {
                        int i7 = i5 + 1;
                        if (i7 >= position2) {
                            byteBuffer2.clear();
                            break;
                        }
                        int i8 = byteBuffer2.get(i5) & 255;
                        if (i6 == 3) {
                            i2 = i6;
                            i = i8;
                            if (i8 == 1) {
                                if ((byteBuffer2.get(i7) & 31) == 7) {
                                    ByteBuffer duplicate = byteBuffer2.duplicate();
                                    duplicate.position(i5 - 3);
                                    duplicate.limit(position2);
                                    byteBuffer2.position(0);
                                    byteBuffer2.put(duplicate);
                                    break;
                                }
                                i = 1;
                                i2 = i6;
                            }
                        } else {
                            i2 = i6;
                            i = i8;
                            if (i8 == 0) {
                                i2 = i6 + 1;
                                i = i8;
                            }
                        }
                        i6 = i2;
                        if (i != 0) {
                            i6 = 0;
                        }
                        i5 = i7;
                    }
                    if (this.zzd.zzb.position() == 0) {
                        return true;
                    }
                    this.zzl = false;
                }
                try {
                    zzarb zzarbVar2 = this.zzd;
                    long j = zzarbVar2.zzc;
                    if (zzarbVar2.zze()) {
                        this.zzg.add(Long.valueOf(j));
                    }
                    this.zzd.zzb.flip();
                    zzX(this.zzd);
                    if (zzi) {
                        MediaCodec.CryptoInfo zza = this.zzd.zza.zza();
                        if (position != 0) {
                            if (zza.numBytesOfClearData == null) {
                                zza.numBytesOfClearData = new int[1];
                            }
                            int[] iArr = zza.numBytesOfClearData;
                            iArr[0] = iArr[0] + position;
                        }
                        this.zzj.queueSecureInputBuffer(this.zzx, 0, zza, j, 0);
                    } else {
                        this.zzj.queueInputBuffer(this.zzx, 0, this.zzd.zzb.limit(), j, 0);
                    }
                    this.zzx = -1;
                    this.zzD = true;
                    this.zzB = 0;
                    this.zza.zzc++;
                    return true;
                } catch (MediaCodec.CryptoException e2) {
                    throw zzaos.zza(e2, zza());
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zzD(long j, long j2) throws zzaos {
        boolean z;
        int i;
        boolean z2;
        if (this.zzG) {
            zzS();
            return;
        }
        if (this.zzi == null) {
            this.zze.zzb();
            int zzd = zzd(this.zzf, this.zze, true);
            if (zzd != -5) {
                if (zzd != -4) {
                    return;
                }
                zzawm.zze(this.zze.zzf());
                this.zzF = true;
                zzI();
                return;
            }
            zzQ(this.zzf.zza);
        }
        zzW();
        if (this.zzj != null) {
            zzawz.zza("drainAndFeed");
            while (true) {
                if (this.zzy < 0) {
                    if (!this.zzq || !this.zzE) {
                        i = this.zzj.dequeueOutputBuffer(this.zzh, 0L);
                        this.zzy = i;
                    } else {
                        try {
                            i = this.zzj.dequeueOutputBuffer(this.zzh, 0L);
                            this.zzy = i;
                        } catch (IllegalStateException e) {
                            zzI();
                            if (this.zzG) {
                                zzY();
                            }
                        }
                    }
                    if (i >= 0) {
                        if (this.zzt) {
                            this.zzt = false;
                            this.zzj.releaseOutputBuffer(i, false);
                            this.zzy = -1;
                        } else {
                            MediaCodec.BufferInfo bufferInfo = this.zzh;
                            if ((bufferInfo.flags & 4) != 0) {
                                zzI();
                                this.zzy = -1;
                                break;
                            }
                            ByteBuffer byteBuffer = this.zzv[this.zzy];
                            if (byteBuffer != null) {
                                byteBuffer.position(bufferInfo.offset);
                                MediaCodec.BufferInfo bufferInfo2 = this.zzh;
                                byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
                            }
                            long j3 = this.zzh.presentationTimeUs;
                            int size = this.zzg.size();
                            int i2 = 0;
                            while (true) {
                                if (i2 >= size) {
                                    z2 = false;
                                    break;
                                } else if (this.zzg.get(i2).longValue() == j3) {
                                    this.zzg.remove(i2);
                                    z2 = true;
                                    break;
                                } else {
                                    i2++;
                                }
                            }
                            this.zzz = z2;
                        }
                    } else if (i == -2) {
                        MediaFormat outputFormat = this.zzj.getOutputFormat();
                        if (this.zzn && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
                            this.zzt = true;
                        } else {
                            if (this.zzr) {
                                outputFormat.setInteger("channel-count", 1);
                            }
                            zzR(this.zzj, outputFormat);
                        }
                    } else if (i == -3) {
                        this.zzv = this.zzj.getOutputBuffers();
                    } else if (this.zzo && (this.zzF || this.zzC == 2)) {
                        zzI();
                    }
                }
                if (!this.zzq || !this.zzE) {
                    MediaCodec mediaCodec = this.zzj;
                    ByteBuffer[] byteBufferArr = this.zzv;
                    int i3 = this.zzy;
                    ByteBuffer byteBuffer2 = byteBufferArr[i3];
                    MediaCodec.BufferInfo bufferInfo3 = this.zzh;
                    z = zzT(j, j2, mediaCodec, byteBuffer2, i3, bufferInfo3.flags, bufferInfo3.presentationTimeUs, this.zzz);
                } else {
                    try {
                        MediaCodec mediaCodec2 = this.zzj;
                        ByteBuffer[] byteBufferArr2 = this.zzv;
                        int i4 = this.zzy;
                        ByteBuffer byteBuffer3 = byteBufferArr2[i4];
                        MediaCodec.BufferInfo bufferInfo4 = this.zzh;
                        z = zzT(j, j2, mediaCodec2, byteBuffer3, i4, bufferInfo4.flags, bufferInfo4.presentationTimeUs, this.zzz);
                    } catch (IllegalStateException e2) {
                        zzI();
                        if (this.zzG) {
                            zzY();
                        }
                    }
                }
                if (!z) {
                    break;
                }
                long j4 = this.zzh.presentationTimeUs;
                this.zzy = -1;
            }
            do {
            } while (zzJ());
            zzawz.zzb();
        } else {
            zzx(j);
            this.zze.zzb();
            int zzd2 = zzd(this.zzf, this.zze, false);
            if (zzd2 == -5) {
                zzQ(this.zzf.zza);
            } else if (zzd2 == -4) {
                zzawm.zze(this.zze.zzf());
                this.zzF = true;
                zzI();
            }
        }
        this.zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public boolean zzE() {
        return this.zzG;
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public boolean zzF() {
        boolean z;
        if (this.zzi != null) {
            z = true;
            if (!zzC()) {
                z = true;
                if (this.zzy < 0) {
                    if (this.zzw != -9223372036854775807L && SystemClock.elapsedRealtime() < this.zzw) {
                        return true;
                    }
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzapm
    public final int zzG(zzapg zzapgVar) throws zzaos {
        try {
            return zzH(this.zzc, zzapgVar);
        } catch (zzatj e) {
            throw zzaos.zza(e, zza());
        }
    }

    public abstract int zzH(zzatg zzatgVar, zzapg zzapgVar) throws zzatj;

    public zzatc zzM(zzatg zzatgVar, zzapg zzapgVar, boolean z) throws zzatj {
        return zzato.zzc(zzapgVar.zzf, false);
    }

    public abstract void zzO(zzatc zzatcVar, MediaCodec mediaCodec, zzapg zzapgVar, MediaCrypto mediaCrypto) throws zzatj;

    public void zzP(String str, long j, long j2) {
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x008d, code lost:
        if (r0.zzk == r0.zzk) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void zzQ(com.google.android.gms.internal.ads.zzapg r7) throws com.google.android.gms.internal.ads.zzaos {
        /*
            r6 = this;
            r0 = r6
            com.google.android.gms.internal.ads.zzapg r0 = r0.zzi
            r8 = r0
            r0 = r6
            r1 = r7
            r0.zzi = r1
            r0 = r7
            com.google.android.gms.internal.ads.zzarf r0 = r0.zzi
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L18
            r0 = 0
            r7 = r0
            goto L1d
        L18:
            r0 = r8
            com.google.android.gms.internal.ads.zzarf r0 = r0.zzi
            r7 = r0
        L1d:
            r0 = r9
            r1 = r7
            boolean r0 = com.google.android.gms.internal.ads.zzaxb.zzo(r0, r1)
            if (r0 != 0) goto L44
            r0 = r6
            com.google.android.gms.internal.ads.zzapg r0 = r0.zzi
            com.google.android.gms.internal.ads.zzarf r0 = r0.zzi
            if (r0 != 0) goto L32
            goto L44
        L32:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Media requires a DrmSessionManager"
            r1.<init>(r2)
            r1 = r6
            int r1 = r1.zza()
            com.google.android.gms.internal.ads.zzaos r0 = com.google.android.gms.internal.ads.zzaos.zza(r0, r1)
            throw r0
        L44:
            r0 = r6
            android.media.MediaCodec r0 = r0.zzj
            r7 = r0
            r0 = 1
            r10 = r0
            r0 = r7
            if (r0 == 0) goto L9d
            r0 = r6
            r1 = r7
            r2 = r6
            com.google.android.gms.internal.ads.zzatc r2 = r2.zzk
            boolean r2 = r2.zzb
            r3 = r8
            r4 = r6
            com.google.android.gms.internal.ads.zzapg r4 = r4.zzi
            boolean r0 = r0.zzZ(r1, r2, r3, r4)
            if (r0 == 0) goto L9d
            r0 = r6
            r1 = 1
            r0.zzA = r1
            r0 = r6
            r1 = 1
            r0.zzB = r1
            r0 = r6
            boolean r0 = r0.zzn
            if (r0 == 0) goto L93
            r0 = r6
            com.google.android.gms.internal.ads.zzapg r0 = r0.zzi
            r7 = r0
            r0 = r7
            int r0 = r0.zzj
            r1 = r8
            int r1 = r1.zzj
            if (r0 != r1) goto L93
            r0 = r7
            int r0 = r0.zzk
            r1 = r8
            int r1 = r1.zzk
            if (r0 != r1) goto L93
            goto L96
        L93:
            r0 = 0
            r10 = r0
        L96:
            r0 = r6
            r1 = r10
            r0.zzs = r1
            return
        L9d:
            r0 = r6
            boolean r0 = r0.zzD
            if (r0 == 0) goto Laa
            r0 = r6
            r1 = 1
            r0.zzC = r1
            return
        Laa:
            r0 = r6
            r0.zzY()
            r0 = r6
            r0.zzW()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzate.zzQ(com.google.android.gms.internal.ads.zzapg):void");
    }

    public void zzR(MediaCodec mediaCodec, MediaFormat mediaFormat) throws zzaos {
        throw null;
    }

    public void zzS() throws zzaos {
    }

    public abstract boolean zzT(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws zzaos;

    public final MediaCodec zzU() {
        return this.zzj;
    }

    public final zzatc zzV() {
        return this.zzk;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x023e A[Catch: Exception -> 0x02e7, TRY_ENTER, TryCatch #0 {Exception -> 0x02e7, blocks: (B:97:0x0222, B:99:0x0233, B:100:0x023e, B:102:0x024a), top: B:113:0x0222 }] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0233 A[Catch: Exception -> 0x02e7, TRY_LEAVE, TryCatch #0 {Exception -> 0x02e7, blocks: (B:97:0x0222, B:99:0x0233, B:100:0x023e, B:102:0x024a), top: B:113:0x0222 }] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzW() throws com.google.android.gms.internal.ads.zzaos {
        /*
            Method dump skipped, instructions count: 767
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzate.zzW():void");
    }

    public void zzX(zzarb zzarbVar) {
    }

    public void zzY() {
        this.zzw = -9223372036854775807L;
        this.zzx = -1;
        this.zzy = -1;
        this.zzz = false;
        this.zzg.clear();
        this.zzu = null;
        this.zzv = null;
        this.zzk = null;
        this.zzA = false;
        this.zzD = false;
        this.zzl = false;
        this.zzm = false;
        this.zzn = false;
        this.zzo = false;
        this.zzp = false;
        this.zzr = false;
        this.zzs = false;
        this.zzt = false;
        this.zzE = false;
        this.zzB = 0;
        this.zzC = 0;
        this.zzd.zzb = null;
        MediaCodec mediaCodec = this.zzj;
        if (mediaCodec != null) {
            this.zza.zzb++;
            try {
                mediaCodec.stop();
                try {
                    this.zzj.release();
                } finally {
                }
            } catch (Throwable th) {
                try {
                    this.zzj.release();
                    throw th;
                } finally {
                }
            }
        }
    }

    public boolean zzZ(MediaCodec mediaCodec, boolean z, zzapg zzapgVar, zzapg zzapgVar2) {
        return false;
    }

    public boolean zzaa(zzatc zzatcVar) {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzaoq, com.google.android.gms.internal.ads.zzapm
    public final int zze() {
        return 4;
    }

    @Override // com.google.android.gms.internal.ads.zzaoq
    public void zzn() {
        this.zzi = null;
        zzY();
    }

    @Override // com.google.android.gms.internal.ads.zzaoq
    public void zzo(boolean z) throws zzaos {
        this.zza = new zzara();
    }

    @Override // com.google.android.gms.internal.ads.zzaoq
    public void zzp(long j, boolean z) throws zzaos {
        this.zzF = false;
        this.zzG = false;
        if (this.zzj != null) {
            this.zzw = -9223372036854775807L;
            this.zzx = -1;
            this.zzy = -1;
            this.zzH = true;
            this.zzz = false;
            this.zzg.clear();
            this.zzs = false;
            this.zzt = false;
            if (this.zzm || (this.zzp && this.zzE)) {
                zzY();
                zzW();
            } else if (this.zzC != 0) {
                zzY();
                zzW();
            } else {
                this.zzj.flush();
                this.zzD = false;
            }
            if (!this.zzA || this.zzi == null) {
                return;
            }
            this.zzB = 1;
        }
    }
}
