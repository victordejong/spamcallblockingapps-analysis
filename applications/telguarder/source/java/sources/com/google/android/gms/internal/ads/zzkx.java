package com.google.android.gms.internal.ads;

import android.util.Log;
import android.util.Pair;
import com.google.android.gms.internal.ads.zzmh;
import java.util.ArrayList;
import kotlin.text.Typography;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzkx.class */
public final class zzkx {
    private static final int zzawm = zzpt.zzbh("vide");
    private static final int zzawn = zzpt.zzbh("soun");
    private static final int zzawo = zzpt.zzbh("text");
    private static final int zzawp = zzpt.zzbh("sbtl");
    private static final int zzawq = zzpt.zzbh("subt");
    private static final int zzawr = zzpt.zzbh("clcp");
    private static final int zzaws = zzpt.zzbh("cenc");
    private static final int zzavy = zzpt.zzbh("meta");

    private static int zza(zzpn zzpnVar, int i, int i2, zzlc zzlcVar, int i3) {
        boolean z;
        Integer num;
        int position = zzpnVar.getPosition();
        while (true) {
            int i4 = position;
            if (i4 - i < i2) {
                zzpnVar.zzbi(i4);
                int readInt = zzpnVar.readInt();
                zzpg.checkArgument(readInt > 0, "childAtomSize should be positive");
                if (zzpnVar.readInt() == zzkw.zzaus) {
                    int i5 = i4 + 8;
                    Integer num2 = null;
                    zzlr zzlrVar = null;
                    boolean z2 = false;
                    while (i5 - i4 < readInt) {
                        zzpnVar.zzbi(i5);
                        int readInt2 = zzpnVar.readInt();
                        int readInt3 = zzpnVar.readInt();
                        if (readInt3 == zzkw.zzauy) {
                            num = Integer.valueOf(zzpnVar.readInt());
                            z = z2;
                        } else if (readInt3 == zzkw.zzaut) {
                            zzpnVar.zzbj(4);
                            if (zzpnVar.readInt() == zzaws) {
                                z = true;
                                num = num2;
                            } else {
                                z = false;
                                num = num2;
                            }
                        } else {
                            z = z2;
                            num = num2;
                            if (readInt3 == zzkw.zzauu) {
                                int i6 = i5;
                                int i7 = 8;
                                while (true) {
                                    int i8 = i6 + i7;
                                    if (i8 - i5 >= readInt2) {
                                        zzlrVar = null;
                                        num = num2;
                                        z = z2;
                                        break;
                                    }
                                    zzpnVar.zzbi(i8);
                                    int readInt4 = zzpnVar.readInt();
                                    if (zzpnVar.readInt() == zzkw.zzauv) {
                                        zzpnVar.zzbj(6);
                                        boolean z3 = zzpnVar.readUnsignedByte() == 1;
                                        int readUnsignedByte = zzpnVar.readUnsignedByte();
                                        byte[] bArr = new byte[16];
                                        zzpnVar.zze(bArr, 0, 16);
                                        zzlrVar = new zzlr(z3, readUnsignedByte, bArr);
                                        z = z2;
                                        num = num2;
                                    } else {
                                        i6 = i8;
                                        i7 = readInt4;
                                    }
                                }
                            }
                        }
                        i5 += readInt2;
                        z2 = z;
                        num2 = num;
                    }
                    Pair pair = null;
                    if (z2) {
                        zzpg.checkArgument(num2 != null, "frma atom is mandatory");
                        boolean z4 = false;
                        if (zzlrVar != null) {
                            z4 = true;
                        }
                        zzpg.checkArgument(z4, "schi->tenc atom is mandatory");
                        pair = Pair.create(num2, zzlrVar);
                    }
                    if (pair != null) {
                        zzlcVar.zzaxd[i3] = (zzlr) pair.second;
                        return ((Integer) pair.first).intValue();
                    }
                }
                position = i4 + readInt;
            } else {
                return 0;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x012f, code lost:
        if (r0 == 0) goto L43;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v152, types: [long] */
    /* JADX WARN: Type inference failed for: r0v154, types: [long] */
    /* JADX WARN: Type inference failed for: r0v156, types: [long] */
    /* JADX WARN: Type inference failed for: r0v158, types: [long] */
    /* JADX WARN: Type inference failed for: r0v588, types: [long] */
    /* JADX WARN: Type inference failed for: r0v593, types: [long] */
    /* JADX WARN: Type inference failed for: r0v613, types: [long] */
    /* JADX WARN: Type inference failed for: r0v615, types: [long] */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v13 */
    /* JADX WARN: Type inference failed for: r19v14 */
    /* JADX WARN: Type inference failed for: r9v5, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzls zza(com.google.android.gms.internal.ads.zzkv r17, com.google.android.gms.internal.ads.zzky r18, long r19, com.google.android.gms.internal.ads.zzjo r21, boolean r22) throws com.google.android.gms.internal.ads.zzhw {
        /*
            Method dump skipped, instructions count: 3490
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkx.zza(com.google.android.gms.internal.ads.zzkv, com.google.android.gms.internal.ads.zzky, long, com.google.android.gms.internal.ads.zzjo, boolean):com.google.android.gms.internal.ads.zzls");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v257 */
    /* JADX WARN: Type inference failed for: r0v268, types: [long] */
    /* JADX WARN: Type inference failed for: r0v369, types: [long] */
    /* JADX WARN: Type inference failed for: r0v374, types: [long] */
    /* JADX WARN: Type inference failed for: r0v419, types: [long] */
    /* JADX WARN: Type inference failed for: r0v97, types: [long] */
    public static zzlt zza(zzls zzlsVar, zzkv zzkvVar, zzke zzkeVar) throws zzhw {
        zzlb zzlbVar;
        boolean z;
        int i;
        int i2;
        zzpn zzpnVar;
        char c;
        int i3;
        long[] jArr;
        int[] iArr;
        int[] iArr2;
        long[] jArr2;
        int i4;
        int i5;
        int i6;
        int i7;
        zzky zzap = zzkvVar.zzap(zzkw.zzavn);
        if (zzap != null) {
            zzlbVar = new zzlb(zzap);
        } else {
            zzky zzap2 = zzkvVar.zzap(zzkw.zzavo);
            if (zzap2 == null) {
                throw new zzhw("Track has no sample table size information");
            }
            zzlbVar = new zzle(zzap2);
        }
        int zzgx = zzlbVar.zzgx();
        if (zzgx == 0) {
            return new zzlt(new long[0], new int[0], 0, new long[0], new int[0]);
        }
        zzky zzap3 = zzkvVar.zzap(zzkw.zzavp);
        if (zzap3 == null) {
            zzap3 = zzkvVar.zzap(zzkw.zzavq);
            z = true;
        } else {
            z = false;
        }
        zzpn zzpnVar2 = zzap3.zzawt;
        zzpn zzpnVar3 = zzkvVar.zzap(zzkw.zzavm).zzawt;
        zzpn zzpnVar4 = zzkvVar.zzap(zzkw.zzavj).zzawt;
        zzky zzap4 = zzkvVar.zzap(zzkw.zzavk);
        zzpn zzpnVar5 = zzap4 != null ? zzap4.zzawt : null;
        zzky zzap5 = zzkvVar.zzap(zzkw.zzavl);
        zzpn zzpnVar6 = zzap5 != null ? zzap5.zzawt : null;
        zzla zzlaVar = new zzla(zzpnVar3, zzpnVar2, z);
        zzpnVar4.zzbi(12);
        int zzja = zzpnVar4.zzja() - 1;
        int zzja2 = zzpnVar4.zzja();
        int zzja3 = zzpnVar4.zzja();
        if (zzpnVar6 != null) {
            zzpnVar6.zzbi(12);
            i = zzpnVar6.zzja();
        } else {
            i = 0;
        }
        int i8 = -1;
        if (zzpnVar5 != null) {
            zzpnVar5.zzbi(12);
            int zzja4 = zzpnVar5.zzja();
            i2 = zzja4;
            zzpnVar = null;
            if (zzja4 > 0) {
                i8 = zzpnVar5.zzja() - 1;
                zzpnVar = zzpnVar5;
                i2 = zzja4;
            }
        } else {
            zzpnVar = zzpnVar5;
            i2 = 0;
        }
        if (!(zzlbVar.zzgz() && "audio/raw".equals(zzlsVar.zzahz.zzahe) && zzja == 0 && i == 0 && i2 == 0)) {
            long[] jArr3 = new long[zzgx];
            int[] iArr3 = new int[zzgx];
            long[] jArr4 = new long[zzgx];
            int[] iArr4 = new int[zzgx];
            char c2 = 0;
            char c3 = 0;
            int i9 = 0;
            int i10 = 0;
            int i11 = 0;
            int i12 = i;
            int i13 = i2;
            int i14 = 0;
            int i15 = i12;
            int i16 = i8;
            int i17 = 0;
            while (i17 < zzgx) {
                int i18 = i11;
                int i19 = zzja3;
                int i20 = zzja2;
                char c4 = c2;
                while (i18 == 0) {
                    zzpg.checkState(zzlaVar.zzha());
                    c4 = zzlaVar.zzawv;
                    i18 = zzlaVar.zzawu;
                }
                int i21 = i15;
                int i22 = i10;
                int i23 = i14;
                if (zzpnVar6 != null) {
                    while (i10 == 0 && i15 > 0) {
                        i10 = zzpnVar6.zzja();
                        i14 = zzpnVar6.readInt();
                        i15--;
                    }
                    i22 = i10 - 1;
                    i23 = i14;
                    i21 = i15;
                }
                jArr3[i17] = c4 == 1 ? 1 : 0;
                iArr3[i17] = zzlbVar.zzgy();
                int i24 = i9;
                if (iArr3[i17] > i9) {
                    i24 = iArr3[i17];
                }
                jArr4[i17] = c3 + i23;
                iArr4[i17] = zzpnVar == null ? 1 : 0;
                int i25 = i16;
                int i26 = i13;
                if (i17 == i16) {
                    iArr4[i17] = 1;
                    int i27 = i13 - 1;
                    i25 = i16;
                    i26 = i27;
                    if (i27 > 0) {
                        i25 = zzpnVar.zzja() - 1;
                        i26 = i27;
                    }
                }
                c3 += i19;
                int i28 = i20 - 1;
                if (i28 != 0 || zzja <= 0) {
                    i7 = i19;
                } else {
                    i28 = zzpnVar4.zzja();
                    i7 = zzpnVar4.zzja();
                    zzja--;
                }
                c2 = c4 + iArr3[i17];
                i11 = i18 - 1;
                i17++;
                int i29 = i23;
                zzja2 = i28;
                i16 = i25;
                i13 = i26;
                i9 = i24;
                zzja3 = i7;
                i15 = i21;
                i10 = i22;
                i14 = i29;
            }
            zzpg.checkArgument(i10 == 0);
            while (i15 > 0) {
                zzpg.checkArgument(zzpnVar6.zzja() == 0);
                zzpnVar6.readInt();
                i15--;
            }
            if (i13 != 0 || zzja2 != 0 || i11 != 0 || zzja != 0) {
                int i30 = zzlsVar.f129id;
                StringBuilder sb = new StringBuilder((int) Typography.times);
                sb.append("Inconsistent stbl box for track ");
                sb.append(i30);
                sb.append(": remainingSynchronizationSamples ");
                sb.append(i13);
                sb.append(", remainingSamplesAtTimestampDelta ");
                sb.append(zzja2);
                sb.append(", remainingSamplesInChunk ");
                sb.append(i11);
                sb.append(", remainingTimestampDeltaChanges ");
                sb.append(zzja);
                Log.w("AtomParsers", sb.toString());
            }
            jArr2 = jArr3;
            iArr = iArr4;
            jArr = jArr4;
            i3 = i9;
            iArr2 = iArr3;
            zzgx = zzgx;
            c = c3;
        } else {
            long[] jArr5 = new long[zzlaVar.length];
            int i31 = zzlaVar.length;
            int[] iArr5 = new int[i31];
            while (zzlaVar.zzha()) {
                jArr5[zzlaVar.index] = zzlaVar.zzawv;
                iArr5[zzlaVar.index] = zzlaVar.zzawu;
            }
            int zzgy = zzlbVar.zzgy();
            long j = zzja3;
            int i32 = 8192 / zzgy;
            int i33 = 0;
            for (int i34 = 0; i34 < i31; i34++) {
                i33 += zzpt.zzf(iArr5[i34], i32);
            }
            long[] jArr6 = new long[i33];
            int[] iArr6 = new int[i33];
            long[] jArr7 = new long[i33];
            int[] iArr7 = new int[i33];
            int i35 = 0;
            int i36 = 0;
            int i37 = 0;
            for (int i38 = 0; i38 < i31; i38++) {
                int i39 = iArr5[i38];
                char c5 = jArr5[i38];
                while (i39 > 0) {
                    int min = Math.min(i32, i39);
                    jArr6[i36] = c5 == 1 ? 1 : 0;
                    iArr6[i36] = zzgy * min;
                    i37 = Math.max(i37, iArr6[i36]);
                    jArr7[i36] = i35 * j;
                    iArr7[i36] = 1;
                    c5 += iArr6[i36];
                    i35 += min;
                    i39 -= min;
                    i36++;
                }
            }
            zzli zzliVar = new zzli(jArr6, iArr6, i37, jArr7, iArr7);
            jArr2 = zzliVar.zzaov;
            iArr2 = zzliVar.zzaou;
            i3 = zzliVar.zzayj;
            jArr = zzliVar.zzayk;
            iArr = zzliVar.zzayl;
            c = 0;
        }
        if (zzlsVar.zzbal == null || zzkeVar.zzgt()) {
            zzpt.zza(jArr, 1000000L, zzlsVar.zzdf);
            return new zzlt(jArr2, iArr2, i3, jArr, iArr);
        }
        if (zzlsVar.zzbal.length == 1 && zzlsVar.type == 1 && jArr.length >= 2) {
            long j2 = zzlsVar.zzbam[0];
            long zza = zzpt.zza(zzlsVar.zzbal[0], zzlsVar.zzdf, zzlsVar.zzbai) + j2;
            if (jArr[0] <= j2 && j2 < jArr[1] && jArr[jArr.length - 1] < zza && zza <= c) {
                long zza2 = zzpt.zza(j2 - jArr[0], zzlsVar.zzahz.zzahp, zzlsVar.zzdf);
                long zza3 = zzpt.zza(c - zza, zzlsVar.zzahz.zzahp, zzlsVar.zzdf);
                if ((zza2 != 0 || zza3 != 0) && zza2 <= 2147483647L && zza3 <= 2147483647L) {
                    zzkeVar.zzahr = (int) zza2;
                    zzkeVar.zzahs = (int) zza3;
                    zzpt.zza(jArr, 1000000L, zzlsVar.zzdf);
                    return new zzlt(jArr2, iArr2, i3, jArr, iArr);
                }
            }
        }
        if (zzlsVar.zzbal.length == 1 && zzlsVar.zzbal[0] == 0) {
            for (int i40 = 0; i40 < jArr.length; i40++) {
                jArr[i40] = zzpt.zza(jArr[i40] - zzlsVar.zzbam[0], 1000000L, zzlsVar.zzdf);
            }
            return new zzlt(jArr2, iArr2, i3, jArr, iArr);
        }
        boolean z2 = zzlsVar.type == 1;
        boolean z3 = false;
        int i41 = 0;
        int i42 = 0;
        int i43 = 0;
        while (i42 < zzlsVar.zzbal.length) {
            long j3 = zzlsVar.zzbam[i42];
            if (j3 != -1) {
                long zza4 = zzpt.zza(zzlsVar.zzbal[i42], zzlsVar.zzdf, zzlsVar.zzbai);
                int zzb = zzpt.zzb(jArr, j3, true, true);
                int zzb2 = zzpt.zzb(jArr, j3 + zza4, z2, false);
                int i44 = i41 + (zzb2 - zzb);
                z3 |= i43 != zzb;
                i43 = zzb2;
                i41 = i44;
            }
            i42++;
            z3 = z3;
        }
        boolean z4 = z3 | (i41 != zzgx);
        long[] jArr8 = z4 ? new long[i41] : jArr2;
        int[] iArr8 = z4 ? new int[i41] : iArr2;
        if (z4) {
            i3 = 0;
        }
        int[] iArr9 = z4 ? new int[i41] : iArr;
        long[] jArr9 = new long[i41];
        int i45 = 0;
        int i46 = 0;
        char c6 = 0;
        while (i45 < zzlsVar.zzbal.length) {
            long j4 = zzlsVar.zzbam[i45];
            long j5 = zzlsVar.zzbal[i45];
            if (j4 != -1) {
                long zza5 = zzpt.zza(j5, zzlsVar.zzdf, zzlsVar.zzbai);
                int zzb3 = zzpt.zzb(jArr, j4, true, true);
                int zzb4 = zzpt.zzb(jArr, zza5 + j4, z2, false);
                if (z4) {
                    int i47 = zzb4 - zzb3;
                    System.arraycopy(jArr2, zzb3, jArr8, i46, i47);
                    System.arraycopy(iArr2, zzb3, iArr8, i46, i47);
                    System.arraycopy(iArr, zzb3, iArr9, i46, i47);
                }
                int i48 = i3;
                i4 = i46;
                while (true) {
                    i6 = i48;
                    if (zzb3 >= zzb4) {
                        break;
                    }
                    jArr9[i4] = zzpt.zza(c6, 1000000L, zzlsVar.zzbai) + zzpt.zza(jArr[zzb3] - j4, 1000000L, zzlsVar.zzdf);
                    i48 = i6;
                    if (z4) {
                        i48 = i6;
                        if (iArr8[i4] > i6) {
                            i48 = iArr2[zzb3];
                        }
                    }
                    i4++;
                    zzb3++;
                }
                i5 = i6;
            } else {
                i5 = i3;
                i4 = i46;
            }
            c6 += j5;
            i45++;
            i46 = i4;
            i3 = i5;
        }
        boolean z5 = false;
        for (int i49 = 0; i49 < iArr9.length && !z5; i49++) {
            z5 |= (iArr9[i49] & 1) != 0;
        }
        if (!z5) {
            throw new zzhw("The edited sample sequence does not contain a sync sample.");
        }
        return new zzlt(jArr8, iArr8, i3, jArr9, iArr9);
    }

    public static zzmh zza(zzky zzkyVar, boolean z) {
        if (z) {
            return null;
        }
        zzpn zzpnVar = zzkyVar.zzawt;
        zzpnVar.zzbi(8);
        while (zzpnVar.zziv() >= 8) {
            int position = zzpnVar.getPosition();
            int readInt = zzpnVar.readInt();
            if (zzpnVar.readInt() == zzkw.zzavy) {
                zzpnVar.zzbi(position);
                zzpnVar.zzbj(12);
                while (zzpnVar.getPosition() < position + readInt) {
                    int position2 = zzpnVar.getPosition();
                    int readInt2 = zzpnVar.readInt();
                    if (zzpnVar.readInt() == zzkw.zzavz) {
                        zzpnVar.zzbi(position2);
                        zzpnVar.zzbj(8);
                        ArrayList arrayList = new ArrayList();
                        while (zzpnVar.getPosition() < position2 + readInt2) {
                            zzmh.zza zzd = zzll.zzd(zzpnVar);
                            if (zzd != null) {
                                arrayList.add(zzd);
                            }
                        }
                        if (arrayList.isEmpty()) {
                            return null;
                        }
                        return new zzmh(arrayList);
                    }
                    zzpnVar.zzbj(readInt2 - 8);
                }
                return null;
            }
            zzpnVar.zzbj(readInt - 8);
        }
        return null;
    }

    private static Pair<String, byte[]> zzb(zzpn zzpnVar, int i) {
        zzpnVar.zzbi(i + 8 + 4);
        zzpnVar.zzbj(1);
        zzc(zzpnVar);
        zzpnVar.zzbj(2);
        int readUnsignedByte = zzpnVar.readUnsignedByte();
        if ((readUnsignedByte & 128) != 0) {
            zzpnVar.zzbj(2);
        }
        if ((readUnsignedByte & 64) != 0) {
            zzpnVar.zzbj(zzpnVar.readUnsignedShort());
        }
        if ((readUnsignedByte & 32) != 0) {
            zzpnVar.zzbj(2);
        }
        zzpnVar.zzbj(1);
        zzc(zzpnVar);
        int readUnsignedByte2 = zzpnVar.readUnsignedByte();
        Object obj = null;
        if (readUnsignedByte2 == 32) {
            obj = "video/mp4v-es";
        } else if (readUnsignedByte2 == 33) {
            obj = "video/avc";
        } else if (readUnsignedByte2 != 35) {
            if (readUnsignedByte2 != 64) {
                if (readUnsignedByte2 == 107) {
                    return Pair.create("audio/mpeg", null);
                }
                if (readUnsignedByte2 == 165) {
                    obj = "audio/ac3";
                } else if (readUnsignedByte2 != 166) {
                    switch (readUnsignedByte2) {
                        case 102:
                        case 103:
                        case 104:
                            break;
                        default:
                            switch (readUnsignedByte2) {
                                case Typography.copyright /* 169 */:
                                case 172:
                                    return Pair.create("audio/vnd.dts", null);
                                case 170:
                                case Typography.leftGuillemete /* 171 */:
                                    return Pair.create("audio/vnd.dts.hd", null);
                            }
                    }
                } else {
                    obj = "audio/eac3";
                }
            }
            obj = "audio/mp4a-latm";
        } else {
            obj = "video/hevc";
        }
        zzpnVar.zzbj(12);
        zzpnVar.zzbj(1);
        int zzc = zzc(zzpnVar);
        byte[] bArr = new byte[zzc];
        zzpnVar.zze(bArr, 0, zzc);
        return Pair.create(obj, bArr);
    }

    private static int zzc(zzpn zzpnVar) {
        int readUnsignedByte = zzpnVar.readUnsignedByte();
        int i = readUnsignedByte & 127;
        while (true) {
            int i2 = i;
            if ((readUnsignedByte & 128) == 128) {
                readUnsignedByte = zzpnVar.readUnsignedByte();
                i = (i2 << 7) | (readUnsignedByte & 127);
            } else {
                return i2;
            }
        }
    }
}
