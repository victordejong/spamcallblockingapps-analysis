package com.google.android.gms.internal.ads;

import android.util.Pair;
import android.util.SparseArray;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Stack;
import kotlin.jvm.internal.LongCompanionObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzlh.class */
public final class zzlh implements zzka {
    private static final zzkb zzapk = new zzlk();
    private static final int zzaxj = zzpt.zzbh("seig");
    private static final byte[] zzaxk = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private final int flags;
    private long zzaip;
    private final zzpn zzapr;
    private int zzarg;
    private int zzarh;
    private zzkc zzark;
    private final zzls zzaxl;
    private final SparseArray<zzlm> zzaxm;
    private final zzpn zzaxn;
    private final zzpn zzaxo;
    private final zzpn zzaxp;
    private final zzpr zzaxq;
    private final zzpn zzaxr;
    private final byte[] zzaxs;
    private final Stack<zzkv> zzaxt;
    private final LinkedList<zzlj> zzaxu;
    private int zzaxv;
    private int zzaxw;
    private long zzaxx;
    private int zzaxy;
    private zzpn zzaxz;
    private long zzaya;
    private int zzayb;
    private long zzayc;
    private zzlm zzayd;
    private int zzaye;
    private boolean zzayf;
    private zzkh zzayg;
    private zzkh[] zzayh;
    private boolean zzayi;

    public zzlh() {
        this(0);
    }

    private zzlh(int i) {
        this(0, null);
    }

    private zzlh(int i, zzpr zzprVar) {
        this(0, null, null);
    }

    private zzlh(int i, zzpr zzprVar, zzls zzlsVar) {
        this.flags = 0;
        this.zzaxq = null;
        this.zzaxl = null;
        this.zzaxr = new zzpn(16);
        this.zzapr = new zzpn(zzpm.zzbjt);
        this.zzaxn = new zzpn(5);
        this.zzaxo = new zzpn();
        this.zzaxp = new zzpn(1);
        this.zzaxs = new byte[16];
        this.zzaxt = new Stack<>();
        this.zzaxu = new LinkedList<>();
        this.zzaxm = new SparseArray<>();
        this.zzaip = -9223372036854775807L;
        this.zzayc = -9223372036854775807L;
        zzhb();
    }

    private static void zza(zzpn zzpnVar, int i, zzlu zzluVar) throws zzhw {
        zzpnVar.zzbi(i + 8);
        int zzas = zzkw.zzas(zzpnVar.readInt());
        if ((zzas & 1) == 0) {
            boolean z = (zzas & 2) != 0;
            int zzja = zzpnVar.zzja();
            if (zzja == zzluVar.zzaxc) {
                Arrays.fill(zzluVar.zzbba, 0, zzja, z);
                zzluVar.zzau(zzpnVar.zziv());
                zzpnVar.zze(zzluVar.zzbbd.data, 0, zzluVar.zzbbc);
                zzluVar.zzbbd.zzbi(0);
                zzluVar.zzbbe = false;
                return;
            }
            int i2 = zzluVar.zzaxc;
            StringBuilder sb = new StringBuilder(41);
            sb.append("Length mismatch: ");
            sb.append(zzja);
            sb.append(", ");
            sb.append(i2);
            throw new zzhw(sb.toString());
        }
        throw new zzhw("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0120  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzjo zzb(java.util.List<com.google.android.gms.internal.ads.zzky> r7) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlh.zzb(java.util.List):com.google.android.gms.internal.ads.zzjo");
    }

    /* JADX WARN: Type inference failed for: r0v113, types: [long] */
    /* JADX WARN: Type inference failed for: r0v115, types: [long] */
    /* JADX WARN: Type inference failed for: r0v191, types: [long] */
    /* JADX WARN: Type inference failed for: r0v340, types: [long] */
    /* JADX WARN: Type inference failed for: r0v342, types: [long] */
    /* JADX WARN: Type inference failed for: r0v476, types: [long] */
    /* JADX WARN: Type inference failed for: r0v500, types: [long] */
    /* JADX WARN: Type inference failed for: r0v515, types: [long] */
    /* JADX WARN: Type inference failed for: r0v579, types: [long] */
    /* JADX WARN: Type inference failed for: r0v581, types: [long] */
    private final void zzeb(long j) throws zzhw {
        zzls zza;
        int i;
        int i2;
        byte[] bArr;
        zzkv zzkvVar;
        int i3;
        int i4;
        int i5;
        int i6;
        zzlh zzlhVar = this;
        while (!zzlhVar.zzaxt.isEmpty() && zzlhVar.zzaxt.peek().zzasu == j) {
            zzkv pop = zzlhVar.zzaxt.pop();
            if (pop.type == zzkw.zzaty) {
                zzpg.checkState(true, "Unexpected moov box.");
                zzjo zzb = zzb(pop.zzasv);
                zzkv zzaq = pop.zzaq(zzkw.zzauj);
                SparseArray sparseArray = new SparseArray();
                int size = zzaq.zzasv.size();
                char c = 1;
                for (int i7 = 0; i7 < size; i7++) {
                    zzky zzkyVar = zzaq.zzasv.get(i7);
                    if (zzkyVar.type == zzkw.zzatv) {
                        zzpn zzpnVar = zzkyVar.zzawt;
                        zzpnVar.zzbi(12);
                        Pair create = Pair.create(Integer.valueOf(zzpnVar.readInt()), new zzlg(zzpnVar.zzja() - 1, zzpnVar.zzja(), zzpnVar.zzja(), zzpnVar.readInt()));
                        sparseArray.put(((Integer) create.first).intValue(), (zzlg) create.second);
                    } else if (zzkyVar.type == zzkw.zzauk) {
                        zzpn zzpnVar2 = zzkyVar.zzawt;
                        zzpnVar2.zzbi(8);
                        c = zzkw.zzar(zzpnVar2.readInt()) == 0 ? zzpnVar2.zzix() : zzpnVar2.zzjb();
                    }
                }
                SparseArray sparseArray2 = new SparseArray();
                int size2 = pop.zzasw.size();
                for (int i8 = 0; i8 < size2; i8++) {
                    zzkv zzkvVar2 = pop.zzasw.get(i8);
                    if (zzkvVar2.type == zzkw.zzaua && (zza = zzkx.zza(zzkvVar2, pop.zzap(zzkw.zzatz), (long) c, zzb, false)) != null) {
                        sparseArray2.put(zza.f129id, zza);
                    }
                }
                int size3 = sparseArray2.size();
                if (zzlhVar.zzaxm.size() == 0) {
                    for (int i9 = 0; i9 < size3; i9++) {
                        zzls zzlsVar = (zzls) sparseArray2.valueAt(i9);
                        zzlm zzlmVar = new zzlm(zzlhVar.zzark.zzc(i9, zzlsVar.type));
                        zzlmVar.zza(zzlsVar, (zzlg) sparseArray.get(zzlsVar.f129id));
                        zzlhVar.zzaxm.put(zzlsVar.f129id, zzlmVar);
                        zzlhVar.zzaip = Math.max(zzlhVar.zzaip, zzlsVar.zzaip);
                    }
                    if ((zzlhVar.flags & 4) != 0 && zzlhVar.zzayg == null) {
                        zzkh zzc = zzlhVar.zzark.zzc(zzlhVar.zzaxm.size(), 4);
                        zzlhVar.zzayg = zzc;
                        zzc.zze(zzht.zza((String) null, "application/x-emsg", (long) LongCompanionObject.MAX_VALUE));
                    }
                    if ((zzlhVar.flags & 8) != 0 && zzlhVar.zzayh == null) {
                        zzkh zzc2 = zzlhVar.zzark.zzc(zzlhVar.zzaxm.size() + 1, 3);
                        zzc2.zze(zzht.zza((String) null, "application/cea-608", (String) null, -1, 0, (String) null, (zzjo) null));
                        zzlhVar.zzayh = new zzkh[]{zzc2};
                    }
                    zzlhVar.zzark.zzgs();
                } else {
                    zzpg.checkState(zzlhVar.zzaxm.size() == size3);
                    for (int i10 = 0; i10 < size3; i10++) {
                        zzls zzlsVar2 = (zzls) sparseArray2.valueAt(i10);
                        zzlhVar.zzaxm.get(zzlsVar2.f129id).zza(zzlsVar2, (zzlg) sparseArray.get(zzlsVar2.f129id));
                    }
                }
            } else if (pop.type == zzkw.zzauh) {
                SparseArray<zzlm> sparseArray3 = zzlhVar.zzaxm;
                int i11 = zzlhVar.flags;
                byte[] bArr2 = zzlhVar.zzaxs;
                int size4 = pop.zzasw.size();
                int i12 = 0;
                zzkv zzkvVar3 = pop;
                while (i12 < size4) {
                    zzkv zzkvVar4 = zzkvVar3.zzasw.get(i12);
                    if (zzkvVar4.type == zzkw.zzaui) {
                        zzpn zzpnVar3 = zzkvVar4.zzap(zzkw.zzatu).zzawt;
                        zzpnVar3.zzbi(8);
                        int zzas = zzkw.zzas(zzpnVar3.readInt());
                        int readInt = zzpnVar3.readInt();
                        if ((i11 & 16) != 0) {
                            readInt = 0;
                        }
                        zzlm zzlmVar2 = sparseArray3.get(readInt);
                        if (zzlmVar2 == null) {
                            zzlmVar2 = null;
                        } else {
                            if ((zzas & 1) != 0) {
                                long zzjb = zzpnVar3.zzjb();
                                zzlmVar2.zzazr.zzbaq = zzjb;
                                zzlmVar2.zzazr.zzbar = zzjb;
                            }
                            zzlg zzlgVar = zzlmVar2.zzazt;
                            zzlmVar2.zzazr.zzbao = new zzlg((zzas & 2) != 0 ? zzpnVar3.zzja() - 1 : zzlgVar.zzaxi, (zzas & 8) != 0 ? zzpnVar3.zzja() : zzlgVar.duration, (zzas & 16) != 0 ? zzpnVar3.zzja() : zzlgVar.size, (zzas & 32) != 0 ? zzpnVar3.zzja() : zzlgVar.flags);
                        }
                        if (zzlmVar2 != null) {
                            zzlu zzluVar = zzlmVar2.zzazr;
                            ?? r0 = zzluVar.zzbbf;
                            zzlmVar2.reset();
                            char c2 = r0;
                            if (zzkvVar4.zzap(zzkw.zzatt) != null) {
                                c2 = r0;
                                if ((i11 & 2) == 0) {
                                    zzpn zzpnVar4 = zzkvVar4.zzap(zzkw.zzatt).zzawt;
                                    zzpnVar4.zzbi(8);
                                    c2 = zzkw.zzar(zzpnVar4.readInt()) == 1 ? zzpnVar4.zzjb() : zzpnVar4.zzix();
                                }
                            }
                            List<zzky> list = zzkvVar4.zzasv;
                            int size5 = list.size();
                            int i13 = 0;
                            int i14 = 0;
                            int i15 = 0;
                            while (i15 < size5) {
                                zzky zzkyVar2 = list.get(i15);
                                if (zzkyVar2.type == zzkw.zzatw) {
                                    zzpn zzpnVar5 = zzkyVar2.zzawt;
                                    zzpnVar5.zzbi(12);
                                    int zzja = zzpnVar5.zzja();
                                    i6 = i13;
                                    i5 = i14;
                                    if (zzja > 0) {
                                        i6 = i13 + zzja;
                                        i5 = i14 + 1;
                                    }
                                } else {
                                    i5 = i14;
                                    i6 = i13;
                                }
                                i15++;
                                i13 = i6;
                                i14 = i5;
                            }
                            int i16 = size4;
                            zzlmVar2.zzazw = 0;
                            zzlmVar2.zzazv = 0;
                            zzlmVar2.zzazu = 0;
                            zzlu zzluVar2 = zzlmVar2.zzazr;
                            zzluVar2.zzbas = i14;
                            zzluVar2.zzaxc = i13;
                            if (zzluVar2.zzbau == null || zzluVar2.zzbau.length < i14) {
                                zzluVar2.zzbat = new long[i14];
                                zzluVar2.zzbau = new int[i14];
                            }
                            if (zzluVar2.zzbav == null || zzluVar2.zzbav.length < i13) {
                                int i17 = (i13 * 125) / 100;
                                zzluVar2.zzbav = new int[i17];
                                zzluVar2.zzbaw = new int[i17];
                                zzluVar2.zzbax = new long[i17];
                                zzluVar2.zzbay = new boolean[i17];
                                zzluVar2.zzbba = new boolean[i17];
                            }
                            int i18 = 0;
                            int i19 = 0;
                            zzlm zzlmVar3 = zzlmVar2;
                            byte[] bArr3 = bArr2;
                            int i20 = i11;
                            int i21 = 0;
                            while (true) {
                                int i22 = i21;
                                char c3 = 0;
                                if (i22 >= size5) {
                                    break;
                                }
                                zzky zzkyVar3 = list.get(i22);
                                if (zzkyVar3.type == zzkw.zzatw) {
                                    zzpn zzpnVar6 = zzkyVar3.zzawt;
                                    zzpnVar6.zzbi(8);
                                    int zzas2 = zzkw.zzas(zzpnVar6.readInt());
                                    zzls zzlsVar3 = zzlmVar3.zzazs;
                                    zzlu zzluVar3 = zzlmVar3.zzazr;
                                    zzlg zzlgVar2 = zzluVar3.zzbao;
                                    zzluVar3.zzbau[i18] = zzpnVar6.zzja();
                                    zzluVar3.zzbat[i18] = zzluVar3.zzbaq;
                                    if ((zzas2 & 1) != 0) {
                                        long[] jArr = zzluVar3.zzbat;
                                        jArr[i18] = jArr[i18] + zzpnVar6.readInt();
                                    }
                                    boolean z = (zzas2 & 4) != 0;
                                    int i23 = zzlgVar2.flags;
                                    if (z) {
                                        i23 = zzpnVar6.zzja();
                                    }
                                    boolean z2 = (zzas2 & 256) != 0;
                                    boolean z3 = (zzas2 & 512) != 0;
                                    boolean z4 = (zzas2 & 1024) != 0;
                                    boolean z5 = (zzas2 & 2048) != 0;
                                    if (zzlsVar3.zzbal != null && zzlsVar3.zzbal.length == 1 && zzlsVar3.zzbal[0] == 0) {
                                        c3 = zzpt.zza(zzlsVar3.zzbam[0], 1000L, zzlsVar3.zzdf);
                                    }
                                    int[] iArr = zzluVar3.zzbav;
                                    int[] iArr2 = zzluVar3.zzbaw;
                                    long[] jArr2 = zzluVar3.zzbax;
                                    i4 = i22;
                                    boolean[] zArr = zzluVar3.zzbay;
                                    boolean z6 = zzlsVar3.type == 2 && (i20 & 1) != 0;
                                    int i24 = zzluVar3.zzbau[i18] + i19;
                                    long j2 = zzlsVar3.zzdf;
                                    char c4 = i18 > 0 ? zzluVar3.zzbbf : c2;
                                    while (i19 < i24) {
                                        int zzja2 = z2 ? zzpnVar6.zzja() : zzlgVar2.duration;
                                        int zzja3 = z3 ? zzpnVar6.zzja() : zzlgVar2.size;
                                        int readInt2 = (i19 != 0 || !z) ? z4 ? zzpnVar6.readInt() : zzlgVar2.flags : i23;
                                        if (z5) {
                                            iArr2[i19] = (int) ((zzpnVar6.readInt() * 1000) / j2);
                                        } else {
                                            iArr2[i19] = 0;
                                        }
                                        jArr2[i19] = zzpt.zza(c4, 1000L, j2) - c3;
                                        iArr[i19] = zzja3;
                                        zArr[i19] = ((readInt2 >> 16) & 1) == 0 && (!z6 || i19 == 0);
                                        c4 += zzja2;
                                        i19++;
                                    }
                                    zzluVar3.zzbbf = c4;
                                    i19 = i24;
                                    i18++;
                                } else {
                                    i4 = i22;
                                }
                                i21 = i4 + 1;
                            }
                            zzkv zzkvVar5 = zzkvVar3;
                            i = i12;
                            zzky zzap = zzkvVar4.zzap(zzkw.zzauz);
                            if (zzap != null) {
                                zzlr zzlrVar = zzlmVar3.zzazs.zzbak[zzluVar.zzbao.zzaxi];
                                zzpn zzpnVar7 = zzap.zzawt;
                                int i25 = zzlrVar.zzbag;
                                zzpnVar7.zzbi(8);
                                if ((zzkw.zzas(zzpnVar7.readInt()) & 1) == 1) {
                                    zzpnVar7.zzbj(8);
                                }
                                int readUnsignedByte = zzpnVar7.readUnsignedByte();
                                int zzja4 = zzpnVar7.zzja();
                                if (zzja4 != zzluVar.zzaxc) {
                                    int i26 = zzluVar.zzaxc;
                                    StringBuilder sb = new StringBuilder(41);
                                    sb.append("Length mismatch: ");
                                    sb.append(zzja4);
                                    sb.append(", ");
                                    sb.append(i26);
                                    throw new zzhw(sb.toString());
                                }
                                if (readUnsignedByte == 0) {
                                    boolean[] zArr2 = zzluVar.zzbba;
                                    int i27 = 0;
                                    int i28 = 0;
                                    while (true) {
                                        i3 = i28;
                                        if (i27 >= zzja4) {
                                            break;
                                        }
                                        int readUnsignedByte2 = zzpnVar7.readUnsignedByte();
                                        i28 += readUnsignedByte2;
                                        zArr2[i27] = readUnsignedByte2 > i25;
                                        i27++;
                                    }
                                } else {
                                    i3 = (readUnsignedByte * zzja4) + 0;
                                    Arrays.fill(zzluVar.zzbba, 0, zzja4, readUnsignedByte > i25);
                                }
                                zzluVar.zzau(i3);
                            }
                            zzky zzap2 = zzkvVar4.zzap(zzkw.zzava);
                            if (zzap2 != null) {
                                zzpn zzpnVar8 = zzap2.zzawt;
                                zzpnVar8.zzbi(8);
                                int readInt3 = zzpnVar8.readInt();
                                if ((zzkw.zzas(readInt3) & 1) == 1) {
                                    zzpnVar8.zzbj(8);
                                }
                                int zzja5 = zzpnVar8.zzja();
                                if (zzja5 != 1) {
                                    StringBuilder sb2 = new StringBuilder(40);
                                    sb2.append("Unexpected saio entry count: ");
                                    sb2.append(zzja5);
                                    throw new zzhw(sb2.toString());
                                }
                                zzluVar.zzbar += zzkw.zzar(readInt3) == 0 ? zzpnVar8.zzix() : zzpnVar8.zzjb();
                            }
                            zzky zzap3 = zzkvVar4.zzap(zzkw.zzave);
                            if (zzap3 != null) {
                                zza(zzap3.zzawt, 0, zzluVar);
                            }
                            zzky zzap4 = zzkvVar4.zzap(zzkw.zzavb);
                            zzky zzap5 = zzkvVar4.zzap(zzkw.zzavc);
                            if (zzap4 != null && zzap5 != null) {
                                zzpn zzpnVar9 = zzap4.zzawt;
                                zzpn zzpnVar10 = zzap5.zzawt;
                                zzpnVar9.zzbi(8);
                                int readInt4 = zzpnVar9.readInt();
                                int readInt5 = zzpnVar9.readInt();
                                int i29 = zzaxj;
                                if (readInt5 == i29) {
                                    if (zzkw.zzar(readInt4) == 1) {
                                        zzpnVar9.zzbj(4);
                                    }
                                    if (zzpnVar9.readInt() != 1) {
                                        throw new zzhw("Entry count in sbgp != 1 (unsupported).");
                                    }
                                    zzpnVar10.zzbi(8);
                                    int readInt6 = zzpnVar10.readInt();
                                    if (zzpnVar10.readInt() == i29) {
                                        int zzar = zzkw.zzar(readInt6);
                                        if (zzar == 1) {
                                            if (zzpnVar10.zzix() == 0) {
                                                throw new zzhw("Variable length decription in sgpd found (unsupported)");
                                            }
                                        } else if (zzar >= 2) {
                                            zzpnVar10.zzbj(4);
                                        }
                                        if (zzpnVar10.zzix() != 1) {
                                            throw new zzhw("Entry count in sgpd != 1 (unsupported).");
                                        }
                                        zzpnVar10.zzbj(2);
                                        if (zzpnVar10.readUnsignedByte() == 1) {
                                            int readUnsignedByte3 = zzpnVar10.readUnsignedByte();
                                            byte[] bArr4 = new byte[16];
                                            zzpnVar10.zze(bArr4, 0, 16);
                                            zzluVar.zzbaz = true;
                                            zzluVar.zzbbb = new zzlr(true, readUnsignedByte3, bArr4);
                                        }
                                    }
                                }
                            }
                            int size6 = zzkvVar4.zzasv.size();
                            for (int i30 = 0; i30 < size6; i30++) {
                                zzky zzkyVar4 = zzkvVar4.zzasv.get(i30);
                                if (zzkyVar4.type == zzkw.zzavd) {
                                    zzpn zzpnVar11 = zzkyVar4.zzawt;
                                    zzpnVar11.zzbi(8);
                                    zzpnVar11.zze(bArr3, 0, 16);
                                    if (Arrays.equals(bArr3, zzaxk)) {
                                        zza(zzpnVar11, 16, zzluVar);
                                    }
                                }
                            }
                            bArr = bArr3;
                            i2 = i16;
                            zzkvVar = zzkvVar5;
                            i11 = i20;
                            byte[] bArr5 = bArr;
                            zzkvVar3 = zzkvVar;
                            bArr2 = bArr5;
                            size4 = i2;
                            i12 = i + 1;
                        }
                    }
                    zzkv zzkvVar6 = zzkvVar3;
                    bArr = bArr2;
                    i = i12;
                    zzkvVar = zzkvVar6;
                    i2 = size4;
                    byte[] bArr52 = bArr;
                    zzkvVar3 = zzkvVar;
                    bArr2 = bArr52;
                    size4 = i2;
                    i12 = i + 1;
                }
                zzjo zzb2 = zzb(zzkvVar3.zzasv);
                zzlhVar = this;
                if (zzb2 != null) {
                    int size7 = this.zzaxm.size();
                    int i31 = 0;
                    while (true) {
                        zzlhVar = this;
                        if (i31 < size7) {
                            zzlm valueAt = this.zzaxm.valueAt(i31);
                            valueAt.zzasp.zze(valueAt.zzazs.zzahz.zza(zzb2));
                            i31++;
                        }
                    }
                }
            } else {
                zzlh zzlhVar2 = zzlhVar;
                zzlhVar = zzlhVar2;
                if (!zzlhVar2.zzaxt.isEmpty()) {
                    zzlhVar2.zzaxt.peek().zza(pop);
                    zzlhVar = zzlhVar2;
                }
            }
        }
        zzhb();
    }

    private final void zzhb() {
        this.zzaxv = 0;
        this.zzaxy = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final void release() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0545 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:275:0x0b3c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0002 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:284:0x0002 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v259, types: [long] */
    /* JADX WARN: Type inference failed for: r0v303, types: [long] */
    /* JADX WARN: Type inference failed for: r0v371, types: [long] */
    /* JADX WARN: Type inference failed for: r0v373, types: [long] */
    /* JADX WARN: Type inference failed for: r0v406, types: [long] */
    /* JADX WARN: Type inference failed for: r0v408, types: [long] */
    /* JADX WARN: Type inference failed for: r0v412, types: [long] */
    /* JADX WARN: Type inference failed for: r0v414, types: [long] */
    /* JADX WARN: Type inference failed for: r0v416, types: [long] */
    /* JADX WARN: Type inference failed for: r0v418, types: [long] */
    /* JADX WARN: Type inference failed for: r0v420, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzka
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(com.google.android.gms.internal.ads.zzjz r9, com.google.android.gms.internal.ads.zzkg r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 2900
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlh.zza(com.google.android.gms.internal.ads.zzjz, com.google.android.gms.internal.ads.zzkg):int");
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final void zza(zzkc zzkcVar) {
        this.zzark = zzkcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final boolean zza(zzjz zzjzVar) throws IOException, InterruptedException {
        return zzlp.zzd(zzjzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final void zzc(long j, long j2) {
        int size = this.zzaxm.size();
        for (int i = 0; i < size; i++) {
            this.zzaxm.valueAt(i).reset();
        }
        this.zzaxu.clear();
        this.zzayb = 0;
        this.zzaxt.clear();
        zzhb();
    }
}
