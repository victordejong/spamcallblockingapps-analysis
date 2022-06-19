package com.google.android.gms.internal.ads;

import android.util.Log;
import android.util.SparseArray;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import me.zhanghai.android.materialprogressbar.C3681R;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaay.class */
public final class zzaay implements zzwp {
    public static final zzww zza = zzaas.zza;
    private static final byte[] zzb = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    private static final byte[] zzc = zzfn.zzW("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");
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
    private zzeq zzH;
    private zzeq zzI;
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
    private zzws zzaf;
    private final zzaaq zzag;
    private final zzaba zzg;
    private final SparseArray<zzaaw> zzh;
    private final boolean zzi;
    private final zzfd zzj;
    private final zzfd zzk;
    private final zzfd zzl;
    private final zzfd zzm;
    private final zzfd zzn;
    private final zzfd zzo;
    private final zzfd zzp;
    private final zzfd zzq;
    private final zzfd zzr;
    private final zzfd zzs;
    private ByteBuffer zzt;
    private long zzu;
    private long zzv;
    private long zzw;
    private long zzx;
    private long zzy;
    private zzaaw zzz;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("htc_video_rotA-000", 0);
        hashMap.put("htc_video_rotA-090", 90);
        hashMap.put("htc_video_rotA-180", 180);
        hashMap.put("htc_video_rotA-270", 270);
        zzf = Collections.unmodifiableMap(hashMap);
    }

    public zzaay() {
        this(0);
    }

    public zzaay(int i) {
        zzaaq zzaaqVar = new zzaaq();
        this.zzv = -1L;
        this.zzw = -9223372036854775807L;
        this.zzx = -9223372036854775807L;
        this.zzy = -9223372036854775807L;
        this.zzE = -1L;
        this.zzF = -1L;
        this.zzG = -9223372036854775807L;
        this.zzag = zzaaqVar;
        zzaaqVar.zza(new zzaau(this, null));
        this.zzi = true;
        this.zzg = new zzaba();
        this.zzh = new SparseArray<>();
        this.zzl = new zzfd(4);
        this.zzm = new zzfd(ByteBuffer.allocate(4).putInt(-1).array());
        this.zzn = new zzfd(4);
        this.zzj = new zzfd(zzeu.zza);
        this.zzk = new zzfd(4);
        this.zzo = new zzfd();
        this.zzp = new zzfd();
        this.zzq = new zzfd(8);
        this.zzr = new zzfd();
        this.zzs = new zzfd();
        this.zzQ = new int[1];
    }

    public static final int zzn(int i) {
        switch (i) {
            case 131:
            case 136:
            case 155:
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
            case 160:
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

    @RequiresNonNull({"#2.output"})
    private final int zzp(zzwq zzwqVar, zzaaw zzaawVar, int i) throws IOException {
        int i2;
        int i3;
        if ("S_TEXT/UTF8".equals(zzaawVar.zzb)) {
            zzx(zzwqVar, zzb, i);
            int i4 = this.zzX;
            zzw();
            return i4;
        } else if ("S_TEXT/ASS".equals(zzaawVar.zzb)) {
            zzx(zzwqVar, zzd, i);
            int i5 = this.zzX;
            zzw();
            return i5;
        } else {
            zzxt zzxtVar = zzaawVar.zzV;
            boolean z = true;
            if (!this.zzZ) {
                if (zzaawVar.zzg) {
                    this.zzT &= -1073741825;
                    int i6 = 128;
                    if (!this.zzaa) {
                        ((zzwk) zzwqVar).zzn(this.zzl.zzH(), 0, 1, false);
                        this.zzW++;
                        if ((this.zzl.zzH()[0] & 128) == 128) {
                            throw zzbj.zza("Extension bit is set in signal byte", null);
                        }
                        this.zzad = this.zzl.zzH()[0];
                        this.zzaa = true;
                    }
                    byte b = this.zzad;
                    if ((b & 1) == 1) {
                        int i7 = b & 2;
                        this.zzT |= 1073741824;
                        if (!this.zzae) {
                            ((zzwk) zzwqVar).zzn(this.zzq.zzH(), 0, 8, false);
                            this.zzW += 8;
                            this.zzae = true;
                            byte[] zzH = this.zzl.zzH();
                            if (i7 != 2) {
                                i6 = 0;
                            }
                            zzH[0] = (byte) (i6 | 8);
                            this.zzl.zzF(0);
                            zzxtVar.zzr(this.zzl, 1, 1);
                            this.zzX++;
                            this.zzq.zzF(0);
                            zzxtVar.zzr(this.zzq, 8, 1);
                            this.zzX += 8;
                        }
                        if (i7 == 2) {
                            if (!this.zzab) {
                                ((zzwk) zzwqVar).zzn(this.zzl.zzH(), 0, 1, false);
                                this.zzW++;
                                this.zzl.zzF(0);
                                this.zzac = this.zzl.zzk();
                                this.zzab = true;
                            }
                            int i8 = this.zzac * 4;
                            this.zzl.zzC(i8);
                            ((zzwk) zzwqVar).zzn(this.zzl.zzH(), 0, i8, false);
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
                                int zzn = this.zzl.zzn();
                                if (i11 % 2 == 0) {
                                    this.zzt.putShort((short) (zzn - i2));
                                } else {
                                    this.zzt.putInt(zzn - i2);
                                }
                                i11++;
                                i12 = zzn;
                            }
                            int i13 = (i - this.zzW) - i2;
                            if ((i3 & 1) == 1) {
                                this.zzt.putInt(i13);
                            } else {
                                this.zzt.putShort((short) i13);
                                this.zzt.putInt(0);
                            }
                            this.zzr.zzD(this.zzt.array(), i10);
                            zzxtVar.zzr(this.zzr, i10, 1);
                            this.zzX += i10;
                        }
                    }
                } else {
                    byte[] bArr = zzaawVar.zzh;
                    if (bArr != null) {
                        this.zzo.zzD(bArr, bArr.length);
                    }
                }
                if (zzaawVar.zzf > 0) {
                    this.zzT |= 268435456;
                    this.zzs.zzC(0);
                    this.zzl.zzC(4);
                    this.zzl.zzH()[0] = (byte) ((i >> 24) & 255);
                    this.zzl.zzH()[1] = (byte) ((i >> 16) & 255);
                    this.zzl.zzH()[2] = (byte) ((i >> 8) & 255);
                    this.zzl.zzH()[3] = (byte) (i & 255);
                    zzxtVar.zzr(this.zzl, 4, 2);
                    this.zzX += 4;
                }
                this.zzZ = true;
            }
            int zzd2 = this.zzo.zzd() + i;
            if (!"V_MPEG4/ISO/AVC".equals(zzaawVar.zzb) && !"V_MPEGH/ISO/HEVC".equals(zzaawVar.zzb)) {
                if (zzaawVar.zzS != null) {
                    if (this.zzo.zzd() != 0) {
                        z = false;
                    }
                    zzdy.zzf(z);
                    zzaawVar.zzS.zzd(zzwqVar);
                }
                while (true) {
                    int i14 = this.zzW;
                    if (i14 >= zzd2) {
                        break;
                    }
                    int zzq = zzq(zzwqVar, zzxtVar, zzd2 - i14);
                    this.zzW += zzq;
                    this.zzX += zzq;
                }
            } else {
                byte[] zzH2 = this.zzk.zzH();
                zzH2[0] = (byte) 0;
                zzH2[1] = (byte) 0;
                zzH2[2] = (byte) 0;
                int i15 = zzaawVar.zzW;
                int i16 = 4 - i15;
                while (this.zzW < zzd2) {
                    int i17 = this.zzY;
                    if (i17 == 0) {
                        int min = Math.min(i15, this.zzo.zza());
                        ((zzwk) zzwqVar).zzn(zzH2, i16 + min, i15 - min, false);
                        if (min > 0) {
                            this.zzo.zzB(zzH2, i16, min);
                        }
                        this.zzW += i15;
                        this.zzk.zzF(0);
                        this.zzY = this.zzk.zzn();
                        this.zzj.zzF(0);
                        zzxr.zzb(zzxtVar, this.zzj, 4);
                        this.zzX += 4;
                    } else {
                        int zzq2 = zzq(zzwqVar, zzxtVar, i17);
                        this.zzW += zzq2;
                        this.zzX += zzq2;
                        this.zzY -= zzq2;
                    }
                }
            }
            if ("A_VORBIS".equals(zzaawVar.zzb)) {
                this.zzm.zzF(0);
                zzxr.zzb(zzxtVar, this.zzm, 4);
                this.zzX += 4;
            }
            int i18 = this.zzX;
            zzw();
            return i18;
        }
    }

    private final int zzq(zzwq zzwqVar, zzxt zzxtVar, int i) throws IOException {
        int i2;
        int zza2 = this.zzo.zza();
        if (zza2 > 0) {
            i2 = Math.min(i, zza2);
            zzxr.zzb(zzxtVar, this.zzo, i2);
        } else {
            i2 = zzxr.zza(zzxtVar, zzwqVar, i, false);
        }
        return i2;
    }

    private final long zzr(long j) throws zzbj {
        long j2 = this.zzw;
        if (j2 != -9223372036854775807L) {
            return zzfn.zzt(j, j2, 1000L);
        }
        throw zzbj.zza("Can't scale timecode prior to timecodeScale being set.", null);
    }

    @EnsuresNonNull({"cueTimesUs", "cueClusterPositions"})
    private final void zzs(int i) throws zzbj {
        if (this.zzH == null || this.zzI == null) {
            StringBuilder sb = new StringBuilder(37);
            sb.append("Element ");
            sb.append(i);
            sb.append(" must be in a Cues");
            throw zzbj.zza(sb.toString(), null);
        }
    }

    @EnsuresNonNull({"currentTrack"})
    private final void zzt(int i) throws zzbj {
        if (this.zzz != null) {
            return;
        }
        StringBuilder sb = new StringBuilder(43);
        sb.append("Element ");
        sb.append(i);
        sb.append(" must be in a TrackEntry");
        throw zzbj.zza(sb.toString(), null);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x012d A[EDGE_INSN: B:53:0x012d->B:41:0x012d ?: BREAK  , SYNTHETIC] */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"#1.output"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzu(com.google.android.gms.internal.ads.zzaaw r9, long r10, int r12, int r13, int r14) {
        /*
            Method dump skipped, instructions count: 431
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaay.zzu(com.google.android.gms.internal.ads.zzaaw, long, int, int, int):void");
    }

    private final void zzv(zzwq zzwqVar, int i) throws IOException {
        if (this.zzl.zzd() >= i) {
            return;
        }
        if (this.zzl.zzb() < i) {
            zzfd zzfdVar = this.zzl;
            int zzb2 = zzfdVar.zzb();
            zzfdVar.zzz(Math.max(zzb2 + zzb2, i));
        }
        ((zzwk) zzwqVar).zzn(this.zzl.zzH(), this.zzl.zzd(), i - this.zzl.zzd(), false);
        this.zzl.zzE(i);
    }

    private final void zzw() {
        this.zzW = 0;
        this.zzX = 0;
        this.zzY = 0;
        this.zzZ = false;
        this.zzaa = false;
        this.zzab = false;
        this.zzac = 0;
        this.zzad = (byte) 0;
        this.zzae = false;
        this.zzo.zzC(0);
    }

    private final void zzx(zzwq zzwqVar, byte[] bArr, int i) throws IOException {
        int length = bArr.length;
        int i2 = i + 32;
        if (this.zzp.zzb() < i2) {
            zzfd zzfdVar = this.zzp;
            byte[] copyOf = Arrays.copyOf(bArr, i2 + i);
            zzfdVar.zzD(copyOf, copyOf.length);
        } else {
            System.arraycopy(bArr, 0, this.zzp.zzH(), 0, 32);
        }
        ((zzwk) zzwqVar).zzn(this.zzp.zzH(), 32, i, false);
        this.zzp.zzF(0);
        this.zzp.zzE(i2);
    }

    private static byte[] zzy(long j, String str, long j2) {
        zzdy.zzd(j != -9223372036854775807L);
        int i = (int) (j / 3600000000L);
        long j3 = j - ((i * 3600) * 1000000);
        int i2 = (int) (j3 / 60000000);
        long j4 = j3 - ((i2 * 60) * 1000000);
        int i3 = (int) (j4 / 1000000);
        return zzfn.zzW(String.format(Locale.US, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (i3 * 1000000)) / j2))));
    }

    private static int[] zzz(int[] iArr, int i) {
        if (iArr == null) {
            return new int[i];
        }
        int length = iArr.length;
        return length >= i ? iArr : new int[Math.max(length + length, i)];
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
        r0.zza(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0091, code lost:
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0097, code lost:
        return -1;
     */
    @Override // com.google.android.gms.internal.ads.zzwp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(com.google.android.gms.internal.ads.zzwq r6, com.google.android.gms.internal.ads.zzxm r7) throws java.io.IOException {
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
            com.google.android.gms.internal.ads.zzaaq r0 = r0.zzag
            r1 = r6
            boolean r0 = r0.zzc(r1)
            if (r0 == 0) goto L66
            r0 = r6
            long r0 = r0.zze()
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
            android.util.SparseArray<com.google.android.gms.internal.ads.zzaaw> r1 = r1.zzh
            int r1 = r1.size()
            if (r0 >= r1) goto L97
            r0 = r5
            android.util.SparseArray<com.google.android.gms.internal.ads.zzaaw> r0 = r0.zzh
            r1 = r9
            java.lang.Object r0 = r0.valueAt(r1)
            com.google.android.gms.internal.ads.zzaaw r0 = (com.google.android.gms.internal.ads.zzaaw) r0
            r6 = r0
            r0 = r6
            com.google.android.gms.internal.ads.zzaaw.zzd(r0)
            r0 = r6
            com.google.android.gms.internal.ads.zzaax r0 = r0.zzS
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L91
            r0 = r7
            r1 = r6
            r0.zza(r1)
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaay.zza(com.google.android.gms.internal.ads.zzwq, com.google.android.gms.internal.ads.zzxm):int");
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final void zzb(zzws zzwsVar) {
        this.zzaf = zzwsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final void zzc(long j, long j2) {
        this.zzG = -9223372036854775807L;
        this.zzL = 0;
        this.zzag.zzb();
        this.zzg.zze();
        zzw();
        for (int i = 0; i < this.zzh.size(); i++) {
            zzaax zzaaxVar = this.zzh.valueAt(i).zzS;
            if (zzaaxVar != null) {
                zzaaxVar.zzb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final boolean zzd(zzwq zzwqVar) throws IOException {
        return new zzaaz().zza(zzwqVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x048d, code lost:
        throw com.google.android.gms.internal.ads.zzbj.zza("EBML lacing sample size out of range.", null);
     */
    /* JADX WARN: Type inference failed for: r0v137, types: [long] */
    /* JADX WARN: Type inference failed for: r0v143, types: [long] */
    /* JADX WARN: Type inference failed for: r0v147, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzg(int r9, int r10, com.google.android.gms.internal.ads.zzwq r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1459
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaay.zzg(int, int, com.google.android.gms.internal.ads.zzwq):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void zzh(int i) throws zzbj {
        int i2;
        boolean z;
        zzwi zzwiVar;
        int i3;
        zzdy.zzb(this.zzaf);
        if (i == 160) {
            if (this.zzL != 2) {
                return;
            }
            int i4 = 0;
            for (int i5 = 0; i5 < this.zzP; i5++) {
                i4 += this.zzQ[i5];
            }
            zzaaw zzaawVar = this.zzh.get(this.zzR);
            Objects.requireNonNull(zzaawVar.zzV);
            int i6 = 0;
            int i7 = i4;
            while (i6 < this.zzP) {
                long j = this.zzM;
                long j2 = (zzaawVar.zze * i6) / 1000;
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
                zzu(zzaawVar, j + j2, i2, i9, i7);
                i6++;
            }
            this.zzL = 0;
        } else if (i == 174) {
            zzaaw zzaawVar2 = this.zzz;
            zzdy.zzb(zzaawVar2);
            String str = zzaawVar2.zzb;
            if (str == null) {
                throw zzbj.zza("CodecId is missing in TrackEntry element", null);
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
                case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                    zzaawVar2.zze(this.zzaf, zzaawVar2.zzc);
                    this.zzh.put(zzaawVar2.zzc, zzaawVar2);
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
            throw zzbj.zza("Mandatory element SeekID or SeekPosition not found", null);
        } else if (i == 25152) {
            zzt(i);
            zzaaw zzaawVar3 = this.zzz;
            if (!zzaawVar3.zzg) {
                return;
            }
            if (zzaawVar3.zzi == null) {
                throw zzbj.zza("Encrypted Track found but ContentEncKeyID was not found", null);
            }
            zzaawVar3.zzk = new zzs(null, new zzr(zzk.zza, null, "video/webm", this.zzz.zzi.zzb));
        } else if (i == 28032) {
            zzt(i);
            zzaaw zzaawVar4 = this.zzz;
            if (zzaawVar4.zzg && zzaawVar4.zzh != null) {
                throw zzbj.zza("Combining encryption and compression is not supported", null);
            }
        } else if (i == 357149030) {
            if (this.zzw == -9223372036854775807L) {
                this.zzw = 1000000L;
            }
            long j4 = this.zzx;
            if (j4 == -9223372036854775807L) {
                return;
            }
            this.zzy = zzr(j4);
        } else if (i == 374648427) {
            if (this.zzh.size() == 0) {
                throw zzbj.zza("No valid tracks were found", null);
            }
            this.zzaf.zzB();
        } else if (i == 475249515) {
            if (!this.zzA) {
                zzws zzwsVar = this.zzaf;
                zzeq zzeqVar = this.zzH;
                zzeq zzeqVar2 = this.zzI;
                if (this.zzv == -1 || this.zzy == -9223372036854775807L || zzeqVar == null || zzeqVar.zza() == 0 || zzeqVar2 == null || zzeqVar2.zza() != zzeqVar.zza()) {
                    zzwiVar = new zzxo(this.zzy, 0L);
                } else {
                    int zza2 = zzeqVar.zza();
                    int[] iArr = new int[zza2];
                    long[] jArr = new long[zza2];
                    long[] jArr2 = new long[zza2];
                    long[] jArr3 = new long[zza2];
                    for (int i11 = 0; i11 < zza2; i11++) {
                        jArr3[i11] = zzeqVar.zzb(i11);
                        jArr[i11] = zzeqVar2.zzb(i11) + this.zzv;
                    }
                    int i12 = 0;
                    while (true) {
                        int i13 = i12;
                        i3 = zza2 - 1;
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
                        StringBuilder sb = new StringBuilder(72);
                        sb.append("Discarding last cue point with unexpected duration: ");
                        sb.append(j5);
                        Log.w("MatroskaExtractor", sb.toString());
                        iArr2 = Arrays.copyOf(iArr, i3);
                        jArr4 = Arrays.copyOf(jArr, i3);
                        jArr5 = Arrays.copyOf(jArr2, i3);
                        jArr6 = Arrays.copyOf(jArr3, i3);
                    }
                    zzwiVar = new zzwi(iArr2, jArr4, jArr5, jArr6);
                }
                zzwsVar.zzL(zzwiVar);
                this.zzA = true;
            }
            this.zzH = null;
            this.zzI = null;
        }
    }

    public final void zzi(int i, double d) throws zzbj {
        if (i == 181) {
            zzt(i);
            this.zzz.zzP = (int) d;
        } else if (i == 17545) {
            this.zzx = (long) d;
        } else {
            switch (i) {
                case 21969:
                    zzt(i);
                    this.zzz.zzC = (float) d;
                    return;
                case 21970:
                    zzt(i);
                    this.zzz.zzD = (float) d;
                    return;
                case 21971:
                    zzt(i);
                    this.zzz.zzE = (float) d;
                    return;
                case 21972:
                    zzt(i);
                    this.zzz.zzF = (float) d;
                    return;
                case 21973:
                    zzt(i);
                    this.zzz.zzG = (float) d;
                    return;
                case 21974:
                    zzt(i);
                    this.zzz.zzH = (float) d;
                    return;
                case 21975:
                    zzt(i);
                    this.zzz.zzI = (float) d;
                    return;
                case 21976:
                    zzt(i);
                    this.zzz.zzJ = (float) d;
                    return;
                case 21977:
                    zzt(i);
                    this.zzz.zzK = (float) d;
                    return;
                case 21978:
                    zzt(i);
                    this.zzz.zzL = (float) d;
                    return;
                default:
                    switch (i) {
                        case 30323:
                            zzt(i);
                            this.zzz.zzr = (float) d;
                            return;
                        case 30324:
                            zzt(i);
                            this.zzz.zzs = (float) d;
                            return;
                        case 30325:
                            zzt(i);
                            this.zzz.zzt = (float) d;
                            return;
                        default:
                            return;
                    }
            }
        }
    }

    public final void zzj(int i, long j) throws zzbj {
        if (i == 20529) {
            if (j == 0) {
                return;
            }
            StringBuilder sb = new StringBuilder(55);
            sb.append("ContentEncodingOrder ");
            sb.append(j);
            sb.append(" not supported");
            throw zzbj.zza(sb.toString(), null);
        } else if (i == 20530) {
            if (j == 1) {
                return;
            }
            StringBuilder sb2 = new StringBuilder(55);
            sb2.append("ContentEncodingScope ");
            sb2.append(j);
            sb2.append(" not supported");
            throw zzbj.zza(sb2.toString(), null);
        } else {
            boolean z = false;
            switch (i) {
                case 131:
                    zzt(i);
                    this.zzz.zzd = (int) j;
                    return;
                case 136:
                    zzt(i);
                    zzaaw zzaawVar = this.zzz;
                    boolean z2 = false;
                    if (j == 1) {
                        z2 = true;
                    }
                    zzaawVar.zzU = z2;
                    return;
                case 155:
                    this.zzN = zzr(j);
                    return;
                case 159:
                    zzt(i);
                    this.zzz.zzN = (int) j;
                    return;
                case 176:
                    zzt(i);
                    this.zzz.zzl = (int) j;
                    return;
                case 179:
                    zzs(i);
                    this.zzH.zzc(zzr(j));
                    return;
                case 186:
                    zzt(i);
                    this.zzz.zzm = (int) j;
                    return;
                case 215:
                    zzt(i);
                    this.zzz.zzc = (int) j;
                    return;
                case 231:
                    this.zzG = zzr(j);
                    return;
                case 238:
                    this.zzU = (int) j;
                    return;
                case 241:
                    if (this.zzJ) {
                        return;
                    }
                    zzs(i);
                    this.zzI.zzc(j);
                    this.zzJ = true;
                    return;
                case 251:
                    this.zzV = true;
                    return;
                case 16871:
                    zzt(i);
                    this.zzz.zzX = (int) j;
                    return;
                case 16980:
                    if (j == 3) {
                        return;
                    }
                    StringBuilder sb3 = new StringBuilder(50);
                    sb3.append("ContentCompAlgo ");
                    sb3.append(j);
                    sb3.append(" not supported");
                    throw zzbj.zza(sb3.toString(), null);
                case 17029:
                    if (j >= 1 && j <= 2) {
                        return;
                    }
                    StringBuilder sb4 = new StringBuilder(53);
                    sb4.append("DocTypeReadVersion ");
                    sb4.append(j);
                    sb4.append(" not supported");
                    throw zzbj.zza(sb4.toString(), null);
                case 17143:
                    if (j == 1) {
                        return;
                    }
                    StringBuilder sb5 = new StringBuilder(50);
                    sb5.append("EBMLReadVersion ");
                    sb5.append(j);
                    sb5.append(" not supported");
                    throw zzbj.zza(sb5.toString(), null);
                case 18401:
                    if (j == 5) {
                        return;
                    }
                    StringBuilder sb6 = new StringBuilder(49);
                    sb6.append("ContentEncAlgo ");
                    sb6.append(j);
                    sb6.append(" not supported");
                    throw zzbj.zza(sb6.toString(), null);
                case 18408:
                    if (j == 1) {
                        return;
                    }
                    StringBuilder sb7 = new StringBuilder(56);
                    sb7.append("AESSettingsCipherMode ");
                    sb7.append(j);
                    sb7.append(" not supported");
                    throw zzbj.zza(sb7.toString(), null);
                case 21420:
                    this.zzC = j + this.zzv;
                    return;
                case 21432:
                    zzt(i);
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
                    zzt(i);
                    this.zzz.zzn = (int) j;
                    return;
                case 21682:
                    zzt(i);
                    this.zzz.zzp = (int) j;
                    return;
                case 21690:
                    zzt(i);
                    this.zzz.zzo = (int) j;
                    return;
                case 21930:
                    zzt(i);
                    zzaaw zzaawVar2 = this.zzz;
                    if (j == 1) {
                        z = true;
                    }
                    zzaawVar2.zzT = z;
                    return;
                case 21998:
                    zzt(i);
                    this.zzz.zzf = (int) j;
                    return;
                case 22186:
                    zzt(i);
                    this.zzz.zzQ = j;
                    return;
                case 22203:
                    zzt(i);
                    this.zzz.zzR = j;
                    return;
                case 25188:
                    zzt(i);
                    this.zzz.zzO = (int) j;
                    return;
                case 30321:
                    zzt(i);
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
                    zzt(i);
                    this.zzz.zze = (int) j;
                    return;
                case 2807729:
                    this.zzw = j;
                    return;
                default:
                    switch (i) {
                        case 21945:
                            zzt(i);
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
                            zzt(i);
                            int zzb2 = zzm.zzb((int) j);
                            if (zzb2 == -1) {
                                return;
                            }
                            this.zzz.zzy = zzb2;
                            return;
                        case 21947:
                            zzt(i);
                            this.zzz.zzw = true;
                            int zza2 = zzm.zza((int) j);
                            if (zza2 == -1) {
                                return;
                            }
                            this.zzz.zzx = zza2;
                            return;
                        case 21948:
                            zzt(i);
                            this.zzz.zzA = (int) j;
                            return;
                        case 21949:
                            zzt(i);
                            this.zzz.zzB = (int) j;
                            return;
                        default:
                            return;
                    }
            }
        }
    }

    public final void zzk(int i, long j, long j2) throws zzbj {
        zzdy.zzb(this.zzaf);
        if (i == 160) {
            this.zzV = false;
        } else if (i == 174) {
            this.zzz = new zzaaw(null);
        } else if (i == 187) {
            this.zzJ = false;
        } else if (i == 19899) {
            this.zzB = -1;
            this.zzC = -1L;
        } else if (i == 20533) {
            zzt(i);
            this.zzz.zzg = true;
        } else if (i == 21968) {
            zzt(i);
            this.zzz.zzw = true;
        } else if (i == 408125543) {
            long j3 = this.zzv;
            if (j3 != -1 && j3 != j) {
                throw zzbj.zza("Multiple Segment elements not supported", null);
            }
            this.zzv = j;
            this.zzu = j2;
        } else if (i == 475249515) {
            this.zzH = new zzeq(32);
            this.zzI = new zzeq(32);
        } else if (i != 524531317 || this.zzA) {
        } else {
            if (this.zzi && this.zzE != -1) {
                this.zzD = true;
                return;
            }
            this.zzaf.zzL(new zzxo(this.zzy, 0L));
            this.zzA = true;
        }
    }

    public final void zzl(int i, String str) throws zzbj {
        if (i == 134) {
            zzt(i);
            this.zzz.zzb = str;
        } else if (i == 17026) {
            if ("webm".equals(str) || "matroska".equals(str)) {
                return;
            }
            StringBuilder sb = new StringBuilder(str.length() + 22);
            sb.append("DocType ");
            sb.append(str);
            sb.append(" not supported");
            throw zzbj.zza(sb.toString(), null);
        } else if (i == 21358) {
            zzt(i);
            this.zzz.zza = str;
        } else if (i != 2274716) {
        } else {
            zzt(i);
            this.zzz.zzY = str;
        }
    }
}
