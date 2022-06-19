package com.google.android.gms.internal.ads;

import android.util.Log;
import android.util.Pair;
import com.google.android.gms.internal.ads.zzmh;
import io.objectbox.model.PropertyFlags;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dys.class */
public final class dys {

    /* renamed from: a */
    private static final int f48208a = ede.m15185c("vide");

    /* renamed from: b */
    private static final int f48209b = ede.m15185c("soun");

    /* renamed from: c */
    private static final int f48210c = ede.m15185c("text");

    /* renamed from: d */
    private static final int f48211d = ede.m15185c("sbtl");

    /* renamed from: e */
    private static final int f48212e = ede.m15185c("subt");

    /* renamed from: f */
    private static final int f48213f = ede.m15185c("clcp");

    /* renamed from: g */
    private static final int f48214g = ede.m15185c("cenc");

    /* renamed from: h */
    private static final int f48215h = ede.m15185c("meta");

    /* renamed from: a */
    private static int m15445a(ecy ecyVar) {
        int m15225d = ecyVar.m15225d();
        int i = m15225d & 127;
        while (true) {
            int i2 = i;
            if ((m15225d & 128) == 128) {
                m15225d = ecyVar.m15225d();
                i = (i2 << 7) | (m15225d & 127);
            } else {
                return i2;
            }
        }
    }

    /* renamed from: a */
    private static int m15443a(ecy ecyVar, int i, int i2, dyx dyxVar, int i3) {
        boolean z;
        Integer num;
        int i4 = ecyVar.f48725b;
        while (true) {
            int i5 = i4;
            if (i5 - i < i2) {
                ecyVar.m15226c(i5);
                int m15220g = ecyVar.m15220g();
                ecr.m15248a(m15220g > 0, "childAtomSize should be positive");
                if (ecyVar.m15220g() == dyr.f48138Y) {
                    int i6 = i5 + 8;
                    Integer num2 = null;
                    dzm dzmVar = null;
                    boolean z2 = false;
                    while (i6 - i5 < m15220g) {
                        ecyVar.m15226c(i6);
                        int m15220g2 = ecyVar.m15220g();
                        int m15220g3 = ecyVar.m15220g();
                        if (m15220g3 == dyr.f48162ae) {
                            num = Integer.valueOf(ecyVar.m15220g());
                            z = z2;
                        } else if (m15220g3 == dyr.f48139Z) {
                            ecyVar.m15224d(4);
                            if (ecyVar.m15220g() == f48214g) {
                                z = true;
                                num = num2;
                            } else {
                                z = false;
                                num = num2;
                            }
                        } else {
                            z = z2;
                            num = num2;
                            if (m15220g3 == dyr.f48158aa) {
                                int i7 = i6;
                                int i8 = 8;
                                while (true) {
                                    int i9 = i7 + i8;
                                    if (i9 - i6 >= m15220g2) {
                                        dzmVar = null;
                                        num = num2;
                                        z = z2;
                                        break;
                                    }
                                    ecyVar.m15226c(i9);
                                    int m15220g4 = ecyVar.m15220g();
                                    if (ecyVar.m15220g() == dyr.f48159ab) {
                                        ecyVar.m15224d(6);
                                        boolean z3 = ecyVar.m15225d() == 1;
                                        int m15225d = ecyVar.m15225d();
                                        byte[] bArr = new byte[16];
                                        ecyVar.m15230a(bArr, 0, 16);
                                        dzmVar = new dzm(z3, m15225d, bArr);
                                        z = z2;
                                        num = num2;
                                    } else {
                                        i7 = i9;
                                        i8 = m15220g4;
                                    }
                                }
                            }
                        }
                        i6 += m15220g2;
                        z2 = z;
                        num2 = num;
                    }
                    Pair pair = null;
                    if (z2) {
                        ecr.m15248a(num2 != null, "frma atom is mandatory");
                        boolean z4 = false;
                        if (dzmVar != null) {
                            z4 = true;
                        }
                        ecr.m15248a(z4, "schi->tenc atom is mandatory");
                        pair = Pair.create(num2, dzmVar);
                    }
                    if (pair != null) {
                        dyxVar.f48229a[i3] = (dzm) pair.second;
                        return ((Integer) pair.first).intValue();
                    }
                }
                i4 = i5 + m15220g;
            } else {
                return 0;
            }
        }
    }

    /* renamed from: a */
    private static Pair<String, byte[]> m15444a(ecy ecyVar, int i) {
        ecyVar.m15226c(i + 8 + 4);
        ecyVar.m15224d(1);
        m15445a(ecyVar);
        ecyVar.m15224d(2);
        int m15225d = ecyVar.m15225d();
        if ((m15225d & 128) != 0) {
            ecyVar.m15224d(2);
        }
        if ((m15225d & 64) != 0) {
            ecyVar.m15224d(ecyVar.m15223e());
        }
        if ((m15225d & 32) != 0) {
            ecyVar.m15224d(2);
        }
        ecyVar.m15224d(1);
        m15445a(ecyVar);
        int m15225d2 = ecyVar.m15225d();
        Object obj = null;
        if (m15225d2 == 32) {
            obj = "video/mp4v-es";
        } else if (m15225d2 == 33) {
            obj = "video/avc";
        } else if (m15225d2 != 35) {
            if (m15225d2 != 64) {
                if (m15225d2 == 107) {
                    return Pair.create("audio/mpeg", null);
                }
                if (m15225d2 == 165) {
                    obj = "audio/ac3";
                } else if (m15225d2 != 166) {
                    switch (m15225d2) {
                        case 102:
                        case 103:
                        case 104:
                            break;
                        default:
                            switch (m15225d2) {
                                case 169:
                                case 172:
                                    return Pair.create("audio/vnd.dts", null);
                                case 170:
                                case 171:
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
        ecyVar.m15224d(12);
        ecyVar.m15224d(1);
        int m15445a = m15445a(ecyVar);
        byte[] bArr = new byte[m15445a];
        ecyVar.m15230a(bArr, 0, m15445a);
        return Pair.create(obj, bArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x012f, code lost:
        if (r0 == 0) goto L43;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v166, types: [long] */
    /* JADX WARN: Type inference failed for: r0v168, types: [long] */
    /* JADX WARN: Type inference failed for: r0v170, types: [long] */
    /* JADX WARN: Type inference failed for: r0v172, types: [long] */
    /* JADX WARN: Type inference failed for: r0v599, types: [long] */
    /* JADX WARN: Type inference failed for: r0v604, types: [long] */
    /* JADX WARN: Type inference failed for: r0v624, types: [long] */
    /* JADX WARN: Type inference failed for: r0v626, types: [long] */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v12 */
    /* JADX WARN: Type inference failed for: r19v13 */
    /* JADX WARN: Type inference failed for: r9v5, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.dzn m15448a(com.google.android.gms.internal.ads.dyq r17, com.google.android.gms.internal.ads.dyt r18, long r19, com.google.android.gms.internal.ads.zzjo r21, boolean r22) throws com.google.android.gms.internal.ads.zzhw {
        /*
            Method dump skipped, instructions count: 3526
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dys.m15448a(com.google.android.gms.internal.ads.dyq, com.google.android.gms.internal.ads.dyt, long, com.google.android.gms.internal.ads.zzjo, boolean):com.google.android.gms.internal.ads.dzn");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v257 */
    /* JADX WARN: Type inference failed for: r0v268, types: [long] */
    /* JADX WARN: Type inference failed for: r0v369, types: [long] */
    /* JADX WARN: Type inference failed for: r0v374, types: [long] */
    /* JADX WARN: Type inference failed for: r0v419, types: [long] */
    /* JADX WARN: Type inference failed for: r0v97, types: [long] */
    /* renamed from: a */
    public static dzo m15446a(dzn dznVar, dyq dyqVar, dxz dxzVar) throws zzhw {
        dyw dywVar;
        boolean z;
        int i;
        int i2;
        ecy ecyVar;
        char c;
        int i3;
        long[] jArr;
        int[] iArr;
        int[] iArr2;
        long[] jArr2;
        int i4;
        dyt m15455a = dyqVar.m15455a(dyr.f48176as);
        if (m15455a != null) {
            dywVar = new dyw(m15455a);
        } else {
            dyt m15455a2 = dyqVar.m15455a(dyr.f48177at);
            if (m15455a2 == null) {
                throw new zzhw("Track has no sample table size information");
            }
            dywVar = new dyz(m15455a2);
        }
        int mo15441a = dywVar.mo15441a();
        if (mo15441a == 0) {
            return new dzo(new long[0], new int[0], 0, new long[0], new int[0]);
        }
        dyt m15455a3 = dyqVar.m15455a(dyr.f48178au);
        if (m15455a3 == null) {
            m15455a3 = dyqVar.m15455a(dyr.f48179av);
            z = true;
        } else {
            z = false;
        }
        ecy ecyVar2 = m15455a3.f48216a;
        ecy ecyVar3 = dyqVar.m15455a(dyr.f48175ar).f48216a;
        ecy ecyVar4 = dyqVar.m15455a(dyr.f48172ao).f48216a;
        dyt m15455a4 = dyqVar.m15455a(dyr.f48173ap);
        ecy ecyVar5 = m15455a4 != null ? m15455a4.f48216a : null;
        dyt m15455a5 = dyqVar.m15455a(dyr.f48174aq);
        ecy ecyVar6 = m15455a5 != null ? m15455a5.f48216a : null;
        dyv dyvVar = new dyv(ecyVar3, ecyVar2, z);
        ecyVar4.m15226c(12);
        int m15218i = ecyVar4.m15218i() - 1;
        int m15218i2 = ecyVar4.m15218i();
        int m15218i3 = ecyVar4.m15218i();
        if (ecyVar6 != null) {
            ecyVar6.m15226c(12);
            i = ecyVar6.m15218i();
        } else {
            i = 0;
        }
        int i5 = -1;
        if (ecyVar5 != null) {
            ecyVar5.m15226c(12);
            int m15218i4 = ecyVar5.m15218i();
            i2 = m15218i4;
            ecyVar = null;
            if (m15218i4 > 0) {
                i5 = ecyVar5.m15218i() - 1;
                ecyVar = ecyVar5;
                i2 = m15218i4;
            }
        } else {
            ecyVar = ecyVar5;
            i2 = 0;
        }
        if (!(dywVar.mo15439c() && "audio/raw".equals(dznVar.f48365f.zzaho) && m15218i == 0 && i == 0 && i2 == 0)) {
            long[] jArr3 = new long[mo15441a];
            int[] iArr3 = new int[mo15441a];
            long[] jArr4 = new long[mo15441a];
            int[] iArr4 = new int[mo15441a];
            char c2 = 0;
            char c3 = 0;
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            int i9 = i;
            int i10 = i2;
            int i11 = 0;
            int i12 = i9;
            int i13 = i5;
            int i14 = 0;
            while (i14 < mo15441a) {
                int i15 = i8;
                int i16 = m15218i3;
                int i17 = m15218i2;
                char c4 = c2;
                while (i15 == 0) {
                    ecr.m15247b(dyvVar.m15442a());
                    c4 = dyvVar.f48220d;
                    i15 = dyvVar.f48219c;
                }
                int i18 = i12;
                int i19 = i7;
                int i20 = i11;
                if (ecyVar6 != null) {
                    while (i7 == 0 && i12 > 0) {
                        i7 = ecyVar6.m15218i();
                        i11 = ecyVar6.m15220g();
                        i12--;
                    }
                    i19 = i7 - 1;
                    i20 = i11;
                    i18 = i12;
                }
                jArr3[i14] = c4 == 1 ? 1 : 0;
                iArr3[i14] = dywVar.mo15440b();
                int i21 = i6;
                if (iArr3[i14] > i6) {
                    i21 = iArr3[i14];
                }
                jArr4[i14] = c3 + i20;
                iArr4[i14] = ecyVar == null ? 1 : 0;
                int i22 = i13;
                int i23 = i10;
                if (i14 == i13) {
                    iArr4[i14] = 1;
                    int i24 = i10 - 1;
                    i22 = i13;
                    i23 = i24;
                    if (i24 > 0) {
                        i22 = ecyVar.m15218i() - 1;
                        i23 = i24;
                    }
                }
                c3 += i16;
                int i25 = i17 - 1;
                if (i25 != 0 || m15218i <= 0) {
                    i4 = i16;
                } else {
                    i25 = ecyVar4.m15218i();
                    i4 = ecyVar4.m15218i();
                    m15218i--;
                }
                c2 = c4 + iArr3[i14];
                i8 = i15 - 1;
                i14++;
                int i26 = i20;
                m15218i2 = i25;
                i13 = i22;
                i10 = i23;
                i6 = i21;
                m15218i3 = i4;
                i12 = i18;
                i7 = i19;
                i11 = i26;
            }
            ecr.m15249a(i7 == 0);
            while (i12 > 0) {
                ecr.m15249a(ecyVar6.m15218i() == 0);
                ecyVar6.m15220g();
                i12--;
            }
            if (i10 != 0 || m15218i2 != 0 || i8 != 0 || m15218i != 0) {
                int i27 = dznVar.f48360a;
                StringBuilder sb = new StringBuilder(215);
                sb.append("Inconsistent stbl box for track ");
                sb.append(i27);
                sb.append(": remainingSynchronizationSamples ");
                sb.append(i10);
                sb.append(", remainingSamplesAtTimestampDelta ");
                sb.append(m15218i2);
                sb.append(", remainingSamplesInChunk ");
                sb.append(i8);
                sb.append(", remainingTimestampDeltaChanges ");
                sb.append(m15218i);
                Log.w("AtomParsers", sb.toString());
            }
            jArr2 = jArr3;
            iArr = iArr4;
            jArr = jArr4;
            i3 = i6;
            iArr2 = iArr3;
            mo15441a = mo15441a;
            c = c3;
        } else {
            long[] jArr5 = new long[dyvVar.f48217a];
            int i28 = dyvVar.f48217a;
            int[] iArr5 = new int[i28];
            while (dyvVar.m15442a()) {
                jArr5[dyvVar.f48218b] = dyvVar.f48220d;
                iArr5[dyvVar.f48218b] = dyvVar.f48219c;
            }
            int mo15440b = dywVar.mo15440b();
            long j = m15218i3;
            int i29 = PropertyFlags.UNSIGNED / mo15440b;
            int i30 = 0;
            for (int i31 = 0; i31 < i28; i31++) {
                i30 += ede.m15198a(iArr5[i31], i29);
            }
            long[] jArr6 = new long[i30];
            int[] iArr6 = new int[i30];
            long[] jArr7 = new long[i30];
            int[] iArr7 = new int[i30];
            int i32 = 0;
            int i33 = 0;
            int i34 = 0;
            for (int i35 = 0; i35 < i28; i35++) {
                int i36 = iArr5[i35];
                char c5 = jArr5[i35];
                while (i36 > 0) {
                    int min = Math.min(i29, i36);
                    jArr6[i33] = c5 == 1 ? 1 : 0;
                    iArr6[i33] = mo15440b * min;
                    i34 = Math.max(i34, iArr6[i33]);
                    jArr7[i33] = i32 * j;
                    iArr7[i33] = 1;
                    c5 += iArr6[i33];
                    i32 += min;
                    i36 -= min;
                    i33++;
                }
            }
            dzd dzdVar = new dzd(jArr6, iArr6, i34, jArr7, iArr7);
            jArr2 = dzdVar.f48289a;
            iArr2 = dzdVar.f48290b;
            i3 = dzdVar.f48291c;
            jArr = dzdVar.f48292d;
            iArr = dzdVar.f48293e;
            c = 0;
        }
        if (dznVar.f48368i == null || dxzVar.m15489a()) {
            ede.m15192a(jArr, dznVar.f48362c);
            return new dzo(jArr2, iArr2, i3, jArr, iArr);
        }
        if (dznVar.f48368i.length == 1 && dznVar.f48361b == 1 && jArr.length >= 2) {
            long j2 = dznVar.f48369j[0];
            long m15196a = ede.m15196a(dznVar.f48368i[0], dznVar.f48362c, dznVar.f48363d) + j2;
            if (jArr[0] <= j2 && j2 < jArr[1] && jArr[jArr.length - 1] < m15196a && m15196a <= c) {
                long m15196a2 = ede.m15196a(j2 - jArr[0], dznVar.f48365f.zzahz, dznVar.f48362c);
                long m15196a3 = ede.m15196a(c - m15196a, dznVar.f48365f.zzahz, dznVar.f48362c);
                if ((m15196a2 != 0 || m15196a3 != 0) && m15196a2 <= 2147483647L && m15196a3 <= 2147483647L) {
                    dxzVar.f47992a = (int) m15196a2;
                    dxzVar.f47993b = (int) m15196a3;
                    ede.m15192a(jArr, dznVar.f48362c);
                    return new dzo(jArr2, iArr2, i3, jArr, iArr);
                }
            }
        }
        if (dznVar.f48368i.length == 1 && dznVar.f48368i[0] == 0) {
            for (int i37 = 0; i37 < jArr.length; i37++) {
                jArr[i37] = ede.m15196a(jArr[i37] - dznVar.f48369j[0], 1000000L, dznVar.f48362c);
            }
            return new dzo(jArr2, iArr2, i3, jArr, iArr);
        }
        boolean z2 = dznVar.f48361b == 1;
        boolean z3 = false;
        int i38 = 0;
        int i39 = 0;
        int i40 = 0;
        while (i38 < dznVar.f48368i.length) {
            long j3 = dznVar.f48369j[i38];
            if (j3 != -1) {
                long m15196a4 = ede.m15196a(dznVar.f48368i[i38], dznVar.f48362c, dznVar.f48363d);
                int m15190a = ede.m15190a(jArr, j3, true, true);
                int m15190a2 = ede.m15190a(jArr, j3 + m15196a4, z2, false);
                int i41 = i39 + (m15190a2 - m15190a);
                z3 |= i40 != m15190a;
                i40 = m15190a2;
                i39 = i41;
            }
            i38++;
            z3 = z3;
        }
        boolean z4 = z3 | (i39 != mo15441a);
        long[] jArr8 = z4 ? new long[i39] : jArr2;
        int[] iArr8 = z4 ? new int[i39] : iArr2;
        if (z4) {
            i3 = 0;
        }
        int[] iArr9 = z4 ? new int[i39] : iArr;
        long[] jArr9 = new long[i39];
        int i42 = 0;
        char c6 = 0;
        for (int i43 = 0; i43 < dznVar.f48368i.length; i43++) {
            long j4 = dznVar.f48369j[i43];
            long j5 = dznVar.f48368i[i43];
            if (j4 != -1) {
                long m15196a5 = ede.m15196a(j5, dznVar.f48362c, dznVar.f48363d);
                int m15190a3 = ede.m15190a(jArr, j4, true, true);
                int m15190a4 = ede.m15190a(jArr, m15196a5 + j4, z2, false);
                if (z4) {
                    int i44 = m15190a4 - m15190a3;
                    System.arraycopy(jArr2, m15190a3, jArr8, i42, i44);
                    System.arraycopy(iArr2, m15190a3, iArr8, i42, i44);
                    System.arraycopy(iArr, m15190a3, iArr9, i42, i44);
                }
                int i45 = i3;
                int i46 = i42;
                int i47 = i45;
                while (m15190a3 < m15190a4) {
                    jArr9[i46] = ede.m15196a(c6, 1000000L, dznVar.f48363d) + ede.m15196a(jArr[m15190a3] - j4, 1000000L, dznVar.f48362c);
                    int i48 = i47;
                    if (z4) {
                        i48 = i47;
                        if (iArr8[i46] > i47) {
                            i48 = iArr2[m15190a3];
                        }
                    }
                    i46++;
                    m15190a3++;
                    i47 = i48;
                }
                int i49 = i47;
                i42 = i46;
                i3 = i49;
            }
            c6 += j5;
        }
        boolean z5 = false;
        for (int i50 = 0; i50 < iArr9.length && !z5; i50++) {
            z5 |= (iArr9[i50] & 1) != 0;
        }
        if (!z5) {
            throw new zzhw("The edited sample sequence does not contain a sync sample.");
        }
        return new dzo(jArr8, iArr8, i3, jArr9, iArr9);
    }

    /* renamed from: a */
    public static zzmh m15447a(dyt dytVar, boolean z) {
        if (z) {
            return null;
        }
        ecy ecyVar = dytVar.f48216a;
        ecyVar.m15226c(8);
        while (ecyVar.m15229b() >= 8) {
            int i = ecyVar.f48725b;
            int m15220g = ecyVar.m15220g();
            if (ecyVar.m15220g() == dyr.f48144aD) {
                ecyVar.m15226c(i);
                ecyVar.m15224d(12);
                while (ecyVar.f48725b < i + m15220g) {
                    int i2 = ecyVar.f48725b;
                    int m15220g2 = ecyVar.m15220g();
                    if (ecyVar.m15220g() == dyr.f48145aE) {
                        ecyVar.m15226c(i2);
                        ecyVar.m15224d(8);
                        ArrayList arrayList = new ArrayList();
                        while (ecyVar.f48725b < i2 + m15220g2) {
                            zzmh.zza m15429a = dzg.m15429a(ecyVar);
                            if (m15429a != null) {
                                arrayList.add(m15429a);
                            }
                        }
                        if (arrayList.isEmpty()) {
                            return null;
                        }
                        return new zzmh(arrayList);
                    }
                    ecyVar.m15224d(m15220g2 - 8);
                }
                return null;
            }
            ecyVar.m15224d(m15220g - 8);
        }
        return null;
    }
}
