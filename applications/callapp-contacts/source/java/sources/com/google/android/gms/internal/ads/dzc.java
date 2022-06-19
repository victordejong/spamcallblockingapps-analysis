package com.google.android.gms.internal.ads;

import android.util.Pair;
import android.util.SparseArray;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Stack;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dzc.class */
public final class dzc implements dxv {

    /* renamed from: a */
    private static final dxw f48256a = new dzf();

    /* renamed from: b */
    private static final int f48257b = ede.m15185c("seig");

    /* renamed from: c */
    private static final byte[] f48258c = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};

    /* renamed from: A */
    private int f48259A;

    /* renamed from: B */
    private int f48260B;

    /* renamed from: C */
    private boolean f48261C;

    /* renamed from: D */
    private dxx f48262D;

    /* renamed from: E */
    private dyc f48263E;

    /* renamed from: F */
    private dyc[] f48264F;

    /* renamed from: G */
    private boolean f48265G;

    /* renamed from: d */
    private final int f48266d;

    /* renamed from: e */
    private final dzn f48267e;

    /* renamed from: f */
    private final SparseArray<dzh> f48268f;

    /* renamed from: g */
    private final ecy f48269g;

    /* renamed from: h */
    private final ecy f48270h;

    /* renamed from: i */
    private final ecy f48271i;

    /* renamed from: j */
    private final ecy f48272j;

    /* renamed from: k */
    private final edc f48273k;

    /* renamed from: l */
    private final ecy f48274l;

    /* renamed from: m */
    private final byte[] f48275m;

    /* renamed from: n */
    private final Stack<dyq> f48276n;

    /* renamed from: o */
    private final LinkedList<dze> f48277o;

    /* renamed from: p */
    private int f48278p;

    /* renamed from: q */
    private int f48279q;

    /* renamed from: r */
    private long f48280r;

    /* renamed from: s */
    private int f48281s;

    /* renamed from: t */
    private ecy f48282t;

    /* renamed from: u */
    private long f48283u;

    /* renamed from: v */
    private int f48284v;

    /* renamed from: w */
    private long f48285w;

    /* renamed from: x */
    private long f48286x;

    /* renamed from: y */
    private dzh f48287y;

    /* renamed from: z */
    private int f48288z;

    public dzc() {
        this(0);
    }

    private dzc(int i) {
        this(0, null);
    }

    private dzc(int i, edc edcVar) {
        this(0, null, null);
    }

    private dzc(int i, edc edcVar, dzn dznVar) {
        this.f48266d = 0;
        this.f48273k = null;
        this.f48267e = null;
        this.f48274l = new ecy(16);
        this.f48269g = new ecy(ecx.f48720a);
        this.f48270h = new ecy(5);
        this.f48271i = new ecy();
        this.f48272j = new ecy(1);
        this.f48275m = new byte[16];
        this.f48276n = new Stack<>();
        this.f48277o = new LinkedList<>();
        this.f48268f = new SparseArray<>();
        this.f48285w = -9223372036854775807L;
        this.f48286x = -9223372036854775807L;
        m15435a();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0127  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzjo m15432a(java.util.List<com.google.android.gms.internal.ads.dyt> r7) {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dzc.m15432a(java.util.List):com.google.android.gms.internal.ads.zzjo");
    }

    /* renamed from: a */
    private final void m15435a() {
        this.f48278p = 0;
        this.f48281s = 0;
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
    /* renamed from: a */
    private final void m15434a(long j) throws zzhw {
        dzn m15448a;
        int i;
        int i2;
        byte[] bArr;
        dyq dyqVar;
        int i3;
        int i4;
        int i5;
        int i6;
        dzc dzcVar = this;
        while (!dzcVar.f48276n.isEmpty() && dzcVar.f48276n.peek().f48111a == j) {
            dyq pop = dzcVar.f48276n.pop();
            if (pop.f48207aR == dyr.f48118E) {
                ecr.m15246b(true, "Unexpected moov box.");
                zzjo m15432a = m15432a(pop.f48112b);
                dyq m15452b = pop.m15452b(dyr.f48129P);
                SparseArray sparseArray = new SparseArray();
                int size = m15452b.f48112b.size();
                char c = 1;
                for (int i7 = 0; i7 < size; i7++) {
                    dyt dytVar = m15452b.f48112b.get(i7);
                    if (dytVar.f48207aR == dyr.f48115B) {
                        ecy ecyVar = dytVar.f48216a;
                        ecyVar.m15226c(12);
                        Pair create = Pair.create(Integer.valueOf(ecyVar.m15220g()), new dzb(ecyVar.m15218i() - 1, ecyVar.m15218i(), ecyVar.m15218i(), ecyVar.m15220g()));
                        sparseArray.put(((Integer) create.first).intValue(), (dzb) create.second);
                    } else if (dytVar.f48207aR == dyr.f48130Q) {
                        ecy ecyVar2 = dytVar.f48216a;
                        ecyVar2.m15226c(8);
                        c = dyr.m15451c(ecyVar2.m15220g()) == 0 ? ecyVar2.m15221f() : ecyVar2.m15217j();
                    }
                }
                SparseArray sparseArray2 = new SparseArray();
                int size2 = pop.f48113c.size();
                for (int i8 = 0; i8 < size2; i8++) {
                    dyq dyqVar2 = pop.f48113c.get(i8);
                    if (dyqVar2.f48207aR == dyr.f48120G && (m15448a = dys.m15448a(dyqVar2, pop.m15455a(dyr.f48119F), (long) c, m15432a, false)) != null) {
                        sparseArray2.put(m15448a.f48360a, m15448a);
                    }
                }
                int size3 = sparseArray2.size();
                if (dzcVar.f48268f.size() == 0) {
                    for (int i9 = 0; i9 < size3; i9++) {
                        dzn dznVar = (dzn) sparseArray2.valueAt(i9);
                        dzh dzhVar = new dzh(dzcVar.f48262D.mo15374a(i9));
                        dzhVar.m15425a(dznVar, (dzb) sparseArray.get(dznVar.f48360a));
                        dzcVar.f48268f.put(dznVar.f48360a, dzhVar);
                        dzcVar.f48285w = Math.max(dzcVar.f48285w, dznVar.f48364e);
                    }
                    if ((dzcVar.f48266d & 4) != 0 && dzcVar.f48263E == null) {
                        dyc mo15374a = dzcVar.f48262D.mo15374a(dzcVar.f48268f.size());
                        dzcVar.f48263E = mo15374a;
                        mo15374a.mo15327a(zzht.zza((String) null, "application/x-emsg", Long.MAX_VALUE));
                    }
                    if ((dzcVar.f48266d & 8) != 0 && dzcVar.f48264F == null) {
                        dyc mo15374a2 = dzcVar.f48262D.mo15374a(dzcVar.f48268f.size() + 1);
                        mo15374a2.mo15327a(zzht.zza((String) null, "application/cea-608", (String) null, -1, 0, (String) null, (zzjo) null));
                        dzcVar.f48264F = new dyc[]{mo15374a2};
                    }
                    dzcVar.f48262D.mo15375a();
                } else {
                    ecr.m15247b(dzcVar.f48268f.size() == size3);
                    for (int i10 = 0; i10 < size3; i10++) {
                        dzn dznVar2 = (dzn) sparseArray2.valueAt(i10);
                        dzcVar.f48268f.get(dznVar2.f48360a).m15425a(dznVar2, (dzb) sparseArray.get(dznVar2.f48360a));
                    }
                }
            } else if (pop.f48207aR == dyr.f48127N) {
                SparseArray<dzh> sparseArray3 = dzcVar.f48268f;
                int i11 = dzcVar.f48266d;
                byte[] bArr2 = dzcVar.f48275m;
                int size4 = pop.f48113c.size();
                int i12 = 0;
                dyq dyqVar3 = pop;
                while (i12 < size4) {
                    dyq dyqVar4 = dyqVar3.f48113c.get(i12);
                    if (dyqVar4.f48207aR == dyr.f48128O) {
                        ecy ecyVar3 = dyqVar4.m15455a(dyr.f48114A).f48216a;
                        ecyVar3.m15226c(8);
                        int m15450d = dyr.m15450d(ecyVar3.m15220g());
                        int m15220g = ecyVar3.m15220g();
                        if ((i11 & 16) != 0) {
                            m15220g = 0;
                        }
                        dzh dzhVar2 = sparseArray3.get(m15220g);
                        if (dzhVar2 == null) {
                            dzhVar2 = null;
                        } else {
                            if ((m15450d & 1) != 0) {
                                long m15217j = ecyVar3.m15217j();
                                dzhVar2.f48326a.f48379c = m15217j;
                                dzhVar2.f48326a.f48380d = m15217j;
                            }
                            dzb dzbVar = dzhVar2.f48329d;
                            dzhVar2.f48326a.f48377a = new dzb((m15450d & 2) != 0 ? ecyVar3.m15218i() - 1 : dzbVar.f48252a, (m15450d & 8) != 0 ? ecyVar3.m15218i() : dzbVar.f48253b, (m15450d & 16) != 0 ? ecyVar3.m15218i() : dzbVar.f48254c, (m15450d & 32) != 0 ? ecyVar3.m15218i() : dzbVar.f48255d);
                        }
                        if (dzhVar2 != null) {
                            dzp dzpVar = dzhVar2.f48326a;
                            ?? r0 = dzpVar.f48395s;
                            dzhVar2.m15426a();
                            char c2 = r0;
                            if (dyqVar4.m15455a(dyr.f48206z) != null) {
                                c2 = r0;
                                if ((i11 & 2) == 0) {
                                    ecy ecyVar4 = dyqVar4.m15455a(dyr.f48206z).f48216a;
                                    ecyVar4.m15226c(8);
                                    c2 = dyr.m15451c(ecyVar4.m15220g()) == 1 ? ecyVar4.m15217j() : ecyVar4.m15221f();
                                }
                            }
                            List<dyt> list = dyqVar4.f48112b;
                            int size5 = list.size();
                            int i13 = 0;
                            int i14 = 0;
                            int i15 = 0;
                            while (i15 < size5) {
                                dyt dytVar2 = list.get(i15);
                                if (dytVar2.f48207aR == dyr.f48116C) {
                                    ecy ecyVar5 = dytVar2.f48216a;
                                    ecyVar5.m15226c(12);
                                    int m15218i = ecyVar5.m15218i();
                                    i6 = i13;
                                    i5 = i14;
                                    if (m15218i > 0) {
                                        i6 = i13 + m15218i;
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
                            dzhVar2.f48332g = 0;
                            dzhVar2.f48331f = 0;
                            dzhVar2.f48330e = 0;
                            dzp dzpVar2 = dzhVar2.f48326a;
                            dzpVar2.f48381e = i14;
                            dzpVar2.f48382f = i13;
                            if (dzpVar2.f48384h == null || dzpVar2.f48384h.length < i14) {
                                dzpVar2.f48383g = new long[i14];
                                dzpVar2.f48384h = new int[i14];
                            }
                            if (dzpVar2.f48385i == null || dzpVar2.f48385i.length < i13) {
                                int i17 = (i13 * JsonReaderKt.END_OBJ) / 100;
                                dzpVar2.f48385i = new int[i17];
                                dzpVar2.f48386j = new int[i17];
                                dzpVar2.f48387k = new long[i17];
                                dzpVar2.f48388l = new boolean[i17];
                                dzpVar2.f48390n = new boolean[i17];
                            }
                            int i18 = 0;
                            int i19 = 0;
                            dzh dzhVar3 = dzhVar2;
                            byte[] bArr3 = bArr2;
                            int i20 = i11;
                            int i21 = 0;
                            while (true) {
                                int i22 = i21;
                                char c3 = 0;
                                if (i22 >= size5) {
                                    break;
                                }
                                dyt dytVar3 = list.get(i22);
                                if (dytVar3.f48207aR == dyr.f48116C) {
                                    ecy ecyVar6 = dytVar3.f48216a;
                                    ecyVar6.m15226c(8);
                                    int m15450d2 = dyr.m15450d(ecyVar6.m15220g());
                                    dzn dznVar3 = dzhVar3.f48328c;
                                    dzp dzpVar3 = dzhVar3.f48326a;
                                    dzb dzbVar2 = dzpVar3.f48377a;
                                    dzpVar3.f48384h[i18] = ecyVar6.m15218i();
                                    dzpVar3.f48383g[i18] = dzpVar3.f48379c;
                                    if ((m15450d2 & 1) != 0) {
                                        long[] jArr = dzpVar3.f48383g;
                                        jArr[i18] = jArr[i18] + ecyVar6.m15220g();
                                    }
                                    boolean z = (m15450d2 & 4) != 0;
                                    int i23 = dzbVar2.f48255d;
                                    if (z) {
                                        i23 = ecyVar6.m15218i();
                                    }
                                    boolean z2 = (m15450d2 & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0;
                                    boolean z3 = (m15450d2 & 512) != 0;
                                    boolean z4 = (m15450d2 & 1024) != 0;
                                    boolean z5 = (m15450d2 & 2048) != 0;
                                    if (dznVar3.f48368i != null && dznVar3.f48368i.length == 1 && dznVar3.f48368i[0] == 0) {
                                        c3 = ede.m15196a(dznVar3.f48369j[0], 1000L, dznVar3.f48362c);
                                    }
                                    int[] iArr = dzpVar3.f48385i;
                                    int[] iArr2 = dzpVar3.f48386j;
                                    long[] jArr2 = dzpVar3.f48387k;
                                    i4 = i22;
                                    boolean[] zArr = dzpVar3.f48388l;
                                    boolean z6 = dznVar3.f48361b == 2 && (i20 & 1) != 0;
                                    int i24 = dzpVar3.f48384h[i18] + i19;
                                    long j2 = dznVar3.f48362c;
                                    char c4 = i18 > 0 ? dzpVar3.f48395s : c2;
                                    while (i19 < i24) {
                                        int m15218i2 = z2 ? ecyVar6.m15218i() : dzbVar2.f48253b;
                                        int m15218i3 = z3 ? ecyVar6.m15218i() : dzbVar2.f48254c;
                                        int m15220g2 = (i19 != 0 || !z) ? z4 ? ecyVar6.m15220g() : dzbVar2.f48255d : i23;
                                        if (z5) {
                                            iArr2[i19] = (int) ((ecyVar6.m15220g() * 1000) / j2);
                                        } else {
                                            iArr2[i19] = 0;
                                        }
                                        jArr2[i19] = ede.m15196a(c4, 1000L, j2) - c3;
                                        iArr[i19] = m15218i3;
                                        zArr[i19] = ((m15220g2 >> 16) & 1) == 0 && (!z6 || i19 == 0);
                                        c4 += m15218i2;
                                        i19++;
                                    }
                                    dzpVar3.f48395s = c4;
                                    i19 = i24;
                                    i18++;
                                } else {
                                    i4 = i22;
                                }
                                i21 = i4 + 1;
                            }
                            dyq dyqVar5 = dyqVar3;
                            i = i12;
                            dyt m15455a = dyqVar4.m15455a(dyr.f48163af);
                            if (m15455a != null) {
                                dzm dzmVar = dzhVar3.f48328c.f48367h[dzpVar.f48377a.f48252a];
                                ecy ecyVar7 = m15455a.f48216a;
                                int i25 = dzmVar.f48357a;
                                ecyVar7.m15226c(8);
                                if ((dyr.m15450d(ecyVar7.m15220g()) & 1) == 1) {
                                    ecyVar7.m15224d(8);
                                }
                                int m15225d = ecyVar7.m15225d();
                                int m15218i4 = ecyVar7.m15218i();
                                if (m15218i4 != dzpVar.f48382f) {
                                    int i26 = dzpVar.f48382f;
                                    StringBuilder sb = new StringBuilder(41);
                                    sb.append("Length mismatch: ");
                                    sb.append(m15218i4);
                                    sb.append(", ");
                                    sb.append(i26);
                                    throw new zzhw(sb.toString());
                                }
                                if (m15225d == 0) {
                                    boolean[] zArr2 = dzpVar.f48390n;
                                    int i27 = 0;
                                    int i28 = 0;
                                    while (true) {
                                        i3 = i28;
                                        if (i27 >= m15218i4) {
                                            break;
                                        }
                                        int m15225d2 = ecyVar7.m15225d();
                                        i28 += m15225d2;
                                        zArr2[i27] = m15225d2 > i25;
                                        i27++;
                                    }
                                } else {
                                    i3 = (m15225d * m15218i4) + 0;
                                    Arrays.fill(dzpVar.f48390n, 0, m15218i4, m15225d > i25);
                                }
                                dzpVar.m15409a(i3);
                            }
                            dyt m15455a2 = dyqVar4.m15455a(dyr.f48164ag);
                            if (m15455a2 != null) {
                                ecy ecyVar8 = m15455a2.f48216a;
                                ecyVar8.m15226c(8);
                                int m15220g3 = ecyVar8.m15220g();
                                if ((dyr.m15450d(m15220g3) & 1) == 1) {
                                    ecyVar8.m15224d(8);
                                }
                                int m15218i5 = ecyVar8.m15218i();
                                if (m15218i5 != 1) {
                                    StringBuilder sb2 = new StringBuilder(40);
                                    sb2.append("Unexpected saio entry count: ");
                                    sb2.append(m15218i5);
                                    throw new zzhw(sb2.toString());
                                }
                                dzpVar.f48380d += dyr.m15451c(m15220g3) == 0 ? ecyVar8.m15221f() : ecyVar8.m15217j();
                            }
                            dyt m15455a3 = dyqVar4.m15455a(dyr.f48168ak);
                            if (m15455a3 != null) {
                                m15433a(m15455a3.f48216a, 0, dzpVar);
                            }
                            dyt m15455a4 = dyqVar4.m15455a(dyr.f48165ah);
                            dyt m15455a5 = dyqVar4.m15455a(dyr.f48166ai);
                            if (m15455a4 != null && m15455a5 != null) {
                                ecy ecyVar9 = m15455a4.f48216a;
                                ecy ecyVar10 = m15455a5.f48216a;
                                ecyVar9.m15226c(8);
                                int m15220g4 = ecyVar9.m15220g();
                                int m15220g5 = ecyVar9.m15220g();
                                int i29 = f48257b;
                                if (m15220g5 == i29) {
                                    if (dyr.m15451c(m15220g4) == 1) {
                                        ecyVar9.m15224d(4);
                                    }
                                    if (ecyVar9.m15220g() != 1) {
                                        throw new zzhw("Entry count in sbgp != 1 (unsupported).");
                                    }
                                    ecyVar10.m15226c(8);
                                    int m15220g6 = ecyVar10.m15220g();
                                    if (ecyVar10.m15220g() == i29) {
                                        int m15451c = dyr.m15451c(m15220g6);
                                        if (m15451c == 1) {
                                            if (ecyVar10.m15221f() == 0) {
                                                throw new zzhw("Variable length decription in sgpd found (unsupported)");
                                            }
                                        } else if (m15451c >= 2) {
                                            ecyVar10.m15224d(4);
                                        }
                                        if (ecyVar10.m15221f() != 1) {
                                            throw new zzhw("Entry count in sgpd != 1 (unsupported).");
                                        }
                                        ecyVar10.m15224d(2);
                                        if (ecyVar10.m15225d() == 1) {
                                            int m15225d3 = ecyVar10.m15225d();
                                            byte[] bArr4 = new byte[16];
                                            ecyVar10.m15230a(bArr4, 0, 16);
                                            dzpVar.f48389m = true;
                                            dzpVar.f48391o = new dzm(true, m15225d3, bArr4);
                                        }
                                    }
                                }
                            }
                            int size6 = dyqVar4.f48112b.size();
                            for (int i30 = 0; i30 < size6; i30++) {
                                dyt dytVar4 = dyqVar4.f48112b.get(i30);
                                if (dytVar4.f48207aR == dyr.f48167aj) {
                                    ecy ecyVar11 = dytVar4.f48216a;
                                    ecyVar11.m15226c(8);
                                    ecyVar11.m15230a(bArr3, 0, 16);
                                    if (Arrays.equals(bArr3, f48258c)) {
                                        m15433a(ecyVar11, 16, dzpVar);
                                    }
                                }
                            }
                            bArr = bArr3;
                            i2 = i16;
                            dyqVar = dyqVar5;
                            i11 = i20;
                            byte[] bArr5 = bArr;
                            dyqVar3 = dyqVar;
                            bArr2 = bArr5;
                            size4 = i2;
                            i12 = i + 1;
                        }
                    }
                    dyq dyqVar6 = dyqVar3;
                    bArr = bArr2;
                    i = i12;
                    dyqVar = dyqVar6;
                    i2 = size4;
                    byte[] bArr52 = bArr;
                    dyqVar3 = dyqVar;
                    bArr2 = bArr52;
                    size4 = i2;
                    i12 = i + 1;
                }
                zzjo m15432a2 = m15432a(dyqVar3.f48112b);
                dzcVar = this;
                if (m15432a2 != null) {
                    int size7 = this.f48268f.size();
                    int i31 = 0;
                    while (true) {
                        dzcVar = this;
                        if (i31 < size7) {
                            dzh valueAt = this.f48268f.valueAt(i31);
                            valueAt.f48327b.mo15327a(valueAt.f48328c.f48365f.zza(m15432a2));
                            i31++;
                        }
                    }
                }
            } else {
                dzc dzcVar2 = dzcVar;
                dzcVar = dzcVar2;
                if (!dzcVar2.f48276n.isEmpty()) {
                    dzcVar2.f48276n.peek().m15454a(pop);
                    dzcVar = dzcVar2;
                }
            }
        }
        m15435a();
    }

    /* renamed from: a */
    private static void m15433a(ecy ecyVar, int i, dzp dzpVar) throws zzhw {
        ecyVar.m15226c(i + 8);
        int m15450d = dyr.m15450d(ecyVar.m15220g());
        if ((m15450d & 1) == 0) {
            boolean z = (m15450d & 2) != 0;
            int m15218i = ecyVar.m15218i();
            if (m15218i == dzpVar.f48382f) {
                Arrays.fill(dzpVar.f48390n, 0, m15218i, z);
                dzpVar.m15409a(ecyVar.m15229b());
                ecyVar.m15230a(dzpVar.f48393q.f48724a, 0, dzpVar.f48392p);
                dzpVar.f48393q.m15226c(0);
                dzpVar.f48394r = false;
                return;
            }
            int i2 = dzpVar.f48382f;
            StringBuilder sb = new StringBuilder(41);
            sb.append("Length mismatch: ");
            sb.append(m15218i);
            sb.append(", ");
            sb.append(i2);
            throw new zzhw(sb.toString());
        }
        throw new zzhw("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:295:0x06a4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:308:0x0c93 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0002 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0002 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:328:0x04af A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:329:0x043b A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v329, types: [long] */
    /* JADX WARN: Type inference failed for: r0v373, types: [long] */
    /* JADX WARN: Type inference failed for: r0v438, types: [long] */
    /* JADX WARN: Type inference failed for: r0v440, types: [long] */
    /* JADX WARN: Type inference failed for: r0v473, types: [long] */
    /* JADX WARN: Type inference failed for: r0v475, types: [long] */
    /* JADX WARN: Type inference failed for: r0v479, types: [long] */
    /* JADX WARN: Type inference failed for: r0v481, types: [long] */
    /* JADX WARN: Type inference failed for: r0v483, types: [long] */
    /* JADX WARN: Type inference failed for: r0v485, types: [long] */
    /* JADX WARN: Type inference failed for: r0v487, types: [long] */
    @Override // com.google.android.gms.internal.ads.dxv
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo15419a(com.google.android.gms.internal.ads.dxt r9, com.google.android.gms.internal.ads.dyb r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 3243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dzc.mo15419a(com.google.android.gms.internal.ads.dxt, com.google.android.gms.internal.ads.dyb):int");
    }

    @Override // com.google.android.gms.internal.ads.dxv
    /* renamed from: a */
    public final void mo15421a(long j, long j2) {
        int size = this.f48268f.size();
        for (int i = 0; i < size; i++) {
            this.f48268f.valueAt(i).m15426a();
        }
        this.f48277o.clear();
        this.f48284v = 0;
        this.f48276n.clear();
        m15435a();
    }

    @Override // com.google.android.gms.internal.ads.dxv
    /* renamed from: a */
    public final void mo15418a(dxx dxxVar) {
        this.f48262D = dxxVar;
    }

    @Override // com.google.android.gms.internal.ads.dxv
    /* renamed from: a */
    public final boolean mo15420a(dxt dxtVar) throws IOException, InterruptedException {
        return dzk.m15414a(dxtVar);
    }
}
