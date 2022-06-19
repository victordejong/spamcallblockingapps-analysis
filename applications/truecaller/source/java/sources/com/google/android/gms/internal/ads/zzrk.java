package com.google.android.gms.internal.ads;

import android.util.Pair;
import android.util.SparseArray;
import com.tenor.android.core.constant.ContentFormat;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzrk.class */
public final class zzrk implements zznu {
    public static final zzoa zza = zzrh.zza;
    private static final byte[] zzb = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final zzafv zzc;
    private int zzA;
    private int zzB;
    private boolean zzC;
    private zznx zzD;
    private zzox[] zzE;
    private zzox[] zzF;
    private boolean zzG;
    private final List<zzafv> zzd;
    private final SparseArray<zzrj> zze;
    private final zzamf zzf;
    private final zzamf zzg;
    private final zzamf zzh;
    private final byte[] zzi;
    private final zzamf zzj;
    private final zzaja zzk;
    private final zzamf zzl;
    private final ArrayDeque<zzqv> zzm;
    private final ArrayDeque<zzri> zzn;
    private int zzo;
    private int zzp;
    private long zzq;
    private int zzr;
    private zzamf zzs;
    private long zzt;
    private int zzu;
    private long zzv;
    private long zzw;
    private long zzx;
    private zzrj zzy;
    private int zzz;

    static {
        zzaft zzaftVar = new zzaft();
        zzaftVar.zzN("application/x-emsg");
        zzc = zzaftVar.zzah();
    }

    public zzrk() {
        this(0, null);
    }

    public zzrk(int i, zzamn zzamnVar) {
        this.zzd = Collections.unmodifiableList(Collections.emptyList());
        this.zzk = new zzaja();
        this.zzl = new zzamf(16);
        this.zzf = new zzamf(zzalw.zza);
        this.zzg = new zzamf(5);
        this.zzh = new zzamf();
        byte[] bArr = new byte[16];
        this.zzi = bArr;
        this.zzj = new zzamf(bArr);
        this.zzm = new ArrayDeque<>();
        this.zzn = new ArrayDeque<>();
        this.zze = new SparseArray<>();
        this.zzw = -9223372036854775807L;
        this.zzv = -9223372036854775807L;
        this.zzx = -9223372036854775807L;
        this.zzD = zznx.zza;
        this.zzE = new zzox[0];
        this.zzF = new zzox[0];
    }

    private final void zze() {
        this.zzo = 0;
        this.zzr = 0;
    }

    /* JADX WARN: Type inference failed for: r0v424, types: [long] */
    /* JADX WARN: Type inference failed for: r0v426, types: [long] */
    /* JADX WARN: Type inference failed for: r0v536, types: [long] */
    /* JADX WARN: Type inference failed for: r0v561, types: [long] */
    /* JADX WARN: Type inference failed for: r0v595, types: [long] */
    /* JADX WARN: Type inference failed for: r0v641, types: [long] */
    /* JADX WARN: Type inference failed for: r0v643, types: [long] */
    /* JADX WARN: Type inference failed for: r0v85, types: [long] */
    /* JADX WARN: Type inference failed for: r0v87, types: [long] */
    private final void zzf(long j) throws zzaha {
        zzrk zzrkVar;
        int i;
        byte[] bArr;
        SparseArray<zzrj> sparseArray;
        int i2;
        zzamf zzamfVar;
        byte[] bArr2;
        zzamf zzamfVar2;
        zzamf zzamfVar3;
        int i3;
        int i4;
        int i5;
        zzrk zzrkVar2 = this;
        zzrk zzrkVar3 = zzrkVar2;
        while (!zzrkVar3.zzm.isEmpty() && zzrkVar3.zzm.peek().zza == j) {
            zzqv pop = zzrkVar3.zzm.pop();
            int i6 = pop.zzd;
            if (i6 == 1836019574) {
                zzn zzi = zzi(pop.zzb);
                zzqv zzd = pop.zzd(1836475768);
                Objects.requireNonNull(zzd);
                SparseArray sparseArray2 = new SparseArray();
                int size = zzd.zzb.size();
                char c = 1;
                for (int i7 = 0; i7 < size; i7++) {
                    zzqw zzqwVar = zzd.zzb.get(i7);
                    int i8 = zzqwVar.zzd;
                    if (i8 == 1953654136) {
                        zzamf zzamfVar4 = zzqwVar.zza;
                        zzamfVar4.zzh(12);
                        Pair create = Pair.create(Integer.valueOf(zzamfVar4.zzv()), new zzrf(zzamfVar4.zzv() - 1, zzamfVar4.zzv(), zzamfVar4.zzv(), zzamfVar4.zzv()));
                        sparseArray2.put(((Integer) create.first).intValue(), (zzrf) create.second);
                    } else if (i8 == 1835362404) {
                        zzamf zzamfVar5 = zzqwVar.zza;
                        zzamfVar5.zzh(8);
                        c = zzqx.zze(zzamfVar5.zzv()) == 0 ? zzamfVar5.zzt() : zzamfVar5.zzD();
                    }
                }
                List<zzrx> zza2 = zzre.zza(pop, new zzoj(), c, zzi, false, false, new zzfln(zzrkVar3) { // from class: com.google.android.gms.internal.ads.zzrg
                    private final zzrk zza;

                    {
                        this.zza = zzrkVar3;
                    }

                    @Override // com.google.android.gms.internal.ads.zzfln
                    public final Object apply(Object obj) {
                        return (zzru) obj;
                    }
                });
                int size2 = zza2.size();
                if (zzrkVar3.zze.size() == 0) {
                    for (int i9 = 0; i9 < size2; i9++) {
                        zzrx zzrxVar = zza2.get(i9);
                        zzru zzruVar = zzrxVar.zza;
                        zzrkVar3.zze.put(zzruVar.zza, new zzrj(zzrkVar3.zzD.zzB(i9, zzruVar.zzb), zzrxVar, zzj(sparseArray2, zzruVar.zza)));
                        zzrkVar3.zzw = Math.max(zzrkVar3.zzw, zzruVar.zze);
                    }
                    zzrkVar3.zzD.zzC();
                } else {
                    zzakt.zzd(zzrkVar3.zze.size() == size2);
                    for (int i10 = 0; i10 < size2; i10++) {
                        zzrx zzrxVar2 = zza2.get(i10);
                        zzru zzruVar2 = zzrxVar2.zza;
                        zzrkVar3.zze.get(zzruVar2.zza).zzc(zzrxVar2, zzj(sparseArray2, zzruVar2.zza));
                    }
                }
            } else {
                int i11 = 8;
                if (i6 == 1836019558) {
                    SparseArray<zzrj> sparseArray3 = zzrkVar3.zze;
                    byte[] bArr3 = zzrkVar3.zzi;
                    int size3 = pop.zzc.size();
                    int i12 = 0;
                    zzqv zzqvVar = pop;
                    while (i12 < size3) {
                        zzqv zzqvVar2 = zzqvVar.zzc.get(i12);
                        if (zzqvVar2.zzd == 1953653094) {
                            zzqw zzc2 = zzqvVar2.zzc(1952868452);
                            Objects.requireNonNull(zzc2);
                            zzamf zzamfVar6 = zzc2.zza;
                            zzamfVar6.zzh(i11);
                            int zzv = zzamfVar6.zzv() & 16777215;
                            zzrj zzrjVar = sparseArray3.get(zzamfVar6.zzv());
                            if (zzrjVar == null) {
                                zzrjVar = null;
                            } else {
                                if ((zzv & 1) != 0) {
                                    long zzD = zzamfVar6.zzD();
                                    zzrw zzrwVar = zzrjVar.zzb;
                                    zzrwVar.zzb = zzD;
                                    zzrwVar.zzc = zzD;
                                }
                                zzrf zzrfVar = zzrjVar.zze;
                                zzrjVar.zzb.zza = new zzrf((zzv & 2) != 0 ? zzamfVar6.zzv() - 1 : zzrfVar.zza, (zzv & 8) != 0 ? zzamfVar6.zzv() : zzrfVar.zzb, (zzv & 16) != 0 ? zzamfVar6.zzv() : zzrfVar.zzc, (zzv & 32) != 0 ? zzamfVar6.zzv() : zzrfVar.zzd);
                            }
                            if (zzrjVar != null) {
                                zzrw zzrwVar2 = zzrjVar.zzb;
                                long j2 = zzrwVar2.zzq;
                                boolean z = zzrwVar2.zzr;
                                zzrjVar.zzd();
                                zzrjVar.zzl = true;
                                zzqw zzc3 = zzqvVar2.zzc(1952867444);
                                if (zzc3 != null) {
                                    zzamf zzamfVar7 = zzc3.zza;
                                    zzamfVar7.zzh(i11);
                                    zzrwVar2.zzq = zzqx.zze(zzamfVar7.zzv()) == 1 ? zzamfVar7.zzD() : zzamfVar7.zzt();
                                    zzrwVar2.zzr = true;
                                } else {
                                    zzrwVar2.zzq = j2;
                                    zzrwVar2.zzr = z;
                                }
                                List<zzqw> list = zzqvVar2.zzb;
                                int size4 = list.size();
                                int i13 = 0;
                                int i14 = 0;
                                int i15 = 0;
                                while (true) {
                                    i2 = i15;
                                    if (i13 >= size4) {
                                        break;
                                    }
                                    zzqw zzqwVar2 = list.get(i13);
                                    int i16 = i14;
                                    int i17 = i2;
                                    if (zzqwVar2.zzd == 1953658222) {
                                        zzamf zzamfVar8 = zzqwVar2.zza;
                                        zzamfVar8.zzh(12);
                                        int zzB = zzamfVar8.zzB();
                                        i16 = i14;
                                        i17 = i2;
                                        if (zzB > 0) {
                                            i17 = i2 + zzB;
                                            i16 = i14 + 1;
                                        }
                                    }
                                    i13++;
                                    i14 = i16;
                                    i15 = i17;
                                }
                                SparseArray<zzrj> sparseArray4 = sparseArray3;
                                zzrjVar.zzh = 0;
                                zzrjVar.zzg = 0;
                                zzrjVar.zzf = 0;
                                zzrw zzrwVar3 = zzrjVar.zzb;
                                zzrwVar3.zzd = i14;
                                zzrwVar3.zze = i2;
                                if (zzrwVar3.zzg.length < i14) {
                                    zzrwVar3.zzf = new long[i14];
                                    zzrwVar3.zzg = new int[i14];
                                }
                                if (zzrwVar3.zzh.length < i2) {
                                    int i18 = (i2 * 125) / 100;
                                    zzrwVar3.zzh = new int[i18];
                                    zzrwVar3.zzi = new int[i18];
                                    zzrwVar3.zzj = new long[i18];
                                    zzrwVar3.zzk = new boolean[i18];
                                    zzrwVar3.zzm = new boolean[i18];
                                }
                                int i19 = 0;
                                int i20 = 0;
                                int i21 = size3;
                                int i22 = 0;
                                while (true) {
                                    int i23 = i22;
                                    char c2 = 0;
                                    if (i23 >= size4) {
                                        break;
                                    }
                                    zzqw zzqwVar3 = list.get(i23);
                                    if (zzqwVar3.zzd == 1953658222) {
                                        zzamf zzamfVar9 = zzqwVar3.zza;
                                        zzamfVar9.zzh(8);
                                        int zzv2 = zzamfVar9.zzv() & 16777215;
                                        zzru zzruVar3 = zzrjVar.zzd.zza;
                                        zzrw zzrwVar4 = zzrjVar.zzb;
                                        zzrf zzrfVar2 = zzrwVar4.zza;
                                        int i24 = zzamq.zza;
                                        zzrwVar4.zzg[i20] = zzamfVar9.zzB();
                                        long[] jArr = zzrwVar4.zzf;
                                        long j3 = zzrwVar4.zzb;
                                        jArr[i20] = j3;
                                        if ((zzv2 & 1) != 0) {
                                            jArr[i20] = j3 + zzamfVar9.zzv();
                                        }
                                        int i25 = zzv2 & 4;
                                        int i26 = zzrfVar2.zzd;
                                        if (i25 != 0) {
                                            i26 = zzamfVar9.zzv();
                                        }
                                        int i27 = zzv2 & 256;
                                        int i28 = zzv2 & 512;
                                        int i29 = zzv2 & 1024;
                                        long[] jArr2 = zzruVar3.zzh;
                                        if (jArr2 != null && jArr2.length == 1 && jArr2[0] == 0) {
                                            c2 = zzamq.zzH(((long[]) zzamq.zzd(zzruVar3.zzi))[0], 1000000L, zzruVar3.zzc);
                                        }
                                        int[] iArr = zzrwVar4.zzh;
                                        int[] iArr2 = zzrwVar4.zzi;
                                        long[] jArr3 = zzrwVar4.zzj;
                                        i4 = i23;
                                        boolean[] zArr = zzrwVar4.zzk;
                                        int i30 = zzrwVar4.zzg[i20] + i19;
                                        long j4 = zzruVar3.zzc;
                                        char c3 = zzrwVar4.zzq;
                                        int i31 = i19;
                                        i19 = i30;
                                        while (i31 < i19) {
                                            int zzv3 = i27 != 0 ? zzamfVar9.zzv() : zzrfVar2.zzb;
                                            zzg(zzv3);
                                            int zzv4 = i28 != 0 ? zzamfVar9.zzv() : zzrfVar2.zzc;
                                            zzg(zzv4);
                                            if (i29 != 0) {
                                                i5 = zzamfVar9.zzv();
                                            } else {
                                                if (i31 == 0) {
                                                    i31 = 0;
                                                    if (i25 != 0) {
                                                        i5 = i26;
                                                        i31 = 0;
                                                    }
                                                }
                                                i5 = zzrfVar2.zzd;
                                            }
                                            if ((zzv2 & 2048) != 0) {
                                                iArr2[i31] = (int) ((zzamfVar9.zzv() * 1000000) / j4);
                                            } else {
                                                iArr2[i31] = 0;
                                            }
                                            long zzH = zzamq.zzH(c3, 1000000L, j4) - c2;
                                            jArr3[i31] = zzH;
                                            if (!zzrwVar4.zzr) {
                                                jArr3[i31] = zzH + zzrjVar.zzd.zzh;
                                            }
                                            iArr[i31] = zzv4;
                                            zArr[i31] = 1 == (((i5 >> 16) & 1) ^ 1);
                                            c3 += zzv3;
                                            i31++;
                                        }
                                        zzrwVar4.zzq = c3;
                                        i20++;
                                    } else {
                                        i4 = i23;
                                    }
                                    i22 = i4 + 1;
                                }
                                zzqv zzqvVar3 = zzqvVar;
                                zzru zzruVar4 = zzrjVar.zzd.zza;
                                zzrf zzrfVar3 = zzrwVar2.zza;
                                Objects.requireNonNull(zzrfVar3);
                                zzrv zza3 = zzruVar4.zza(zzrfVar3.zza);
                                zzqw zzc4 = zzqvVar2.zzc(1935763834);
                                if (zzc4 != null) {
                                    Objects.requireNonNull(zza3);
                                    zzamf zzamfVar10 = zzc4.zza;
                                    int i32 = zza3.zzd;
                                    zzamfVar10.zzh(8);
                                    if ((zzamfVar10.zzv() & 1) == 1) {
                                        zzamfVar10.zzk(8);
                                    }
                                    int zzn = zzamfVar10.zzn();
                                    int zzB2 = zzamfVar10.zzB();
                                    int i33 = zzrwVar2.zze;
                                    if (zzB2 > i33) {
                                        throw zzaha.zzb(C22128a.m8683N1(78, "Saiz sample count ", zzB2, " is greater than fragment sample count", i33), null);
                                    }
                                    if (zzn == 0) {
                                        boolean[] zArr2 = zzrwVar2.zzm;
                                        i3 = 0;
                                        for (int i34 = 0; i34 < zzB2; i34++) {
                                            int zzn2 = zzamfVar10.zzn();
                                            i3 += zzn2;
                                            zArr2[i34] = zzn2 > i32;
                                        }
                                    } else {
                                        i3 = zzn * zzB2;
                                        Arrays.fill(zzrwVar2.zzm, 0, zzB2, zzn > i32);
                                    }
                                    Arrays.fill(zzrwVar2.zzm, zzB2, zzrwVar2.zze, false);
                                    if (i3 > 0) {
                                        zzrwVar2.zza(i3);
                                    }
                                }
                                zzqw zzc5 = zzqvVar2.zzc(1935763823);
                                if (zzc5 != null) {
                                    zzamf zzamfVar11 = zzc5.zza;
                                    zzamfVar11.zzh(8);
                                    int zzv5 = zzamfVar11.zzv();
                                    if ((zzv5 & 1) == 1) {
                                        zzamfVar11.zzk(8);
                                    }
                                    int zzB3 = zzamfVar11.zzB();
                                    if (zzB3 != 1) {
                                        StringBuilder sb = new StringBuilder(40);
                                        sb.append("Unexpected saio entry count: ");
                                        sb.append(zzB3);
                                        throw zzaha.zzb(sb.toString(), null);
                                    }
                                    zzrwVar2.zzc += zzqx.zze(zzv5) == 0 ? zzamfVar11.zzt() : zzamfVar11.zzD();
                                }
                                zzqw zzc6 = zzqvVar2.zzc(1936027235);
                                if (zzc6 != null) {
                                    zzh(zzc6.zza, 0, zzrwVar2);
                                }
                                String str = zza3 != null ? zza3.zzb : null;
                                int i35 = 0;
                                zzamf zzamfVar12 = null;
                                zzamf zzamfVar13 = null;
                                while (true) {
                                    zzamfVar = zzamfVar13;
                                    if (i35 >= zzqvVar2.zzb.size()) {
                                        break;
                                    }
                                    zzqw zzqwVar4 = zzqvVar2.zzb.get(i35);
                                    zzamf zzamfVar14 = zzqwVar4.zza;
                                    int i36 = zzqwVar4.zzd;
                                    if (i36 == 1935828848) {
                                        zzamfVar14.zzh(12);
                                        zzamfVar2 = zzamfVar12;
                                        zzamfVar3 = zzamfVar;
                                        if (zzamfVar14.zzv() == 1936025959) {
                                            zzamfVar2 = zzamfVar14;
                                            zzamfVar3 = zzamfVar;
                                        }
                                    } else {
                                        zzamfVar2 = zzamfVar12;
                                        zzamfVar3 = zzamfVar;
                                        if (i36 == 1936158820) {
                                            zzamfVar14.zzh(12);
                                            zzamfVar2 = zzamfVar12;
                                            zzamfVar3 = zzamfVar;
                                            if (zzamfVar14.zzv() == 1936025959) {
                                                zzamfVar3 = zzamfVar14;
                                                zzamfVar2 = zzamfVar12;
                                            }
                                        }
                                    }
                                    i35++;
                                    zzamfVar12 = zzamfVar2;
                                    zzamfVar13 = zzamfVar3;
                                }
                                if (zzamfVar12 != null && zzamfVar != null) {
                                    zzamfVar12.zzh(8);
                                    int zzv6 = zzamfVar12.zzv();
                                    zzamfVar12.zzk(4);
                                    if (zzqx.zze(zzv6) == 1) {
                                        zzamfVar12.zzk(4);
                                    }
                                    if (zzamfVar12.zzv() != 1) {
                                        throw zzaha.zzc("Entry count in sbgp != 1 (unsupported).");
                                    }
                                    zzamfVar.zzh(8);
                                    int zze = zzqx.zze(zzamfVar.zzv());
                                    zzamfVar.zzk(4);
                                    if (zze == 1) {
                                        if (zzamfVar.zzt() == 0) {
                                            throw zzaha.zzc("Variable length description in sgpd found (unsupported)");
                                        }
                                    } else if (zze >= 2) {
                                        zzamfVar.zzk(4);
                                    }
                                    if (zzamfVar.zzt() != 1) {
                                        throw zzaha.zzc("Entry count in sgpd != 1 (unsupported).");
                                    }
                                    zzamfVar.zzk(1);
                                    int zzn3 = zzamfVar.zzn();
                                    if (zzamfVar.zzn() == 1) {
                                        int zzn4 = zzamfVar.zzn();
                                        byte[] bArr4 = new byte[16];
                                        zzamfVar.zzm(bArr4, 0, 16);
                                        if (zzn4 == 0) {
                                            int zzn5 = zzamfVar.zzn();
                                            byte[] bArr5 = new byte[zzn5];
                                            zzamfVar.zzm(bArr5, 0, zzn5);
                                            bArr2 = bArr5;
                                        } else {
                                            bArr2 = null;
                                        }
                                        zzrwVar2.zzl = true;
                                        zzrwVar2.zzn = new zzrv(true, str, zzn4, bArr4, (zzn3 & 240) >> 4, zzn3 & 15, bArr2);
                                    }
                                }
                                int size5 = zzqvVar2.zzb.size();
                                byte[] bArr6 = bArr3;
                                for (int i37 = 0; i37 < size5; i37++) {
                                    zzqw zzqwVar5 = zzqvVar2.zzb.get(i37);
                                    if (zzqwVar5.zzd == 1970628964) {
                                        zzamf zzamfVar15 = zzqwVar5.zza;
                                        zzamfVar15.zzh(8);
                                        zzamfVar15.zzm(bArr6, 0, 16);
                                        if (Arrays.equals(bArr6, zzb)) {
                                            zzh(zzamfVar15, 16, zzrwVar2);
                                        }
                                    }
                                }
                                i = 8;
                                bArr = bArr6;
                                sparseArray = sparseArray4;
                                size3 = i21;
                                zzqvVar = zzqvVar3;
                                i12++;
                                byte[] bArr7 = bArr;
                                sparseArray3 = sparseArray;
                                bArr3 = bArr7;
                                i11 = i;
                            }
                        }
                        byte[] bArr8 = bArr3;
                        sparseArray = sparseArray3;
                        bArr = bArr8;
                        i = i11;
                        i12++;
                        byte[] bArr72 = bArr;
                        sparseArray3 = sparseArray;
                        bArr3 = bArr72;
                        i11 = i;
                    }
                    zzn zzi2 = zzi(zzqvVar.zzb);
                    zzrkVar2 = this;
                    if (zzi2 != null) {
                        int size6 = zzrkVar2.zze.size();
                        for (int i38 = 0; i38 < size6; i38++) {
                            zzrj valueAt = zzrkVar2.zze.valueAt(i38);
                            zzru zzruVar5 = valueAt.zzd.zza;
                            zzrf zzrfVar4 = valueAt.zzb.zza;
                            int i39 = zzamq.zza;
                            zzrv zza4 = zzruVar5.zza(zzrfVar4.zza);
                            zzn zza5 = zzi2.zza(zza4 != null ? zza4.zzb : null);
                            zzaft zza6 = valueAt.zzd.zza.zzf.zza();
                            zza6.zzQ(zza5);
                            valueAt.zza.zzs(zza6.zzah());
                        }
                    }
                    if (zzrkVar2.zzv != -9223372036854775807L) {
                        int size7 = zzrkVar2.zze.size();
                        for (int i40 = 0; i40 < size7; i40++) {
                            zzrj valueAt2 = zzrkVar2.zze.valueAt(i40);
                            long j5 = zzrkVar2.zzv;
                            int i41 = valueAt2.zzf;
                            while (true) {
                                zzrw zzrwVar5 = valueAt2.zzb;
                                if (i41 < zzrwVar5.zze && zzrwVar5.zzb(i41) < j5) {
                                    if (valueAt2.zzb.zzk[i41]) {
                                        valueAt2.zzi = i41;
                                    }
                                    i41++;
                                }
                            }
                        }
                        zzrkVar2.zzv = -9223372036854775807L;
                    }
                    zzrkVar = zzrkVar2;
                } else {
                    zzrk zzrkVar4 = zzrkVar2;
                    zzrkVar = zzrkVar3;
                    zzrkVar2 = zzrkVar4;
                    if (!zzrkVar3.zzm.isEmpty()) {
                        zzrkVar3.zzm.peek().zzb(pop);
                        zzrkVar2 = zzrkVar4;
                        zzrkVar = zzrkVar3;
                    }
                }
                zzrkVar3 = zzrkVar;
            }
        }
        zze();
    }

    private static int zzg(int i) throws zzaha {
        if (i >= 0) {
            return i;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Unexpected negative value: ");
        sb.append(i);
        throw zzaha.zzb(sb.toString(), null);
    }

    private static void zzh(zzamf zzamfVar, int i, zzrw zzrwVar) throws zzaha {
        zzamfVar.zzh(i + 8);
        int zzv = zzamfVar.zzv() & 16777215;
        if ((zzv & 1) == 0) {
            boolean z = (zzv & 2) != 0;
            int zzB = zzamfVar.zzB();
            if (zzB == 0) {
                Arrays.fill(zzrwVar.zzm, 0, zzrwVar.zze, false);
                return;
            }
            int i2 = zzrwVar.zze;
            if (zzB != i2) {
                throw zzaha.zzb(C22128a.m8683N1(80, "Senc sample count ", zzB, " is different from fragment sample count", i2), null);
            }
            Arrays.fill(zzrwVar.zzm, 0, zzB, z);
            zzrwVar.zza(zzamfVar.zzd());
            zzamfVar.zzm(zzrwVar.zzo.zzi(), 0, zzrwVar.zzo.zze());
            zzrwVar.zzo.zzh(0);
            zzrwVar.zzp = false;
            return;
        }
        throw zzaha.zzc("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    private static zzn zzi(List<zzqw> list) {
        ArrayList arrayList;
        int size = list.size();
        int i = 0;
        ArrayList arrayList2 = null;
        while (true) {
            arrayList = arrayList2;
            if (i >= size) {
                break;
            }
            zzqw zzqwVar = list.get(i);
            ArrayList arrayList3 = arrayList;
            if (zzqwVar.zzd == 1886614376) {
                arrayList3 = arrayList;
                if (arrayList == null) {
                    arrayList3 = new ArrayList();
                }
                byte[] zzi = zzqwVar.zza.zzi();
                UUID zza2 = zzrr.zza(zzi);
                if (zza2 != null) {
                    arrayList3.add(new zzm(zza2, null, ContentFormat.IMAGE_MP4, zzi));
                }
            }
            i++;
            arrayList2 = arrayList3;
        }
        if (arrayList == null) {
            return null;
        }
        return new zzn(arrayList);
    }

    private static final zzrf zzj(SparseArray<zzrf> sparseArray, int i) {
        if (sparseArray.size() == 1) {
            return sparseArray.valueAt(0);
        }
        zzrf zzrfVar = sparseArray.get(i);
        Objects.requireNonNull(zzrfVar);
        return zzrfVar;
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final boolean zza(zznv zznvVar) throws IOException {
        return zzrt.zza(zznvVar);
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final void zzb(zznx zznxVar) {
        this.zzD = zznxVar;
        zze();
        zzox[] zzoxVarArr = new zzox[2];
        this.zzE = zzoxVarArr;
        int i = 0;
        zzox[] zzoxVarArr2 = (zzox[]) zzamq.zzf(zzoxVarArr, 0);
        this.zzE = zzoxVarArr2;
        for (zzox zzoxVar : zzoxVarArr2) {
            zzoxVar.zzs(zzc);
        }
        this.zzF = new zzox[this.zzd.size()];
        int i2 = 100;
        while (i < this.zzF.length) {
            zzox zzB = this.zzD.zzB(i2, 3);
            zzB.zzs(this.zzd.get(i));
            this.zzF[i] = zzB;
            i++;
            i2++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x044d, code lost:
        r0 = r10.zzn.removeFirst();
        r10.zzu -= r0.zzb;
        r0 = r0.zza;
        r0 = r10.zzE;
        r0 = r0.length;
        r13 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x047b, code lost:
        if (r13 >= r0) goto L389;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x047e, code lost:
        r0[r13].zzv(r0 + r0, 1, r0.zzb, r10.zzu, null);
        r13 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x04a0, code lost:
        if (r12.zzi() != false) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x04a3, code lost:
        r10.zzy = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x04a8, code lost:
        r10.zzo = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x04ad, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x011c, code lost:
        if (r10.zzo != 3) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:?, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x011f, code lost:
        r0 = r12.zzg();
        r10.zzz = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0131, code lost:
        if (r12.zzf >= r12.zzi) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0134, code lost:
        ((com.google.android.gms.internal.ads.zznp) r11).zzd(r0, false);
        r0 = r12.zzk();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0144, code lost:
        if (r0 != null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x014a, code lost:
        r0 = r12.zzb.zzo;
        r0 = r0.zzd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0159, code lost:
        if (r0 == 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x015c, code lost:
        r0.zzk(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x016d, code lost:
        if (r12.zzb.zzc(r12.zzf) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0170, code lost:
        r0.zzk(r0.zzo() * 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0181, code lost:
        if (r12.zzi() != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0184, code lost:
        r10.zzy = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0189, code lost:
        r10.zzo = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x019c, code lost:
        if (r12.zzd.zza.zzg != 1) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x019f, code lost:
        r10.zzz = r0 - 8;
        ((com.google.android.gms.internal.ads.zznp) r11).zzd(8, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x01c5, code lost:
        if ("audio/ac4".equals(r12.zzd.zza.zzf.zzl) == false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01c8, code lost:
        r10.zzA = r12.zzj(r10.zzz, 7);
        com.google.android.gms.internal.ads.zznd.zzb(r10.zzz, r10.zzj);
        com.google.android.gms.internal.ads.zzov.zzb(r12.zza, r10.zzj, 7);
        r13 = r10.zzA + 7;
        r10.zzA = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01fe, code lost:
        r13 = r12.zzj(r10.zzz, 0);
        r10.zzA = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x020d, code lost:
        r10.zzz += r13;
        r10.zzo = 4;
        r10.zzB = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0221, code lost:
        r0 = r12.zzd.zza;
        r0 = r12.zza;
        r0 = r12.zze();
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x023b, code lost:
        if (r0.zzj != 0) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x023e, code lost:
        r0 = r10.zzA;
        r0 = r10.zzz;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x024c, code lost:
        if (r0 >= r0) goto L380;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x024f, code lost:
        r10.zzA += com.google.android.gms.internal.ads.zzov.zza(r0, r11, r0 - r0, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0268, code lost:
        r0 = r10.zzg.zzi();
        r0[0] = (byte) 0;
        r0[1] = (byte) 0;
        r0[2] = (byte) 0;
        r0 = r0.zzj;
        r0 = 4 - r0;
        r13 = 1;
        r14 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x029f, code lost:
        if (r10.zzA >= r10.zzz) goto L383;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x02a2, code lost:
        r0 = r10.zzB;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x02aa, code lost:
        if (r0 != 0) goto L381;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x02ad, code lost:
        ((com.google.android.gms.internal.ads.zznp) r11).zza(r0, r0, r0 + 1, false);
        r10.zzg.zzh(0);
        r0 = r10.zzg.zzv();
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x02d1, code lost:
        if (r0 <= 0) goto L382;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x02d4, code lost:
        r10.zzB = r0 - 1;
        r10.zzf.zzh(0);
        com.google.android.gms.internal.ads.zzov.zzb(r0, r10.zzf, 4);
        com.google.android.gms.internal.ads.zzov.zzb(r0, r10.zzg, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x02fd, code lost:
        if (r10.zzF.length <= 0) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0300, code lost:
        r0 = r0.zzf.zzl;
        r0 = r0[4];
        r0 = com.google.android.gms.internal.ads.zzalw.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x031d, code lost:
        if ("video/avc".equals(r0) == false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0327, code lost:
        if ((r0 & 31) == r14) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x032d, code lost:
        r0 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x033b, code lost:
        if ("video/hevc".equals(r0) == false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0347, code lost:
        if (((r0 & 126) >> r13) != 39) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x034d, code lost:
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0350, code lost:
        r10.zzC = r0;
        r10.zzA += 5;
        r10.zzz += r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0375, code lost:
        throw com.google.android.gms.internal.ads.zzaha.zzb("Invalid NAL length", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x037a, code lost:
        if (r10.zzC == false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x037d, code lost:
        r10.zzh.zza(r0);
        ((com.google.android.gms.internal.ads.zznp) r11).zza(r10.zzh.zzi(), 0, r10.zzB, false);
        com.google.android.gms.internal.ads.zzov.zzb(r0, r10.zzh, r10.zzB);
        r13 = r10.zzB;
        r0 = com.google.android.gms.internal.ads.zzalw.zza(r10.zzh.zzi(), r10.zzh.zze());
        r10.zzh.zzh("video/hevc".equals(r0.zzf.zzl) ? 1 : 0);
        r10.zzh.zzf(r0);
        com.google.android.gms.internal.ads.zznm.zza(r0, r10.zzh, r10.zzF);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x03f4, code lost:
        r13 = com.google.android.gms.internal.ads.zzov.zza(r0, r11, r0, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x03fe, code lost:
        r10.zzA += r13;
        r10.zzB -= r13;
        r14 = 6;
        r13 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x041b, code lost:
        r0 = r12.zzh();
        r0 = r12.zzk();
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0426, code lost:
        if (r0 == null) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0429, code lost:
        r11 = r0.zzc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0431, code lost:
        r11 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0433, code lost:
        r0.zzv(r0, r0, r10.zzz, 0, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x044a, code lost:
        if (r10.zzn.isEmpty() != false) goto L388;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v244, types: [long] */
    /* JADX WARN: Type inference failed for: r0v296, types: [long] */
    /* JADX WARN: Type inference failed for: r0v385, types: [long] */
    /* JADX WARN: Type inference failed for: r0v392, types: [long] */
    /* JADX WARN: Type inference failed for: r0v394, types: [long] */
    /* JADX WARN: Type inference failed for: r0v398, types: [long] */
    /* JADX WARN: Type inference failed for: r0v404, types: [long] */
    /* JADX WARN: Type inference failed for: r0v407, types: [long] */
    /* JADX WARN: Type inference failed for: r0v409, types: [long] */
    /* JADX WARN: Type inference failed for: r0v432, types: [long] */
    /* JADX WARN: Type inference failed for: r0v434, types: [long] */
    /* JADX WARN: Type inference failed for: r0v468, types: [long] */
    /* JADX WARN: Type inference failed for: r0v470, types: [long] */
    /* JADX WARN: Type inference failed for: r0v474, types: [long] */
    /* JADX WARN: Type inference failed for: r0v476, types: [long] */
    /* JADX WARN: Type inference failed for: r0v478, types: [long] */
    /* JADX WARN: Type inference failed for: r0v480, types: [long] */
    /* JADX WARN: Type inference failed for: r0v482, types: [long] */
    /* JADX WARN: Type inference failed for: r0v604, types: [long] */
    /* JADX WARN: Type inference failed for: r0v619, types: [long] */
    @Override // com.google.android.gms.internal.ads.zznu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzc(com.google.android.gms.internal.ads.zznv r11, com.google.android.gms.internal.ads.zzoq r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 3078
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrk.zzc(com.google.android.gms.internal.ads.zznv, com.google.android.gms.internal.ads.zzoq):int");
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final void zzd(long j, long j2) {
        int size = this.zze.size();
        for (int i = 0; i < size; i++) {
            this.zze.valueAt(i).zzd();
        }
        this.zzn.clear();
        this.zzu = 0;
        this.zzv = j2;
        this.zzm.clear();
        zze();
    }
}
