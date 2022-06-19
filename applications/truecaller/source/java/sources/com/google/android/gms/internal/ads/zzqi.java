package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import io.agora.rtc.Constants;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqi.class */
public final class zzqi implements zznu {
    public static final zzoa zza = zzqd.zza;
    private static final byte[] zzb = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    private static final byte[] zzc = zzamq.zzs("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");
    private static final byte[] zzd = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
    private static final UUID zze = new UUID(72057594037932032L, -9223371306706625679L);
    private static final Map<String, Integer> zzf;
    private boolean zzA;
    private int zzB;
    private long zzC;
    private boolean zzD;
    private long zzE;
    private long zzF;
    private long zzG;
    private zzalo zzH;
    private zzalo zzI;
    private boolean zzJ;
    private boolean zzK;
    private int zzL;
    private long zzM;
    private long zzN;
    private int zzO;
    private int zzP;
    private int[] zzQ;
    private int zzR;
    private int zzS;
    private int zzT;
    private int zzU;
    private boolean zzV;
    private int zzW;
    private int zzX;
    private int zzY;
    private boolean zzZ;
    private boolean zzaa;
    private boolean zzab;
    private int zzac;
    private byte zzad;
    private boolean zzae;
    private zznx zzaf;
    private final zzqb zzag;
    private final zzqk zzg;
    private final SparseArray<zzqg> zzh;
    private final boolean zzi;
    private final zzamf zzj;
    private final zzamf zzk;
    private final zzamf zzl;
    private final zzamf zzm;
    private final zzamf zzn;
    private final zzamf zzo;
    private final zzamf zzp;
    private final zzamf zzq;
    private final zzamf zzr;
    private final zzamf zzs;
    private ByteBuffer zzt;
    private long zzu;
    private long zzv;
    private long zzw;
    private long zzx;
    private long zzy;
    private zzqg zzz;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("htc_video_rotA-000", 0);
        hashMap.put("htc_video_rotA-090", 90);
        hashMap.put("htc_video_rotA-180", 180);
        hashMap.put("htc_video_rotA-270", 270);
        zzf = Collections.unmodifiableMap(hashMap);
    }

    public zzqi() {
        this(0);
    }

    public zzqi(int i) {
        zzqb zzqbVar = new zzqb();
        this.zzv = -1L;
        this.zzw = -9223372036854775807L;
        this.zzx = -9223372036854775807L;
        this.zzy = -9223372036854775807L;
        this.zzE = -1L;
        this.zzF = -1L;
        this.zzG = -9223372036854775807L;
        this.zzag = zzqbVar;
        zzqbVar.zza(new zzqe(this, null));
        this.zzi = true;
        this.zzg = new zzqk();
        this.zzh = new SparseArray<>();
        this.zzl = new zzamf(4);
        this.zzm = new zzamf(ByteBuffer.allocate(4).putInt(-1).array());
        this.zzn = new zzamf(4);
        this.zzj = new zzamf(zzalw.zza);
        this.zzk = new zzamf(4);
        this.zzo = new zzamf();
        this.zzp = new zzamf();
        this.zzq = new zzamf(8);
        this.zzr = new zzamf();
        this.zzs = new zzamf();
        this.zzQ = new int[1];
    }

    public static final int zzn(int i) {
        switch (i) {
            case 131:
            case 136:
            case Constants.ERR_PUBLISH_STREAM_NOT_FOUND /* 155 */:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case 231:
            case 238:
            case 241:
            case 251:
            case 16871:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 21998:
            case 22186:
            case 22203:
            case 25188:
            case 30321:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 21358:
            case 2274716:
                return 3;
            case Constants.ERR_ALREADY_IN_RECORDING /* 160 */:
            case 166:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 16868:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30113:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 165:
            case 16877:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
            case 30323:
            case 30324:
            case 30325:
                return 5;
            default:
                return 0;
        }
    }

    public static final boolean zzo(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    @EnsuresNonNull({"currentTrack"})
    private final void zzp(int i) throws zzaha {
        if (this.zzz != null) {
            return;
        }
        StringBuilder sb = new StringBuilder(43);
        sb.append("Element ");
        sb.append(i);
        sb.append(" must be in a TrackEntry");
        throw zzaha.zzb(sb.toString(), null);
    }

    @EnsuresNonNull({"cueTimesUs", "cueClusterPositions"})
    private final void zzq(int i) throws zzaha {
        if (this.zzH == null || this.zzI == null) {
            StringBuilder sb = new StringBuilder(37);
            sb.append("Element ");
            sb.append(i);
            sb.append(" must be in a Cues");
            throw zzaha.zzb(sb.toString(), null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0119 A[EDGE_INSN: B:51:0x0119->B:39:0x0119 ?: BREAK  , SYNTHETIC] */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"#1.output"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzr(com.google.android.gms.internal.ads.zzqg r9, long r10, int r12, int r13, int r14) {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqi.zzr(com.google.android.gms.internal.ads.zzqg, long, int, int, int):void");
    }

    private final void zzs(zznv zznvVar, int i) throws IOException {
        if (this.zzl.zze() >= i) {
            return;
        }
        if (this.zzl.zzj() < i) {
            zzamf zzamfVar = this.zzl;
            int zzj = zzamfVar.zzj();
            zzamfVar.zzc(Math.max(zzj + zzj, i));
        }
        ((zznp) zznvVar).zza(this.zzl.zzi(), this.zzl.zze(), i - this.zzl.zze(), false);
        this.zzl.zzf(i);
    }

    @RequiresNonNull({"#2.output"})
    private final int zzt(zznv zznvVar, zzqg zzqgVar, int i) throws IOException {
        int i2;
        int i3;
        if ("S_TEXT/UTF8".equals(zzqgVar.zzb)) {
            zzv(zznvVar, zzb, i);
            int i4 = this.zzX;
            zzu();
            return i4;
        } else if ("S_TEXT/ASS".equals(zzqgVar.zzb)) {
            zzv(zznvVar, zzd, i);
            int i5 = this.zzX;
            zzu();
            return i5;
        } else {
            zzox zzoxVar = zzqgVar.zzV;
            boolean z = true;
            if (!this.zzZ) {
                if (zzqgVar.zzg) {
                    this.zzT &= -1073741825;
                    int i6 = 128;
                    if (!this.zzaa) {
                        ((zznp) zznvVar).zza(this.zzl.zzi(), 0, 1, false);
                        this.zzW++;
                        if ((this.zzl.zzi()[0] & 128) == 128) {
                            throw zzaha.zzb("Extension bit is set in signal byte", null);
                        }
                        this.zzad = this.zzl.zzi()[0];
                        this.zzaa = true;
                    }
                    byte b = this.zzad;
                    if ((b & 1) == 1) {
                        int i7 = b & 2;
                        this.zzT |= 1073741824;
                        if (!this.zzae) {
                            ((zznp) zznvVar).zza(this.zzq.zzi(), 0, 8, false);
                            this.zzW += 8;
                            this.zzae = true;
                            byte[] zzi = this.zzl.zzi();
                            if (i7 != 2) {
                                i6 = 0;
                            }
                            zzi[0] = (byte) (i6 | 8);
                            this.zzl.zzh(0);
                            zzoxVar.zzu(this.zzl, 1, 1);
                            this.zzX++;
                            this.zzq.zzh(0);
                            zzoxVar.zzu(this.zzq, 8, 1);
                            this.zzX += 8;
                        }
                        if (i7 == 2) {
                            if (!this.zzab) {
                                ((zznp) zznvVar).zza(this.zzl.zzi(), 0, 1, false);
                                this.zzW++;
                                this.zzl.zzh(0);
                                this.zzac = this.zzl.zzn();
                                this.zzab = true;
                            }
                            int i8 = this.zzac * 4;
                            this.zzl.zza(i8);
                            ((zznp) zznvVar).zza(this.zzl.zzi(), 0, i8, false);
                            this.zzW += i8;
                            int i9 = (this.zzac >> 1) + 1;
                            int i10 = (i9 * 6) + 2;
                            ByteBuffer byteBuffer = this.zzt;
                            if (byteBuffer == null || byteBuffer.capacity() < i10) {
                                this.zzt = ByteBuffer.allocate(i10);
                            }
                            this.zzt.position(0);
                            this.zzt.putShort((short) i9);
                            int i11 = 0;
                            int i12 = 0;
                            while (true) {
                                i2 = i12;
                                i3 = this.zzac;
                                if (i11 >= i3) {
                                    break;
                                }
                                int zzB = this.zzl.zzB();
                                if (i11 % 2 == 0) {
                                    this.zzt.putShort((short) (zzB - i2));
                                } else {
                                    this.zzt.putInt(zzB - i2);
                                }
                                i11++;
                                i12 = zzB;
                            }
                            int i13 = (i - this.zzW) - i2;
                            if ((i3 & 1) == 1) {
                                this.zzt.putInt(i13);
                            } else {
                                this.zzt.putShort((short) i13);
                                this.zzt.putInt(0);
                            }
                            this.zzr.zzb(this.zzt.array(), i10);
                            zzoxVar.zzu(this.zzr, i10, 1);
                            this.zzX += i10;
                        }
                    }
                } else {
                    byte[] bArr = zzqgVar.zzh;
                    if (bArr != null) {
                        this.zzo.zzb(bArr, bArr.length);
                    }
                }
                if (zzqgVar.zzf > 0) {
                    this.zzT |= 268435456;
                    this.zzs.zza(0);
                    this.zzl.zza(4);
                    this.zzl.zzi()[0] = (byte) ((i >> 24) & 255);
                    this.zzl.zzi()[1] = (byte) ((i >> 16) & 255);
                    this.zzl.zzi()[2] = (byte) ((i >> 8) & 255);
                    this.zzl.zzi()[3] = (byte) (i & 255);
                    zzoxVar.zzu(this.zzl, 4, 2);
                    this.zzX += 4;
                }
                this.zzZ = true;
            }
            int zze2 = this.zzo.zze() + i;
            if (!"V_MPEG4/ISO/AVC".equals(zzqgVar.zzb) && !"V_MPEGH/ISO/HEVC".equals(zzqgVar.zzb)) {
                if (zzqgVar.zzS != null) {
                    if (this.zzo.zze() != 0) {
                        z = false;
                    }
                    zzakt.zzd(z);
                    zzqgVar.zzS.zzb(zznvVar);
                }
                while (true) {
                    int i14 = this.zzW;
                    if (i14 >= zze2) {
                        break;
                    }
                    int zzx = zzx(zznvVar, zzoxVar, zze2 - i14);
                    this.zzW += zzx;
                    this.zzX += zzx;
                }
            } else {
                byte[] zzi2 = this.zzk.zzi();
                zzi2[0] = (byte) 0;
                zzi2[1] = (byte) 0;
                zzi2[2] = (byte) 0;
                int i15 = zzqgVar.zzW;
                int i16 = 4 - i15;
                while (this.zzW < zze2) {
                    int i17 = this.zzY;
                    if (i17 == 0) {
                        int min = Math.min(i15, this.zzo.zzd());
                        ((zznp) zznvVar).zza(zzi2, i16 + min, i15 - min, false);
                        if (min > 0) {
                            this.zzo.zzm(zzi2, i16, min);
                        }
                        this.zzW += i15;
                        this.zzk.zzh(0);
                        this.zzY = this.zzk.zzB();
                        this.zzj.zzh(0);
                        zzov.zzb(zzoxVar, this.zzj, 4);
                        this.zzX += 4;
                    } else {
                        int zzx2 = zzx(zznvVar, zzoxVar, i17);
                        this.zzW += zzx2;
                        this.zzX += zzx2;
                        this.zzY -= zzx2;
                    }
                }
            }
            if ("A_VORBIS".equals(zzqgVar.zzb)) {
                this.zzm.zzh(0);
                zzov.zzb(zzoxVar, this.zzm, 4);
                this.zzX += 4;
            }
            int i18 = this.zzX;
            zzu();
            return i18;
        }
    }

    private final void zzu() {
        this.zzW = 0;
        this.zzX = 0;
        this.zzY = 0;
        this.zzZ = false;
        this.zzaa = false;
        this.zzab = false;
        this.zzac = 0;
        this.zzad = (byte) 0;
        this.zzae = false;
        this.zzo.zza(0);
    }

    private final void zzv(zznv zznvVar, byte[] bArr, int i) throws IOException {
        int length = bArr.length;
        int i2 = i + 32;
        if (this.zzp.zzj() < i2) {
            zzamf zzamfVar = this.zzp;
            byte[] copyOf = Arrays.copyOf(bArr, i2 + i);
            zzamfVar.zzb(copyOf, copyOf.length);
        } else {
            System.arraycopy(bArr, 0, this.zzp.zzi(), 0, 32);
        }
        ((zznp) zznvVar).zza(this.zzp.zzi(), 32, i, false);
        this.zzp.zzh(0);
        this.zzp.zzf(i2);
    }

    private static byte[] zzw(long j, String str, long j2) {
        zzakt.zza(j != -9223372036854775807L);
        int i = (int) (j / 3600000000L);
        long j3 = j - ((i * 3600) * 1000000);
        int i2 = (int) (j3 / 60000000);
        long j4 = j3 - ((i2 * 60) * 1000000);
        int i3 = (int) (j4 / 1000000);
        return zzamq.zzs(String.format(Locale.US, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (i3 * 1000000)) / j2))));
    }

    private final int zzx(zznv zznvVar, zzox zzoxVar, int i) throws IOException {
        int i2;
        int zzd2 = this.zzo.zzd();
        if (zzd2 > 0) {
            i2 = Math.min(i, zzd2);
            zzov.zzb(zzoxVar, this.zzo, i2);
        } else {
            i2 = zzov.zza(zzoxVar, zznvVar, i, false);
        }
        return i2;
    }

    private final long zzy(long j) throws zzaha {
        long j2 = this.zzw;
        if (j2 != -9223372036854775807L) {
            return zzamq.zzH(j, j2, 1000L);
        }
        throw zzaha.zzb("Can't scale timecode prior to timecodeScale being set.", null);
    }

    private static int[] zzz(int[] iArr, int i) {
        if (iArr == null) {
            return new int[i];
        }
        int length = iArr.length;
        return length >= i ? iArr : new int[Math.max(length + length, i)];
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final boolean zza(zznv zznvVar) throws IOException {
        return new zzqj().zza(zznvVar);
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final void zzb(zznx zznxVar) {
        this.zzaf = zznxVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x006f, code lost:
        if (r9 >= r5.zzh.size()) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0072, code lost:
        r0 = r5.zzh.valueAt(r9);
        java.util.Objects.requireNonNull(r0.zzV);
        r0 = r0.zzS;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0089, code lost:
        if (r0 == null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x008c, code lost:
        r0.zzd(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0091, code lost:
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0097, code lost:
        return -1;
     */
    @Override // com.google.android.gms.internal.ads.zznu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzc(com.google.android.gms.internal.ads.zznv r6, com.google.android.gms.internal.ads.zzoq r7) throws java.io.IOException {
        /*
            r5 = this;
            r0 = 0
            r8 = r0
            r0 = r5
            r1 = 0
            r0.zzK = r1
        L7:
            r0 = r5
            boolean r0 = r0.zzK
            if (r0 != 0) goto L99
            r0 = r8
            r9 = r0
            r0 = r5
            com.google.android.gms.internal.ads.zzqb r0 = r0.zzag
            r1 = r6
            boolean r0 = r0.zzc(r1)
            if (r0 == 0) goto L66
            r0 = r6
            long r0 = r0.zzn()
            r10 = r0
            r0 = r5
            boolean r0 = r0.zzD
            if (r0 == 0) goto L41
            r0 = r5
            r1 = r10
            r0.zzF = r1
            r0 = r7
            r1 = r5
            long r1 = r1.zzE
            r0.zza = r1
            r0 = r5
            r1 = 0
            r0.zzD = r1
            goto L64
        L41:
            r0 = r5
            boolean r0 = r0.zzA
            if (r0 == 0) goto L7
            r0 = r5
            long r0 = r0.zzF
            r10 = r0
            r0 = r10
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L7
            r0 = r7
            r1 = r10
            r0.zza = r1
            r0 = r5
            r1 = -1
            r0.zzF = r1
        L64:
            r0 = 1
            return r0
        L66:
            r0 = r9
            r1 = r5
            android.util.SparseArray<com.google.android.gms.internal.ads.zzqg> r1 = r1.zzh
            int r1 = r1.size()
            if (r0 >= r1) goto L97
            r0 = r5
            android.util.SparseArray<com.google.android.gms.internal.ads.zzqg> r0 = r0.zzh
            r1 = r9
            java.lang.Object r0 = r0.valueAt(r1)
            com.google.android.gms.internal.ads.zzqg r0 = (com.google.android.gms.internal.ads.zzqg) r0
            r7 = r0
            r0 = r7
            com.google.android.gms.internal.ads.zzqg.zze(r0)
            r0 = r7
            com.google.android.gms.internal.ads.zzqh r0 = r0.zzS
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L91
            r0 = r6
            r1 = r7
            r0.zzd(r1)
        L91:
            int r9 = r9 + 1
            goto L66
        L97:
            r0 = -1
            return r0
        L99:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqi.zzc(com.google.android.gms.internal.ads.zznv, com.google.android.gms.internal.ads.zzoq):int");
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final void zzd(long j, long j2) {
        this.zzG = -9223372036854775807L;
        this.zzL = 0;
        this.zzag.zzb();
        this.zzg.zza();
        zzu();
        for (int i = 0; i < this.zzh.size(); i++) {
            zzqh zzqhVar = this.zzh.valueAt(i).zzS;
            if (zzqhVar != null) {
                zzqhVar.zza();
            }
        }
    }

    public final void zzh(int i, long j, long j2) throws zzaha {
        zzakt.zze(this.zzaf);
        if (i == 160) {
            this.zzV = false;
        } else if (i == 174) {
            this.zzz = new zzqg(null);
        } else if (i == 187) {
            this.zzJ = false;
        } else if (i == 19899) {
            this.zzB = -1;
            this.zzC = -1L;
        } else if (i == 20533) {
            zzp(i);
            this.zzz.zzg = true;
        } else if (i == 21968) {
            zzp(i);
            this.zzz.zzw = true;
        } else if (i == 408125543) {
            long j3 = this.zzv;
            if (j3 != -1 && j3 != j) {
                throw zzaha.zzb("Multiple Segment elements not supported", null);
            }
            this.zzv = j;
            this.zzu = j2;
        } else if (i == 475249515) {
            this.zzH = new zzalo(32);
            this.zzI = new zzalo(32);
        } else if (i != 524531317 || this.zzA) {
        } else {
            if (this.zzi && this.zzE != -1) {
                this.zzD = true;
                return;
            }
            this.zzaf.zzD(new zzos(this.zzy, 0L));
            this.zzA = true;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void zzi(int i) throws zzaha {
        int i2;
        boolean z;
        zznn zznnVar;
        int i3;
        zzakt.zze(this.zzaf);
        if (i == 160) {
            if (this.zzL != 2) {
                return;
            }
            int i4 = 0;
            for (int i5 = 0; i5 < this.zzP; i5++) {
                i4 += this.zzQ[i5];
            }
            zzqg zzqgVar = this.zzh.get(this.zzR);
            Objects.requireNonNull(zzqgVar.zzV);
            int i6 = 0;
            int i7 = i4;
            while (i6 < this.zzP) {
                long j = this.zzM;
                long j2 = (zzqgVar.zze * i6) / 1000;
                int i8 = this.zzT;
                if (i6 == 0) {
                    i2 = i8;
                    if (!this.zzV) {
                        i2 = i8 | 1;
                    }
                    i6 = 0;
                } else {
                    i2 = i8;
                }
                int i9 = this.zzQ[i6];
                i7 -= i9;
                zzr(zzqgVar, j + j2, i2, i9, i7);
                i6++;
            }
            this.zzL = 0;
        } else if (i == 174) {
            zzqg zzqgVar2 = this.zzz;
            zzakt.zze(zzqgVar2);
            String str = zzqgVar2.zzb;
            if (str == null) {
                throw zzaha.zzb("CodecId is missing in TrackEntry element", null);
            }
            switch (str.hashCode()) {
                case -2095576542:
                    if (str.equals("V_MPEG4/ISO/AP")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -2095575984:
                    if (str.equals("V_MPEG4/ISO/SP")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1985379776:
                    if (str.equals("A_MS/ACM")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1784763192:
                    if (str.equals("A_TRUEHD")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1730367663:
                    if (str.equals("A_VORBIS")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1482641358:
                    if (str.equals("A_MPEG/L2")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1482641357:
                    if (str.equals("A_MPEG/L3")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1373388978:
                    if (str.equals("V_MS/VFW/FOURCC")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -933872740:
                    if (str.equals("S_DVBSUB")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -538363189:
                    if (str.equals("V_MPEG4/ISO/ASP")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -538363109:
                    if (str.equals("V_MPEG4/ISO/AVC")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -425012669:
                    if (str.equals("S_VOBSUB")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -356037306:
                    if (str.equals("A_DTS/LOSSLESS")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 62923557:
                    if (str.equals("A_AAC")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 62923603:
                    if (str.equals("A_AC3")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 62927045:
                    if (str.equals("A_DTS")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 82318131:
                    if (str.equals("V_AV1")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 82338133:
                    if (str.equals("V_VP8")) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                case 82338134:
                    if (str.equals("V_VP9")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 99146302:
                    if (str.equals("S_HDMV/PGS")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 444813526:
                    if (str.equals("V_THEORA")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 542569478:
                    if (str.equals("A_DTS/EXPRESS")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 635596514:
                    if (str.equals("A_PCM/FLOAT/IEEE")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 725948237:
                    if (str.equals("A_PCM/INT/BIG")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 725957860:
                    if (str.equals("A_PCM/INT/LIT")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 738597099:
                    if (str.equals("S_TEXT/ASS")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 855502857:
                    if (str.equals("V_MPEGH/ISO/HEVC")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1422270023:
                    if (str.equals("S_TEXT/UTF8")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1809237540:
                    if (str.equals("V_MPEG2")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1950749482:
                    if (str.equals("A_EAC3")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1950789798:
                    if (str.equals("A_FLAC")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1951062397:
                    if (str.equals("A_OPUS")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                default:
                    z = true;
                    break;
            }
            switch (z) {
                case false:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                    zzqgVar2.zzd(this.zzaf, zzqgVar2.zzc);
                    this.zzh.put(zzqgVar2.zzc, zzqgVar2);
                    break;
            }
            this.zzz = null;
        } else if (i == 19899) {
            int i10 = this.zzB;
            if (i10 != -1) {
                long j3 = this.zzC;
                if (j3 != -1) {
                    if (i10 != 475249515) {
                        return;
                    }
                    this.zzE = j3;
                    return;
                }
            }
            throw zzaha.zzb("Mandatory element SeekID or SeekPosition not found", null);
        } else if (i == 25152) {
            zzp(i);
            zzqg zzqgVar3 = this.zzz;
            if (!zzqgVar3.zzg) {
                return;
            }
            if (zzqgVar3.zzi == null) {
                throw zzaha.zzb("Encrypted Track found but ContentEncKeyID was not found", null);
            }
            zzqgVar3.zzk = new zzn(null, new zzm(zzadx.zza, null, "video/webm", this.zzz.zzi.zzb));
        } else if (i == 28032) {
            zzp(i);
            zzqg zzqgVar4 = this.zzz;
            if (zzqgVar4.zzg && zzqgVar4.zzh != null) {
                throw zzaha.zzb("Combining encryption and compression is not supported", null);
            }
        } else if (i == 357149030) {
            if (this.zzw == -9223372036854775807L) {
                this.zzw = 1000000L;
            }
            long j4 = this.zzx;
            if (j4 == -9223372036854775807L) {
                return;
            }
            this.zzy = zzy(j4);
        } else if (i == 374648427) {
            if (this.zzh.size() == 0) {
                throw zzaha.zzb("No valid tracks were found", null);
            }
            this.zzaf.zzC();
        } else if (i == 475249515) {
            if (!this.zzA) {
                zznx zznxVar = this.zzaf;
                zzalo zzaloVar = this.zzH;
                zzalo zzaloVar2 = this.zzI;
                if (this.zzv == -1 || this.zzy == -9223372036854775807L || zzaloVar == null || zzaloVar.zzc() == 0 || zzaloVar2 == null || zzaloVar2.zzc() != zzaloVar.zzc()) {
                    zznnVar = new zzos(this.zzy, 0L);
                } else {
                    int zzc2 = zzaloVar.zzc();
                    int[] iArr = new int[zzc2];
                    long[] jArr = new long[zzc2];
                    long[] jArr2 = new long[zzc2];
                    long[] jArr3 = new long[zzc2];
                    for (int i11 = 0; i11 < zzc2; i11++) {
                        jArr3[i11] = zzaloVar.zzb(i11);
                        jArr[i11] = zzaloVar2.zzb(i11) + this.zzv;
                    }
                    int i12 = 0;
                    while (true) {
                        int i13 = i12;
                        i3 = zzc2 - 1;
                        if (i13 >= i3) {
                            break;
                        }
                        int i14 = i13 + 1;
                        iArr[i13] = (int) (jArr[i14] - jArr[i13]);
                        jArr2[i13] = jArr3[i14] - jArr3[i13];
                        i12 = i14;
                    }
                    iArr[i3] = (int) ((this.zzv + this.zzu) - jArr[i3]);
                    long j5 = this.zzy - jArr3[i3];
                    jArr2[i3] = j5;
                    int[] iArr2 = iArr;
                    long[] jArr4 = jArr;
                    long[] jArr5 = jArr2;
                    long[] jArr6 = jArr3;
                    if (j5 <= 0) {
                        iArr2 = Arrays.copyOf(iArr, i3);
                        jArr4 = Arrays.copyOf(jArr, i3);
                        jArr5 = Arrays.copyOf(jArr2, i3);
                        jArr6 = Arrays.copyOf(jArr3, i3);
                    }
                    zznnVar = new zznn(iArr2, jArr4, jArr5, jArr6);
                }
                zznxVar.zzD(zznnVar);
                this.zzA = true;
            }
            this.zzH = null;
            this.zzI = null;
        }
    }

    public final void zzj(int i, long j) throws zzaha {
        if (i == 20529) {
            if (j != 0) {
                throw zzaha.zzb(C22128a.m8677P1(55, "ContentEncodingOrder ", j, " not supported"), null);
            }
        } else if (i == 20530) {
            if (j != 1) {
                throw zzaha.zzb(C22128a.m8677P1(55, "ContentEncodingScope ", j, " not supported"), null);
            }
        } else {
            boolean z = false;
            switch (i) {
                case 131:
                    zzp(i);
                    this.zzz.zzd = (int) j;
                    return;
                case 136:
                    zzp(i);
                    zzqg zzqgVar = this.zzz;
                    boolean z2 = false;
                    if (j == 1) {
                        z2 = true;
                    }
                    zzqgVar.zzU = z2;
                    return;
                case Constants.ERR_PUBLISH_STREAM_NOT_FOUND /* 155 */:
                    this.zzN = zzy(j);
                    return;
                case 159:
                    zzp(i);
                    this.zzz.zzN = (int) j;
                    return;
                case 176:
                    zzp(i);
                    this.zzz.zzl = (int) j;
                    return;
                case 179:
                    zzq(i);
                    this.zzH.zza(zzy(j));
                    return;
                case 186:
                    zzp(i);
                    this.zzz.zzm = (int) j;
                    return;
                case 215:
                    zzp(i);
                    this.zzz.zzc = (int) j;
                    return;
                case 231:
                    this.zzG = zzy(j);
                    return;
                case 238:
                    this.zzU = (int) j;
                    return;
                case 241:
                    if (this.zzJ) {
                        return;
                    }
                    zzq(i);
                    this.zzI.zza(j);
                    this.zzJ = true;
                    return;
                case 251:
                    this.zzV = true;
                    return;
                case 16871:
                    zzp(i);
                    this.zzz.zzX = (int) j;
                    return;
                case 16980:
                    if (j != 3) {
                        throw zzaha.zzb(C22128a.m8677P1(50, "ContentCompAlgo ", j, " not supported"), null);
                    }
                    return;
                case 17029:
                    if (j >= 1 && j <= 2) {
                        return;
                    }
                    throw zzaha.zzb(C22128a.m8677P1(53, "DocTypeReadVersion ", j, " not supported"), null);
                case 17143:
                    if (j != 1) {
                        throw zzaha.zzb(C22128a.m8677P1(50, "EBMLReadVersion ", j, " not supported"), null);
                    }
                    return;
                case 18401:
                    if (j != 5) {
                        throw zzaha.zzb(C22128a.m8677P1(49, "ContentEncAlgo ", j, " not supported"), null);
                    }
                    return;
                case 18408:
                    if (j != 1) {
                        throw zzaha.zzb(C22128a.m8677P1(56, "AESSettingsCipherMode ", j, " not supported"), null);
                    }
                    return;
                case 21420:
                    this.zzC = j + this.zzv;
                    return;
                case 21432:
                    zzp(i);
                    int i2 = (int) j;
                    if (i2 == 0) {
                        this.zzz.zzv = 0;
                        return;
                    } else if (i2 == 1) {
                        this.zzz.zzv = 2;
                        return;
                    } else if (i2 == 3) {
                        this.zzz.zzv = 1;
                        return;
                    } else if (i2 != 15) {
                        return;
                    } else {
                        this.zzz.zzv = 3;
                        return;
                    }
                case 21680:
                    zzp(i);
                    this.zzz.zzn = (int) j;
                    return;
                case 21682:
                    zzp(i);
                    this.zzz.zzp = (int) j;
                    return;
                case 21690:
                    zzp(i);
                    this.zzz.zzo = (int) j;
                    return;
                case 21930:
                    zzp(i);
                    zzqg zzqgVar2 = this.zzz;
                    if (j == 1) {
                        z = true;
                    }
                    zzqgVar2.zzT = z;
                    return;
                case 21998:
                    zzp(i);
                    this.zzz.zzf = (int) j;
                    return;
                case 22186:
                    zzp(i);
                    this.zzz.zzQ = j;
                    return;
                case 22203:
                    zzp(i);
                    this.zzz.zzR = j;
                    return;
                case 25188:
                    zzp(i);
                    this.zzz.zzO = (int) j;
                    return;
                case 30321:
                    zzp(i);
                    int i3 = (int) j;
                    if (i3 == 0) {
                        this.zzz.zzq = 0;
                        return;
                    } else if (i3 == 1) {
                        this.zzz.zzq = 1;
                        return;
                    } else if (i3 == 2) {
                        this.zzz.zzq = 2;
                        return;
                    } else if (i3 != 3) {
                        return;
                    } else {
                        this.zzz.zzq = 3;
                        return;
                    }
                case 2352003:
                    zzp(i);
                    this.zzz.zze = (int) j;
                    return;
                case 2807729:
                    this.zzw = j;
                    return;
                default:
                    switch (i) {
                        case 21945:
                            zzp(i);
                            int i4 = (int) j;
                            if (i4 == 1) {
                                this.zzz.zzz = 2;
                                return;
                            } else if (i4 != 2) {
                                return;
                            } else {
                                this.zzz.zzz = 1;
                                return;
                            }
                        case 21946:
                            zzp(i);
                            int zzb2 = zzj.zzb((int) j);
                            if (zzb2 == -1) {
                                return;
                            }
                            this.zzz.zzy = zzb2;
                            return;
                        case 21947:
                            zzp(i);
                            this.zzz.zzw = true;
                            int zza2 = zzj.zza((int) j);
                            if (zza2 == -1) {
                                return;
                            }
                            this.zzz.zzx = zza2;
                            return;
                        case 21948:
                            zzp(i);
                            this.zzz.zzA = (int) j;
                            return;
                        case 21949:
                            zzp(i);
                            this.zzz.zzB = (int) j;
                            return;
                        default:
                            return;
                    }
            }
        }
    }

    public final void zzk(int i, double d) throws zzaha {
        if (i == 181) {
            zzp(i);
            this.zzz.zzP = (int) d;
        } else if (i == 17545) {
            this.zzx = (long) d;
        } else {
            switch (i) {
                case 21969:
                    zzp(i);
                    this.zzz.zzC = (float) d;
                    return;
                case 21970:
                    zzp(i);
                    this.zzz.zzD = (float) d;
                    return;
                case 21971:
                    zzp(i);
                    this.zzz.zzE = (float) d;
                    return;
                case 21972:
                    zzp(i);
                    this.zzz.zzF = (float) d;
                    return;
                case 21973:
                    zzp(i);
                    this.zzz.zzG = (float) d;
                    return;
                case 21974:
                    zzp(i);
                    this.zzz.zzH = (float) d;
                    return;
                case 21975:
                    zzp(i);
                    this.zzz.zzI = (float) d;
                    return;
                case 21976:
                    zzp(i);
                    this.zzz.zzJ = (float) d;
                    return;
                case 21977:
                    zzp(i);
                    this.zzz.zzK = (float) d;
                    return;
                case 21978:
                    zzp(i);
                    this.zzz.zzL = (float) d;
                    return;
                default:
                    switch (i) {
                        case 30323:
                            zzp(i);
                            this.zzz.zzr = (float) d;
                            return;
                        case 30324:
                            zzp(i);
                            this.zzz.zzs = (float) d;
                            return;
                        case 30325:
                            zzp(i);
                            this.zzz.zzt = (float) d;
                            return;
                        default:
                            return;
                    }
            }
        }
    }

    public final void zzl(int i, String str) throws zzaha {
        if (i == 134) {
            zzp(i);
            this.zzz.zzb = str;
        } else if (i == 17026) {
            if ("webm".equals(str) || "matroska".equals(str)) {
                return;
            }
            StringBuilder sb = new StringBuilder(str.length() + 22);
            sb.append("DocType ");
            sb.append(str);
            sb.append(" not supported");
            throw zzaha.zzb(sb.toString(), null);
        } else if (i == 21358) {
            zzp(i);
            this.zzz.zza = str;
        } else if (i != 2274716) {
        } else {
            zzp(i);
            this.zzz.zzY = str;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x048f, code lost:
        throw com.google.android.gms.internal.ads.zzaha.zzb("EBML lacing sample size out of range.", null);
     */
    /* JADX WARN: Type inference failed for: r0v137, types: [long] */
    /* JADX WARN: Type inference failed for: r0v143, types: [long] */
    /* JADX WARN: Type inference failed for: r0v147, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzm(int r9, int r10, com.google.android.gms.internal.ads.zznv r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1464
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqi.zzm(int, int, com.google.android.gms.internal.ads.zznv):void");
    }
}
