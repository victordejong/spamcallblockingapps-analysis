package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import com.google.android.gms.ads.AdRequest;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import me.zhanghai.android.materialprogressbar.C3681R;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaca.class */
public final class zzaca implements zzwp {
    public static final zzww zza = zzabw.zza;
    private static final byte[] zzb = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final zzab zzc;
    private int zzA;
    private int zzB;
    private boolean zzC;
    private zzws zzD;
    private zzxt[] zzE;
    private zzxt[] zzF;
    private boolean zzG;
    private final List<zzab> zzd;
    private final SparseArray<zzabz> zze;
    private final zzfd zzf;
    private final zzfd zzg;
    private final zzfd zzh;
    private final byte[] zzi;
    private final zzfd zzj;
    private final zzyx zzk;
    private final zzfd zzl;
    private final ArrayDeque<zzabl> zzm;
    private final ArrayDeque<zzaby> zzn;
    private int zzo;
    private int zzp;
    private long zzq;
    private int zzr;
    private zzfd zzs;
    private long zzt;
    private int zzu;
    private long zzv;
    private long zzw;
    private long zzx;
    private zzabz zzy;
    private int zzz;

    static {
        zzz zzzVar = new zzz();
        zzzVar.zzS("application/x-emsg");
        zzc = zzzVar.zzY();
    }

    public zzaca() {
        this(0, null);
    }

    public zzaca(int i, zzfk zzfkVar) {
        this.zzd = Collections.unmodifiableList(Collections.emptyList());
        this.zzk = new zzyx();
        this.zzl = new zzfd(16);
        this.zzf = new zzfd(zzeu.zza);
        this.zzg = new zzfd(5);
        this.zzh = new zzfd();
        byte[] bArr = new byte[16];
        this.zzi = bArr;
        this.zzj = new zzfd(bArr);
        this.zzm = new ArrayDeque<>();
        this.zzn = new ArrayDeque<>();
        this.zze = new SparseArray<>();
        this.zzw = -9223372036854775807L;
        this.zzv = -9223372036854775807L;
        this.zzx = -9223372036854775807L;
        this.zzD = zzws.zza;
        this.zzE = new zzxt[0];
        this.zzF = new zzxt[0];
    }

    private static int zze(int i) throws zzbj {
        if (i >= 0) {
            return i;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Unexpected negative value: ");
        sb.append(i);
        throw zzbj.zza(sb.toString(), null);
    }

    private static zzs zzf(List<zzabm> list) {
        ArrayList arrayList;
        int size = list.size();
        int i = 0;
        ArrayList arrayList2 = null;
        while (true) {
            arrayList = arrayList2;
            if (i >= size) {
                break;
            }
            zzabm zzabmVar = list.get(i);
            ArrayList arrayList3 = arrayList;
            if (zzabmVar.zzd == 1886614376) {
                arrayList3 = arrayList;
                if (arrayList == null) {
                    arrayList3 = new ArrayList();
                }
                byte[] zzH = zzabmVar.zza.zzH();
                UUID zza2 = zzach.zza(zzH);
                if (zza2 == null) {
                    Log.w("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList3.add(new zzr(zza2, null, "video/mp4", zzH));
                }
            }
            i++;
            arrayList2 = arrayList3;
        }
        if (arrayList == null) {
            return null;
        }
        return new zzs(arrayList);
    }

    private final void zzg() {
        this.zzo = 0;
        this.zzr = 0;
    }

    private static void zzh(zzfd zzfdVar, int i, zzacm zzacmVar) throws zzbj {
        zzfdVar.zzF(i + 8);
        int zze = zzfdVar.zze() & 16777215;
        if ((zze & 1) == 0) {
            boolean z = (zze & 2) != 0;
            int zzn = zzfdVar.zzn();
            if (zzn == 0) {
                Arrays.fill(zzacmVar.zzm, 0, zzacmVar.zze, false);
                return;
            }
            int i2 = zzacmVar.zze;
            if (zzn != i2) {
                throw zzbj.zza(C0082b.m8757e(80, "Senc sample count ", zzn, " is different from fragment sample count", i2), null);
            }
            Arrays.fill(zzacmVar.zzm, 0, zzn, z);
            zzacmVar.zzb(zzfdVar.zza());
            zzfdVar.zzB(zzacmVar.zzo.zzH(), 0, zzacmVar.zzo.zzd());
            zzacmVar.zzo.zzF(0);
            zzacmVar.zzp = false;
            return;
        }
        throw zzbj.zzc("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    /* JADX WARN: Type inference failed for: r0v419, types: [long] */
    /* JADX WARN: Type inference failed for: r0v421, types: [long] */
    /* JADX WARN: Type inference failed for: r0v532, types: [long] */
    /* JADX WARN: Type inference failed for: r0v557, types: [long] */
    /* JADX WARN: Type inference failed for: r0v591, types: [long] */
    /* JADX WARN: Type inference failed for: r0v637, types: [long] */
    /* JADX WARN: Type inference failed for: r0v639, types: [long] */
    /* JADX WARN: Type inference failed for: r0v85, types: [long] */
    /* JADX WARN: Type inference failed for: r0v87, types: [long] */
    private final void zzi(long j) throws zzbj {
        zzaca zzacaVar;
        byte[] bArr;
        SparseArray<zzabz> sparseArray;
        int i;
        zzfd zzfdVar;
        byte[] bArr2;
        zzfd zzfdVar2;
        zzfd zzfdVar3;
        int i2;
        int i3;
        int i4;
        zzaca zzacaVar2 = this;
        zzaca zzacaVar3 = zzacaVar2;
        while (!zzacaVar3.zzm.isEmpty() && zzacaVar3.zzm.peek().zza == j) {
            zzabl pop = zzacaVar3.zzm.pop();
            int i5 = pop.zzd;
            if (i5 == 1836019574) {
                zzs zzf = zzf(pop.zzb);
                zzabl zza2 = pop.zza(1836475768);
                Objects.requireNonNull(zza2);
                SparseArray sparseArray2 = new SparseArray();
                int size = zza2.zzb.size();
                char c = 1;
                for (int i6 = 0; i6 < size; i6++) {
                    zzabm zzabmVar = zza2.zzb.get(i6);
                    int i7 = zzabmVar.zzd;
                    if (i7 == 1953654136) {
                        zzfd zzfdVar4 = zzabmVar.zza;
                        zzfdVar4.zzF(12);
                        Pair create = Pair.create(Integer.valueOf(zzfdVar4.zze()), new zzabv(zzfdVar4.zze() - 1, zzfdVar4.zze(), zzfdVar4.zze(), zzfdVar4.zze()));
                        sparseArray2.put(((Integer) create.first).intValue(), (zzabv) create.second);
                    } else if (i7 == 1835362404) {
                        zzfd zzfdVar5 = zzabmVar.zza;
                        zzfdVar5.zzF(8);
                        c = zzabn.zze(zzfdVar5.zze()) == 0 ? zzfdVar5.zzs() : zzfdVar5.zzt();
                    }
                }
                List<zzacn> zzc2 = zzabu.zzc(pop, new zzxf(), c, zzf, false, false, new zzfpv() { // from class: com.google.android.gms.internal.ads.zzabx
                    @Override // com.google.android.gms.internal.ads.zzfpv
                    public final Object apply(Object obj) {
                        return (zzack) obj;
                    }
                });
                int size2 = zzc2.size();
                if (zzacaVar3.zze.size() == 0) {
                    for (int i8 = 0; i8 < size2; i8++) {
                        zzacn zzacnVar = zzc2.get(i8);
                        zzack zzackVar = zzacnVar.zza;
                        zzacaVar3.zze.put(zzackVar.zza, new zzabz(zzacaVar3.zzD.zzv(i8, zzackVar.zzb), zzacnVar, zzj(sparseArray2, zzackVar.zza)));
                        zzacaVar3.zzw = Math.max(zzacaVar3.zzw, zzackVar.zze);
                    }
                    zzacaVar3.zzD.zzB();
                } else {
                    zzdy.zzf(zzacaVar3.zze.size() == size2);
                    for (int i9 = 0; i9 < size2; i9++) {
                        zzacn zzacnVar2 = zzc2.get(i9);
                        zzack zzackVar2 = zzacnVar2.zza;
                        zzacaVar3.zze.get(zzackVar2.zza).zzh(zzacnVar2, zzj(sparseArray2, zzackVar2.zza));
                    }
                }
            } else {
                if (i5 == 1836019558) {
                    SparseArray<zzabz> sparseArray3 = zzacaVar3.zze;
                    byte[] bArr3 = zzacaVar3.zzi;
                    int size3 = pop.zzc.size();
                    int i10 = 0;
                    zzabl zzablVar = pop;
                    while (i10 < size3) {
                        zzabl zzablVar2 = zzablVar.zzc.get(i10);
                        if (zzablVar2.zzd == 1953653094) {
                            zzabm zzb2 = zzablVar2.zzb(1952868452);
                            Objects.requireNonNull(zzb2);
                            zzfd zzfdVar6 = zzb2.zza;
                            zzfdVar6.zzF(8);
                            int zze = zzfdVar6.zze() & 16777215;
                            zzabz zzabzVar = sparseArray3.get(zzfdVar6.zze());
                            if (zzabzVar == null) {
                                zzabzVar = null;
                            } else {
                                if ((zze & 1) != 0) {
                                    long zzt = zzfdVar6.zzt();
                                    zzacm zzacmVar = zzabzVar.zzb;
                                    zzacmVar.zzb = zzt;
                                    zzacmVar.zzc = zzt;
                                }
                                zzabv zzabvVar = zzabzVar.zze;
                                zzabzVar.zzb.zza = new zzabv((zze & 2) != 0 ? zzfdVar6.zze() - 1 : zzabvVar.zza, (zze & 8) != 0 ? zzfdVar6.zze() : zzabvVar.zzb, (zze & 16) != 0 ? zzfdVar6.zze() : zzabvVar.zzc, (zze & 32) != 0 ? zzfdVar6.zze() : zzabvVar.zzd);
                            }
                            if (zzabzVar != null) {
                                zzacm zzacmVar2 = zzabzVar.zzb;
                                long j2 = zzacmVar2.zzq;
                                boolean z = zzacmVar2.zzr;
                                zzabzVar.zzi();
                                zzabzVar.zzl = true;
                                zzabm zzb3 = zzablVar2.zzb(1952867444);
                                if (zzb3 != null) {
                                    zzfd zzfdVar7 = zzb3.zza;
                                    zzfdVar7.zzF(8);
                                    zzacmVar2.zzq = zzabn.zze(zzfdVar7.zze()) == 1 ? zzfdVar7.zzt() : zzfdVar7.zzs();
                                    zzacmVar2.zzr = true;
                                } else {
                                    zzacmVar2.zzq = j2;
                                    zzacmVar2.zzr = z;
                                }
                                List<zzabm> list = zzablVar2.zzb;
                                int size4 = list.size();
                                int i11 = 0;
                                int i12 = 0;
                                int i13 = 0;
                                while (true) {
                                    i = i13;
                                    if (i11 >= size4) {
                                        break;
                                    }
                                    zzabm zzabmVar2 = list.get(i11);
                                    int i14 = i12;
                                    int i15 = i;
                                    if (zzabmVar2.zzd == 1953658222) {
                                        zzfd zzfdVar8 = zzabmVar2.zza;
                                        zzfdVar8.zzF(12);
                                        int zzn = zzfdVar8.zzn();
                                        i14 = i12;
                                        i15 = i;
                                        if (zzn > 0) {
                                            i15 = i + zzn;
                                            i14 = i12 + 1;
                                        }
                                    }
                                    i11++;
                                    i12 = i14;
                                    i13 = i15;
                                }
                                SparseArray<zzabz> sparseArray4 = sparseArray3;
                                zzabzVar.zzh = 0;
                                zzabzVar.zzg = 0;
                                zzabzVar.zzf = 0;
                                zzacm zzacmVar3 = zzabzVar.zzb;
                                zzacmVar3.zzd = i12;
                                zzacmVar3.zze = i;
                                if (zzacmVar3.zzg.length < i12) {
                                    zzacmVar3.zzf = new long[i12];
                                    zzacmVar3.zzg = new int[i12];
                                }
                                if (zzacmVar3.zzh.length < i) {
                                    int i16 = (i * C3681R.styleable.AppCompatTheme_windowMinWidthMinor) / 100;
                                    zzacmVar3.zzh = new int[i16];
                                    zzacmVar3.zzi = new int[i16];
                                    zzacmVar3.zzj = new long[i16];
                                    zzacmVar3.zzk = new boolean[i16];
                                    zzacmVar3.zzm = new boolean[i16];
                                }
                                int i17 = 0;
                                int i18 = 0;
                                int i19 = size3;
                                int i20 = 0;
                                while (true) {
                                    int i21 = i20;
                                    char c2 = 0;
                                    if (i21 >= size4) {
                                        break;
                                    }
                                    zzabm zzabmVar3 = list.get(i21);
                                    if (zzabmVar3.zzd == 1953658222) {
                                        zzfd zzfdVar9 = zzabmVar3.zza;
                                        zzfdVar9.zzF(8);
                                        int zze2 = zzfdVar9.zze() & 16777215;
                                        zzack zzackVar3 = zzabzVar.zzd.zza;
                                        zzacm zzacmVar4 = zzabzVar.zzb;
                                        zzabv zzabvVar2 = zzacmVar4.zza;
                                        int i22 = zzfn.zza;
                                        zzacmVar4.zzg[i18] = zzfdVar9.zzn();
                                        long[] jArr = zzacmVar4.zzf;
                                        long j3 = zzacmVar4.zzb;
                                        jArr[i18] = j3;
                                        if ((zze2 & 1) != 0) {
                                            jArr[i18] = j3 + zzfdVar9.zze();
                                        }
                                        int i23 = zze2 & 4;
                                        int i24 = zzabvVar2.zzd;
                                        if (i23 != 0) {
                                            i24 = zzfdVar9.zze();
                                        }
                                        int i25 = zze2 & 256;
                                        int i26 = zze2 & AdRequest.MAX_CONTENT_URL_LENGTH;
                                        int i27 = zze2 & 1024;
                                        long[] jArr2 = zzackVar3.zzh;
                                        if (jArr2 != null && jArr2.length == 1 && jArr2[0] == 0) {
                                            c2 = zzfn.zzt(((long[]) zzfn.zzC(zzackVar3.zzi))[0], 1000000L, zzackVar3.zzc);
                                        }
                                        int[] iArr = zzacmVar4.zzh;
                                        int[] iArr2 = zzacmVar4.zzi;
                                        long[] jArr3 = zzacmVar4.zzj;
                                        i3 = i21;
                                        boolean[] zArr = zzacmVar4.zzk;
                                        int i28 = zzacmVar4.zzg[i18] + i17;
                                        long j4 = zzackVar3.zzc;
                                        char c3 = zzacmVar4.zzq;
                                        int i29 = i17;
                                        i17 = i28;
                                        while (i29 < i17) {
                                            int zze3 = i25 != 0 ? zzfdVar9.zze() : zzabvVar2.zzb;
                                            zze(zze3);
                                            int zze4 = i26 != 0 ? zzfdVar9.zze() : zzabvVar2.zzc;
                                            zze(zze4);
                                            if (i27 != 0) {
                                                i4 = zzfdVar9.zze();
                                            } else {
                                                if (i29 == 0) {
                                                    i29 = 0;
                                                    if (i23 != 0) {
                                                        i4 = i24;
                                                        i29 = 0;
                                                    }
                                                }
                                                i4 = zzabvVar2.zzd;
                                            }
                                            if ((zze2 & 2048) != 0) {
                                                iArr2[i29] = (int) ((zzfdVar9.zze() * 1000000) / j4);
                                            } else {
                                                iArr2[i29] = 0;
                                            }
                                            long zzt2 = zzfn.zzt(c3, 1000000L, j4) - c2;
                                            jArr3[i29] = zzt2;
                                            if (!zzacmVar4.zzr) {
                                                jArr3[i29] = zzt2 + zzabzVar.zzd.zzh;
                                            }
                                            iArr[i29] = zze4;
                                            zArr[i29] = 1 == (((i4 >> 16) & 1) ^ 1);
                                            c3 += zze3;
                                            i29++;
                                        }
                                        zzacmVar4.zzq = c3;
                                        i18++;
                                    } else {
                                        i3 = i21;
                                    }
                                    i20 = i3 + 1;
                                }
                                zzabl zzablVar3 = zzablVar;
                                zzack zzackVar4 = zzabzVar.zzd.zza;
                                zzabv zzabvVar3 = zzacmVar2.zza;
                                Objects.requireNonNull(zzabvVar3);
                                zzacl zza3 = zzackVar4.zza(zzabvVar3.zza);
                                zzabm zzb4 = zzablVar2.zzb(1935763834);
                                if (zzb4 != null) {
                                    Objects.requireNonNull(zza3);
                                    zzfd zzfdVar10 = zzb4.zza;
                                    int i30 = zza3.zzd;
                                    zzfdVar10.zzF(8);
                                    if ((zzfdVar10.zze() & 1) == 1) {
                                        zzfdVar10.zzG(8);
                                    }
                                    int zzk = zzfdVar10.zzk();
                                    int zzn2 = zzfdVar10.zzn();
                                    int i31 = zzacmVar2.zze;
                                    if (zzn2 > i31) {
                                        throw zzbj.zza(C0082b.m8757e(78, "Saiz sample count ", zzn2, " is greater than fragment sample count", i31), null);
                                    }
                                    if (zzk == 0) {
                                        boolean[] zArr2 = zzacmVar2.zzm;
                                        int i32 = 0;
                                        int i33 = 0;
                                        while (true) {
                                            i2 = i33;
                                            if (i32 >= zzn2) {
                                                break;
                                            }
                                            int zzk2 = zzfdVar10.zzk();
                                            i33 += zzk2;
                                            zArr2[i32] = zzk2 > i30;
                                            i32++;
                                        }
                                    } else {
                                        i2 = zzk * zzn2;
                                        Arrays.fill(zzacmVar2.zzm, 0, zzn2, zzk > i30);
                                    }
                                    Arrays.fill(zzacmVar2.zzm, zzn2, zzacmVar2.zze, false);
                                    if (i2 > 0) {
                                        zzacmVar2.zzb(i2);
                                    }
                                }
                                zzabm zzb5 = zzablVar2.zzb(1935763823);
                                if (zzb5 != null) {
                                    zzfd zzfdVar11 = zzb5.zza;
                                    zzfdVar11.zzF(8);
                                    int zze5 = zzfdVar11.zze();
                                    if ((zze5 & 1) == 1) {
                                        zzfdVar11.zzG(8);
                                    }
                                    int zzn3 = zzfdVar11.zzn();
                                    if (zzn3 != 1) {
                                        StringBuilder sb = new StringBuilder(40);
                                        sb.append("Unexpected saio entry count: ");
                                        sb.append(zzn3);
                                        throw zzbj.zza(sb.toString(), null);
                                    }
                                    zzacmVar2.zzc += zzabn.zze(zze5) == 0 ? zzfdVar11.zzs() : zzfdVar11.zzt();
                                }
                                zzabm zzb6 = zzablVar2.zzb(1936027235);
                                if (zzb6 != null) {
                                    zzh(zzb6.zza, 0, zzacmVar2);
                                }
                                String str = zza3 != null ? zza3.zzb : null;
                                int i34 = 0;
                                zzfd zzfdVar12 = null;
                                zzfd zzfdVar13 = null;
                                while (true) {
                                    zzfdVar = zzfdVar13;
                                    if (i34 >= zzablVar2.zzb.size()) {
                                        break;
                                    }
                                    zzabm zzabmVar4 = zzablVar2.zzb.get(i34);
                                    zzfd zzfdVar14 = zzabmVar4.zza;
                                    int i35 = zzabmVar4.zzd;
                                    if (i35 == 1935828848) {
                                        zzfdVar14.zzF(12);
                                        zzfdVar2 = zzfdVar12;
                                        zzfdVar3 = zzfdVar;
                                        if (zzfdVar14.zze() == 1936025959) {
                                            zzfdVar2 = zzfdVar14;
                                            zzfdVar3 = zzfdVar;
                                        }
                                    } else {
                                        zzfdVar2 = zzfdVar12;
                                        zzfdVar3 = zzfdVar;
                                        if (i35 == 1936158820) {
                                            zzfdVar14.zzF(12);
                                            zzfdVar2 = zzfdVar12;
                                            zzfdVar3 = zzfdVar;
                                            if (zzfdVar14.zze() == 1936025959) {
                                                zzfdVar3 = zzfdVar14;
                                                zzfdVar2 = zzfdVar12;
                                            }
                                        }
                                    }
                                    i34++;
                                    zzfdVar12 = zzfdVar2;
                                    zzfdVar13 = zzfdVar3;
                                }
                                if (zzfdVar12 != null && zzfdVar != null) {
                                    zzfdVar12.zzF(8);
                                    int zze6 = zzfdVar12.zze();
                                    zzfdVar12.zzG(4);
                                    if (zzabn.zze(zze6) == 1) {
                                        zzfdVar12.zzG(4);
                                    }
                                    if (zzfdVar12.zze() != 1) {
                                        throw zzbj.zzc("Entry count in sbgp != 1 (unsupported).");
                                    }
                                    zzfdVar.zzF(8);
                                    int zze7 = zzabn.zze(zzfdVar.zze());
                                    zzfdVar.zzG(4);
                                    if (zze7 == 1) {
                                        if (zzfdVar.zzs() == 0) {
                                            throw zzbj.zzc("Variable length description in sgpd found (unsupported)");
                                        }
                                    } else if (zze7 >= 2) {
                                        zzfdVar.zzG(4);
                                    }
                                    if (zzfdVar.zzs() != 1) {
                                        throw zzbj.zzc("Entry count in sgpd != 1 (unsupported).");
                                    }
                                    zzfdVar.zzG(1);
                                    int zzk3 = zzfdVar.zzk();
                                    if (zzfdVar.zzk() == 1) {
                                        int zzk4 = zzfdVar.zzk();
                                        byte[] bArr4 = new byte[16];
                                        zzfdVar.zzB(bArr4, 0, 16);
                                        if (zzk4 == 0) {
                                            int zzk5 = zzfdVar.zzk();
                                            byte[] bArr5 = new byte[zzk5];
                                            zzfdVar.zzB(bArr5, 0, zzk5);
                                            bArr2 = bArr5;
                                        } else {
                                            bArr2 = null;
                                        }
                                        zzacmVar2.zzl = true;
                                        zzacmVar2.zzn = new zzacl(true, str, zzk4, bArr4, (zzk3 & 240) >> 4, zzk3 & 15, bArr2);
                                    }
                                }
                                int size5 = zzablVar2.zzb.size();
                                byte[] bArr6 = bArr3;
                                for (int i36 = 0; i36 < size5; i36++) {
                                    zzabm zzabmVar5 = zzablVar2.zzb.get(i36);
                                    if (zzabmVar5.zzd == 1970628964) {
                                        zzfd zzfdVar15 = zzabmVar5.zza;
                                        zzfdVar15.zzF(8);
                                        zzfdVar15.zzB(bArr6, 0, 16);
                                        if (Arrays.equals(bArr6, zzb)) {
                                            zzh(zzfdVar15, 16, zzacmVar2);
                                        }
                                    }
                                }
                                bArr = bArr6;
                                sparseArray = sparseArray4;
                                size3 = i19;
                                zzablVar = zzablVar3;
                                i10++;
                                byte[] bArr7 = bArr;
                                sparseArray3 = sparseArray;
                                bArr3 = bArr7;
                            }
                        }
                        byte[] bArr8 = bArr3;
                        sparseArray = sparseArray3;
                        bArr = bArr8;
                        i10++;
                        byte[] bArr72 = bArr;
                        sparseArray3 = sparseArray;
                        bArr3 = bArr72;
                    }
                    zzs zzf2 = zzf(zzablVar.zzb);
                    zzacaVar2 = this;
                    if (zzf2 != null) {
                        int size6 = zzacaVar2.zze.size();
                        for (int i37 = 0; i37 < size6; i37++) {
                            zzabz valueAt = zzacaVar2.zze.valueAt(i37);
                            zzack zzackVar5 = valueAt.zzd.zza;
                            zzabv zzabvVar4 = valueAt.zzb.zza;
                            int i38 = zzfn.zza;
                            zzacl zza4 = zzackVar5.zza(zzabvVar4.zza);
                            zzs zza5 = zzf2.zza(zza4 != null ? zza4.zzb : null);
                            zzz zzb7 = valueAt.zzd.zza.zzf.zzb();
                            zzb7.zzB(zza5);
                            valueAt.zza.zzk(zzb7.zzY());
                        }
                    }
                    if (zzacaVar2.zzv != -9223372036854775807L) {
                        int size7 = zzacaVar2.zze.size();
                        for (int i39 = 0; i39 < size7; i39++) {
                            zzabz valueAt2 = zzacaVar2.zze.valueAt(i39);
                            long j5 = zzacaVar2.zzv;
                            int i40 = valueAt2.zzf;
                            while (true) {
                                zzacm zzacmVar5 = valueAt2.zzb;
                                if (i40 < zzacmVar5.zze && zzacmVar5.zza(i40) < j5) {
                                    if (valueAt2.zzb.zzk[i40]) {
                                        valueAt2.zzi = i40;
                                    }
                                    i40++;
                                }
                            }
                        }
                        zzacaVar2.zzv = -9223372036854775807L;
                    }
                    zzacaVar = zzacaVar2;
                } else {
                    zzaca zzacaVar4 = zzacaVar2;
                    zzacaVar = zzacaVar3;
                    zzacaVar2 = zzacaVar4;
                    if (!zzacaVar3.zzm.isEmpty()) {
                        zzacaVar3.zzm.peek().zzc(pop);
                        zzacaVar2 = zzacaVar4;
                        zzacaVar = zzacaVar3;
                    }
                }
                zzacaVar3 = zzacaVar;
            }
        }
        zzg();
    }

    private static final zzabv zzj(SparseArray<zzabv> sparseArray, int i) {
        if (sparseArray.size() == 1) {
            return sparseArray.valueAt(0);
        }
        zzabv zzabvVar = sparseArray.get(i);
        Objects.requireNonNull(zzabvVar);
        return zzabvVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x048a, code lost:
        if (r12.zzn.isEmpty() != false) goto L391;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x048d, code lost:
        r0 = r12.zzn.removeFirst();
        r12.zzu -= r0.zzb;
        r0 = r0.zza;
        r0 = r12.zzE;
        r0 = r0.length;
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x04bb, code lost:
        if (r14 >= r0) goto L392;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x04be, code lost:
        r0[r14].zzs(r0 + r0, 1, r0.zzb, r12.zzu, null);
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x04e1, code lost:
        if (r17.zzk() != false) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x04e4, code lost:
        r12.zzy = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x04e9, code lost:
        r12.zzo = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x04ee, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x013c, code lost:
        if (r12.zzo != 3) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:401:?, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x013f, code lost:
        r0 = r17.zzb();
        r12.zzz = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0156, code lost:
        if (r17.zzf >= r17.zzi) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0159, code lost:
        ((com.google.android.gms.internal.ads.zzwk) r13).zzo(r0, false);
        r0 = r17.zzf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x016b, code lost:
        if (r0 != null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0171, code lost:
        r0 = r17.zzb.zzo;
        r0 = r0.zzd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0182, code lost:
        if (r0 == 0) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0185, code lost:
        r0.zzG(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0198, code lost:
        if (r17.zzb.zzc(r17.zzf) == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x019b, code lost:
        r0.zzG(r0.zzo() * 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01ab, code lost:
        if (r17.zzk() != false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01ae, code lost:
        r12.zzy = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01b3, code lost:
        r12.zzo = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01c7, code lost:
        if (r17.zzd.zza.zzg != 1) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01ca, code lost:
        r12.zzz = r0 - 8;
        ((com.google.android.gms.internal.ads.zzwk) r13).zzo(8, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01f2, code lost:
        if ("audio/ac4".equals(r17.zzd.zza.zzf.zzm) == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01f5, code lost:
        r12.zzA = r17.zzc(r12.zzz, 7);
        com.google.android.gms.internal.ads.zzvy.zzb(r12.zzz, r12.zzj);
        com.google.android.gms.internal.ads.zzxr.zzb(r17.zza, r12.zzj, 7);
        r14 = r12.zzA + 7;
        r12.zzA = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x022f, code lost:
        r14 = r17.zzc(r12.zzz, 0);
        r12.zzA = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0241, code lost:
        r12.zzz += r14;
        r12.zzo = 4;
        r12.zzB = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0256, code lost:
        r0 = r17.zzd.zza;
        r0 = r17.zza;
        r0 = r17.zze();
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0271, code lost:
        if (r0.zzj != 0) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0274, code lost:
        r0 = r12.zzA;
        r0 = r12.zzz;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0284, code lost:
        if (r0 >= r0) goto L383;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0287, code lost:
        r12.zzA += com.google.android.gms.internal.ads.zzxr.zza(r0, r13, r0 - r0, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x02a3, code lost:
        r0 = r12.zzg.zzH();
        r0[0] = (byte) 0;
        r0[1] = (byte) 0;
        r0[2] = (byte) 0;
        r0 = r0.zzj;
        r0 = 4 - r0;
        r14 = 1;
        r15 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x02da, code lost:
        if (r12.zzA >= r12.zzz) goto L386;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x02dd, code lost:
        r0 = r12.zzB;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x02e5, code lost:
        if (r0 != 0) goto L384;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x02e8, code lost:
        ((com.google.android.gms.internal.ads.zzwk) r13).zzn(r0, r0, r0 + 1, false);
        r12.zzg.zzF(0);
        r0 = r12.zzg.zze();
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x030c, code lost:
        if (r0 <= 0) goto L385;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x030f, code lost:
        r12.zzB = r0 - 1;
        r12.zzf.zzF(0);
        com.google.android.gms.internal.ads.zzxr.zzb(r0, r12.zzf, 4);
        com.google.android.gms.internal.ads.zzxr.zzb(r0, r12.zzg, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0339, code lost:
        if (r12.zzF.length <= 0) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x033c, code lost:
        r0 = r0.zzf.zzm;
        r0 = r0[4];
        r0 = com.google.android.gms.internal.ads.zzeu.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0358, code lost:
        if ("video/avc".equals(r0) == false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0362, code lost:
        if ((r0 & 31) == r15) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x036d, code lost:
        if ("video/hevc".equals(r0) == false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x037a, code lost:
        if (((r0 & 126) >> r14) != 39) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x037d, code lost:
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0383, code lost:
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0386, code lost:
        r12.zzC = r0;
        r12.zzA += 5;
        r12.zzz += r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x03ab, code lost:
        throw com.google.android.gms.internal.ads.zzbj.zza("Invalid NAL length", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x03b0, code lost:
        if (r12.zzC == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x03b3, code lost:
        r12.zzh.zzC(r0);
        ((com.google.android.gms.internal.ads.zzwk) r13).zzn(r12.zzh.zzH(), 0, r12.zzB, false);
        com.google.android.gms.internal.ads.zzxr.zzb(r0, r12.zzh, r12.zzB);
        r14 = r12.zzB;
        r0 = com.google.android.gms.internal.ads.zzeu.zzb(r12.zzh.zzH(), r12.zzh.zzd());
        r12.zzh.zzF("video/hevc".equals(r0.zzf.zzm) ? 1 : 0);
        r12.zzh.zzE(r0);
        com.google.android.gms.internal.ads.zzwh.zza(r0, r12.zzh, r12.zzF);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x042c, code lost:
        r14 = com.google.android.gms.internal.ads.zzxr.zza(r0, r13, r0, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0437, code lost:
        r12.zzA += r14;
        r12.zzB -= r14;
        r15 = 6;
        r14 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0457, code lost:
        r0 = r17.zza();
        r0 = r17.zzf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0465, code lost:
        if (r0 == null) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0468, code lost:
        r11 = r0.zzc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0470, code lost:
        r11 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0472, code lost:
        r0.zzs(r0, r0, r12.zzz, 0, r11);
     */
    /* JADX WARN: Type inference failed for: r0v247, types: [long] */
    /* JADX WARN: Type inference failed for: r0v300, types: [long] */
    /* JADX WARN: Type inference failed for: r0v395, types: [long] */
    /* JADX WARN: Type inference failed for: r0v402, types: [long] */
    /* JADX WARN: Type inference failed for: r0v404, types: [long] */
    /* JADX WARN: Type inference failed for: r0v409, types: [long] */
    /* JADX WARN: Type inference failed for: r0v415, types: [long] */
    /* JADX WARN: Type inference failed for: r0v418, types: [long] */
    /* JADX WARN: Type inference failed for: r0v420, types: [long] */
    /* JADX WARN: Type inference failed for: r0v443, types: [long] */
    /* JADX WARN: Type inference failed for: r0v445, types: [long] */
    /* JADX WARN: Type inference failed for: r0v486, types: [long] */
    /* JADX WARN: Type inference failed for: r0v488, types: [long] */
    /* JADX WARN: Type inference failed for: r0v492, types: [long] */
    /* JADX WARN: Type inference failed for: r0v494, types: [long] */
    /* JADX WARN: Type inference failed for: r0v496, types: [long] */
    /* JADX WARN: Type inference failed for: r0v498, types: [long] */
    /* JADX WARN: Type inference failed for: r0v500, types: [long] */
    /* JADX WARN: Type inference failed for: r0v622, types: [long] */
    /* JADX WARN: Type inference failed for: r0v637, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzwp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(com.google.android.gms.internal.ads.zzwq r11, com.google.android.gms.internal.ads.zzxm r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 3295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaca.zza(com.google.android.gms.internal.ads.zzwq, com.google.android.gms.internal.ads.zzxm):int");
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final void zzb(zzws zzwsVar) {
        this.zzD = zzwsVar;
        zzg();
        zzxt[] zzxtVarArr = new zzxt[2];
        this.zzE = zzxtVarArr;
        int i = 0;
        zzxt[] zzxtVarArr2 = (zzxt[]) zzfn.zzaa(zzxtVarArr, 0);
        this.zzE = zzxtVarArr2;
        for (zzxt zzxtVar : zzxtVarArr2) {
            zzxtVar.zzk(zzc);
        }
        this.zzF = new zzxt[this.zzd.size()];
        int i2 = 100;
        while (i < this.zzF.length) {
            zzxt zzv = this.zzD.zzv(i2, 3);
            zzv.zzk(this.zzd.get(i));
            this.zzF[i] = zzv;
            i++;
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final void zzc(long j, long j2) {
        int size = this.zze.size();
        for (int i = 0; i < size; i++) {
            this.zze.valueAt(i).zzi();
        }
        this.zzn.clear();
        this.zzu = 0;
        this.zzv = j2;
        this.zzm.clear();
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final boolean zzd(zzwq zzwqVar) throws IOException {
        return zzacj.zza(zzwqVar);
    }
}
