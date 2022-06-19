package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/su3.class */
public final class su3 implements uq3, ur3 {

    /* renamed from: a */
    public static final br3 f29684a = qu3.f28635b;

    /* renamed from: j */
    private int f29693j;

    /* renamed from: k */
    private long f29694k;

    /* renamed from: l */
    private int f29695l;

    /* renamed from: m */
    private C6694la f29696m;

    /* renamed from: o */
    private int f29698o;

    /* renamed from: p */
    private int f29699p;

    /* renamed from: q */
    private int f29700q;

    /* renamed from: r */
    private xq3 f29701r;

    /* renamed from: s */
    private ru3[] f29702s;

    /* renamed from: t */
    private long[][] f29703t;

    /* renamed from: u */
    private int f29704u;

    /* renamed from: v */
    private long f29705v;

    /* renamed from: w */
    private int f29706w;

    /* renamed from: x */
    private zzakn f29707x;

    /* renamed from: i */
    private int f29692i = 0;

    /* renamed from: g */
    private final vu3 f29690g = new vu3();

    /* renamed from: h */
    private final List<zzaiu> f29691h = new ArrayList();

    /* renamed from: e */
    private final C6694la f29688e = new C6694la(16);

    /* renamed from: f */
    private final ArrayDeque<xt3> f29689f = new ArrayDeque<>();

    /* renamed from: b */
    private final C6694la f29685b = new C6694la(C6322ba.f20319a);

    /* renamed from: c */
    private final C6694la f29686c = new C6694la(4);

    /* renamed from: d */
    private final C6694la f29687d = new C6694la();

    /* renamed from: n */
    private int f29697n = -1;

    public su3(int i) {
    }

    /* renamed from: i */
    private final void m10902i() {
        this.f29692i = 0;
        this.f29695l = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v112, types: [long] */
    /* JADX WARN: Type inference failed for: r0v116, types: [long] */
    /* JADX WARN: Type inference failed for: r0v195, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long[], long[][]] */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    /* renamed from: j */
    private final void m10901j(long j) {
        zzaiv zzaivVar;
        zzaiv zzaivVar2;
        int i;
        zzaiv zzaivVar3;
        int i2;
        int i3;
        su3 su3Var = this;
        while (!su3Var.f29689f.isEmpty() && su3Var.f29689f.peek().f32290b == j) {
            xt3 pop = su3Var.f29689f.pop();
            if (pop.f33399a == 1836019574) {
                ArrayList arrayList = new ArrayList();
                boolean z = su3Var.f29706w == 1;
                kr3 kr3Var = new kr3();
                yt3 m9060e = pop.m9060e(1969517665);
                if (m9060e != null) {
                    Pair<zzaiv, zzaiv> m14547b = hu3.m14547b(m9060e);
                    zzaivVar2 = (zzaiv) m14547b.first;
                    zzaivVar = (zzaiv) m14547b.second;
                    if (zzaivVar2 != null) {
                        kr3Var.m13833a(zzaivVar2);
                    }
                } else {
                    zzaivVar = null;
                    zzaivVar2 = null;
                }
                xt3 m9059f = pop.m9059f(1835365473);
                zzaiv m14546c = m9059f != null ? hu3.m14546c(m9059f) : null;
                List<av3> m14548a = hu3.m14548a(pop, kr3Var, -9223372036854775807L, null, false, z, pu3.f28163a);
                xq3 xq3Var = su3Var.f29701r;
                Objects.requireNonNull(xq3Var);
                int size = m14548a.size();
                char c = 1;
                int i4 = 0;
                int i5 = -1;
                while (i4 < size) {
                    av3 av3Var = m14548a.get(i4);
                    if (av3Var.f20143b != 0) {
                        xu3 xu3Var = av3Var.f20142a;
                        char c2 = xu3Var.f32302e;
                        int i6 = (c2 > (-9223372036854775807L) ? 1 : (c2 == (-9223372036854775807L) ? 0 : -1));
                        char c3 = c2;
                        if (i6 == 0) {
                            c3 = av3Var.f20149h;
                        }
                        c = Math.max((long) c, (long) c3);
                        ru3 ru3Var = new ru3(xu3Var, av3Var, xq3Var.mo8690o(i4, xu3Var.f32299b));
                        int i7 = av3Var.f20146e;
                        C6947s4 m10418a = xu3Var.f32303f.m10418a();
                        m10418a.m11128o(i7 + 30);
                        if (xu3Var.f32299b == 2 && c3 > 0 && (i3 = av3Var.f20143b) > 1) {
                            m10418a.m11122u(i3 / (c3 / 1000000.0f));
                        }
                        int i8 = xu3Var.f32299b;
                        int i9 = ou3.f27738b;
                        if (i8 == 1 && kr3Var.m13832b()) {
                            m10418a.m11172E(kr3Var.f25307b);
                            m10418a.m11171F(kr3Var.f25308c);
                        }
                        int i10 = xu3Var.f32299b;
                        zzaiv zzaivVar4 = this.f29691h.isEmpty() ? null : new zzaiv(this.f29691h);
                        zzaiv zzaivVar5 = new zzaiv(new zzaiu[0]);
                        if (i10 == 1) {
                            zzaivVar3 = zzaivVar5;
                            if (zzaivVar2 != null) {
                                zzaivVar3 = zzaivVar2;
                            }
                        } else {
                            zzaivVar3 = zzaivVar5;
                            if (i10 == 2) {
                                zzaivVar3 = zzaivVar5;
                                if (m14546c != null) {
                                    int i11 = 0;
                                    while (true) {
                                        zzaivVar3 = zzaivVar5;
                                        if (i11 >= m14546c.m8118a()) {
                                            break;
                                        }
                                        zzaiu m8117b = m14546c.m8117b(i11);
                                        if (m8117b instanceof zzakk) {
                                            zzakk zzakkVar = (zzakk) m8117b;
                                            if ("com.android.capture.fps".equals(zzakkVar.f33535d)) {
                                                zzaivVar3 = new zzaiv(zzakkVar);
                                                break;
                                            }
                                        }
                                        i11++;
                                    }
                                }
                            }
                        }
                        for (int i12 = 0; i12 < 2; i12++) {
                            zzaivVar3 = zzaivVar3.m8116c(new zzaiv[]{zzaivVar, zzaivVar4}[i12]);
                        }
                        if (zzaivVar3.m8118a() > 0) {
                            m10418a.m11131l(zzaivVar3);
                        }
                        ru3Var.f29245c.mo8704d(m10418a.m11168I());
                        if (xu3Var.f32299b == 2) {
                            i2 = i5;
                            if (i5 == -1) {
                                i2 = arrayList.size();
                            }
                        } else {
                            i2 = i5;
                        }
                        arrayList.add(ru3Var);
                        i5 = i2;
                        su3Var = this;
                    }
                    i4++;
                    c = c;
                }
                su3Var.f29704u = i5;
                su3Var.f29705v = c;
                ru3[] ru3VarArr = (ru3[]) arrayList.toArray(new ru3[0]);
                su3Var.f29702s = ru3VarArr;
                int length = ru3VarArr.length;
                ?? r0 = new long[length];
                int[] iArr = new int[length];
                long[] jArr = new long[length];
                boolean[] zArr = new boolean[length];
                for (int i13 = 0; i13 < ru3VarArr.length; i13++) {
                    r0[i13] = new long[ru3VarArr[i13].f29244b.f20143b];
                    jArr[i13] = ru3VarArr[i13].f29244b.f20147f[0];
                }
                int i14 = 0;
                char c4 = 0;
                while (i14 < ru3VarArr.length) {
                    char c5 = 65535;
                    int i15 = 0;
                    int i16 = -1;
                    while (true) {
                        i = i16;
                        if (i15 >= ru3VarArr.length) {
                            break;
                        }
                        char c6 = c5;
                        int i17 = i;
                        if (!zArr[i15]) {
                            ?? r02 = jArr[i15];
                            c6 = c5;
                            i17 = i;
                            if (r02 <= c5) {
                                i17 = i15;
                                c6 = r02;
                            }
                        }
                        i15++;
                        c5 = c6;
                        i16 = i17;
                    }
                    int i18 = iArr[i];
                    long[] jArr2 = r0[i];
                    jArr2[i18] = c4 == 1 ? 1 : 0;
                    av3 av3Var2 = ru3VarArr[i].f29244b;
                    c4 += av3Var2.f20145d[i18];
                    int i19 = i18 + 1;
                    iArr[i] = i19;
                    if (i19 < jArr2.length) {
                        jArr[i] = av3Var2.f20147f[i19];
                    } else {
                        zArr[i] = true;
                        i14++;
                    }
                }
                su3Var.f29703t = r0;
                xq3Var.mo8688t();
                xq3Var.mo8689r(su3Var);
                su3Var.f29689f.clear();
                su3Var.f29692i = 2;
            } else {
                su3 su3Var2 = su3Var;
                su3Var = su3Var2;
                if (!su3Var2.f29689f.isEmpty()) {
                    su3Var2.f29689f.peek().m9061d(pop);
                    su3Var = su3Var2;
                }
            }
        }
        if (su3Var.f29692i != 2) {
            m10902i();
        }
    }

    /* renamed from: k */
    private static long m10900k(av3 av3Var, long j, long j2) {
        int m10899l = m10899l(av3Var, j);
        return m10899l == -1 ? j2 : Math.min(av3Var.f20144c[m10899l], j2);
    }

    /* renamed from: l */
    private static int m10899l(av3 av3Var, long j) {
        int m16478a = av3Var.m16478a(j);
        return m16478a == -1 ? av3Var.m16477b(j) : m16478a;
    }

    /* renamed from: m */
    private static int m10898m(int i) {
        if (i != 1751476579) {
            return i != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: a */
    public final boolean mo9064a() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48 */
    /* JADX WARN: Type inference failed for: r0v51 */
    /* JADX WARN: Type inference failed for: r0v65 */
    /* JADX WARN: Type inference failed for: r0v68 */
    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: b */
    public final sr3 mo9063b(long j) {
        char c;
        char c2;
        char c3;
        char c4;
        char c5;
        int m16477b;
        ru3[] ru3VarArr = this.f29702s;
        Objects.requireNonNull(ru3VarArr);
        if (ru3VarArr.length == 0) {
            vr3 vr3Var = vr3.f31336a;
            return new sr3(vr3Var, vr3Var);
        }
        int i = this.f29704u;
        if (i != -1) {
            av3 av3Var = ru3VarArr[i].f29244b;
            int m10899l = m10899l(av3Var, j);
            if (m10899l == -1) {
                vr3 vr3Var2 = vr3.f31336a;
                return new sr3(vr3Var2, vr3Var2);
            }
            c2 = av3Var.f20147f[m10899l];
            ?? r0 = av3Var.f20144c[m10899l];
            if (c2 >= j || m10899l >= av3Var.f20143b - 1 || (m16477b = av3Var.m16477b(j)) == -1 || m16477b == m10899l) {
                c5 = 1;
                c4 = 65535;
            } else {
                c5 = av3Var.f20147f[m16477b];
                c4 = av3Var.f20144c[m16477b];
            }
            c3 = c5;
            c = r0;
        } else {
            c = 65535;
            c2 = j;
            c4 = 65535;
            c3 = 1;
        }
        int i2 = 0;
        while (true) {
            ru3[] ru3VarArr2 = this.f29702s;
            if (i2 >= ru3VarArr2.length) {
                break;
            }
            char c6 = c4;
            char c7 = c;
            if (i2 != this.f29704u) {
                av3 av3Var2 = ru3VarArr2[i2].f29244b;
                c7 = m10900k(av3Var2, c2, c);
                char c8 = c4;
                if (c3 != -9223372036854775807L) {
                    c8 = m10900k(av3Var2, c3, c4);
                }
                c6 = c8;
            }
            i2++;
            c4 = c6;
            c = c7;
        }
        vr3 vr3Var3 = new vr3(c2, c);
        return c3 == -9223372036854775807L ? new sr3(vr3Var3, vr3Var3) : new sr3(vr3Var3, new vr3(c3, c4));
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00dc, code lost:
        if (r0 < r25) goto L29;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0128 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x010d  */
    /* JADX WARN: Type inference failed for: r0v112, types: [long] */
    /* JADX WARN: Type inference failed for: r0v155, types: [long] */
    /* JADX WARN: Type inference failed for: r0v157, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v337, types: [long] */
    /* JADX WARN: Type inference failed for: r0v351, types: [long] */
    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo9044e(com.google.android.gms.internal.ads.vq3 r17, com.google.android.gms.internal.ads.rr3 r18) {
        /*
            Method dump skipped, instructions count: 1870
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.su3.mo9044e(com.google.android.gms.internal.ads.vq3, com.google.android.gms.internal.ads.rr3):int");
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: f */
    public final boolean mo9043f(vq3 vq3Var) {
        return wu3.m9439b(vq3Var, false);
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: g */
    public final void mo9042g(xq3 xq3Var) {
        this.f29701r = xq3Var;
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: h */
    public final void mo9041h(long j, long j2) {
        this.f29689f.clear();
        this.f29695l = 0;
        this.f29697n = -1;
        this.f29698o = 0;
        this.f29699p = 0;
        this.f29700q = 0;
        if (j == 0) {
            m10902i();
            return;
        }
        ru3[] ru3VarArr = this.f29702s;
        if (ru3VarArr == null) {
            return;
        }
        for (ru3 ru3Var : ru3VarArr) {
            av3 av3Var = ru3Var.f29244b;
            int m16478a = av3Var.m16478a(j2);
            int i = m16478a;
            if (m16478a == -1) {
                i = av3Var.m16477b(j2);
            }
            ru3Var.f29246d = i;
        }
    }

    @Override // com.google.android.gms.internal.ads.ur3
    public final long zzg() {
        return this.f29705v;
    }
}
