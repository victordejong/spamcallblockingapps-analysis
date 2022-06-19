package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Stack;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dop.class */
public final class dop implements dnh, dnm {

    /* renamed from: a */
    private static final dni f15154a = new dos();

    /* renamed from: b */
    private static final int f15155b = dsn.m8694d("qt  ");

    /* renamed from: g */
    private int f15160g;

    /* renamed from: h */
    private int f15161h;

    /* renamed from: i */
    private long f15162i;

    /* renamed from: j */
    private int f15163j;

    /* renamed from: k */
    private dsk f15164k;

    /* renamed from: l */
    private int f15165l;

    /* renamed from: m */
    private int f15166m;

    /* renamed from: n */
    private dnj f15167n;

    /* renamed from: o */
    private dor[] f15168o;

    /* renamed from: p */
    private long f15169p;

    /* renamed from: q */
    private boolean f15170q;

    /* renamed from: e */
    private final dsk f15158e = new dsk(16);

    /* renamed from: f */
    private final Stack<dod> f15159f = new Stack<>();

    /* renamed from: c */
    private final dsk f15156c = new dsk(dsf.f15547a);

    /* renamed from: d */
    private final dsk f15157d = new dsk(4);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    /* renamed from: b */
    private final void m8982b(long j) {
        dpi dpiVar;
        char c;
        char c2;
        while (!this.f15159f.isEmpty() && this.f15159f.peek().f15019a == j) {
            dod pop = this.f15159f.pop();
            if (pop.f15115aB == doe.f15113y) {
                ArrayList arrayList = new ArrayList();
                dnl dnlVar = new dnl();
                dog m9007a = pop.m9007a(doe.f15077an);
                if (m9007a != null) {
                    dpiVar = dof.m9001a(m9007a, this.f15170q);
                    if (dpiVar != null) {
                        dnlVar.m9053a(dpiVar);
                    }
                } else {
                    dpiVar = null;
                }
                int i = 0;
                char c3 = 65535;
                char c4 = 1;
                while (i < pop.f15021c.size()) {
                    dod dodVar = pop.f15021c.get(i);
                    char c5 = c4;
                    if (dodVar.f15115aB == doe.f15022A) {
                        dot m9002a = dof.m9002a(dodVar, pop.m9007a(doe.f15114z), -9223372036854775807L, (dmw) null, this.f15170q);
                        c5 = c4;
                        if (m9002a != null) {
                            dov m9000a = dof.m9000a(m9002a, dodVar.m9006b(doe.f15023B).m9006b(doe.f15024C).m9006b(doe.f15025D), dnlVar);
                            c5 = c4;
                            if (m9000a.f15217a != 0) {
                                dor dorVar = new dor(m9002a, m9000a, this.f15167n.mo8929a(i, m9002a.f15206b));
                                dlf m9237a = m9002a.f15210f.m9237a(m9000a.f15220d + 30);
                                dlf dlfVar = m9237a;
                                if (m9002a.f15206b == 1) {
                                    dlf dlfVar2 = m9237a;
                                    if (dnlVar.m9054a()) {
                                        dlfVar2 = m9237a.m9236a(dnlVar.f14898a, dnlVar.f14899b);
                                    }
                                    dlfVar = dlfVar2;
                                    if (dpiVar != null) {
                                        dlfVar = dlfVar2.m9233a(dpiVar);
                                    }
                                }
                                dorVar.f15203c.mo8864a(dlfVar);
                                ?? max = Math.max((long) c4, m9002a.f15209e);
                                arrayList.add(dorVar);
                                ?? r0 = m9000a.f15218b[0];
                                c5 = max;
                                if (r0 < c3) {
                                    c2 = max;
                                    c = r0;
                                    i++;
                                    c4 = c2;
                                    c3 = c;
                                }
                            }
                        }
                    }
                    char c6 = c5;
                    c = c3;
                    c2 = c6;
                    i++;
                    c4 = c2;
                    c3 = c;
                }
                this.f15169p = c4;
                this.f15168o = (dor[]) arrayList.toArray(new dor[arrayList.size()]);
                this.f15167n.mo8931a();
                this.f15167n.mo8926a(this);
                this.f15159f.clear();
                this.f15160g = 2;
            } else if (!this.f15159f.isEmpty()) {
                this.f15159f.peek().f15021c.add(pop);
            }
        }
        if (this.f15160g != 2) {
            m8980d();
        }
    }

    /* renamed from: d */
    private final void m8980d() {
        this.f15160g = 0;
        this.f15163j = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0049 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v162, types: [long] */
    /* JADX WARN: Type inference failed for: r0v179, types: [long] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo8985a(com.google.android.gms.internal.ads.dng r9, com.google.android.gms.internal.ads.dnn r10) {
        /*
            Method dump skipped, instructions count: 1341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dop.mo8985a(com.google.android.gms.internal.ads.dng, com.google.android.gms.internal.ads.dnn):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    @Override // com.google.android.gms.internal.ads.dnm
    /* renamed from: a */
    public final long mo8988a(long j) {
        char c = 65535;
        for (dor dorVar : this.f15168o) {
            dov dovVar = dorVar.f15202b;
            int m8972a = dovVar.m8972a(j);
            int i = m8972a;
            if (m8972a == -1) {
                i = dovVar.m8971b(j);
            }
            ?? r0 = dovVar.f15218b[i];
            if (r0 < c) {
                c = r0;
            }
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final void mo8987a(long j, long j2) {
        dor[] dorVarArr;
        this.f15159f.clear();
        this.f15163j = 0;
        this.f15165l = 0;
        this.f15166m = 0;
        if (j == 0) {
            m8980d();
        } else if (this.f15168o != null) {
            for (dor dorVar : this.f15168o) {
                dov dovVar = dorVar.f15202b;
                int m8972a = dovVar.m8972a(j2);
                int i = m8972a;
                if (m8972a == -1) {
                    i = dovVar.m8971b(j2);
                }
                dorVar.f15204d = i;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final void mo8984a(dnj dnjVar) {
        this.f15167n = dnjVar;
    }

    @Override // com.google.android.gms.internal.ads.dnm
    /* renamed from: a */
    public final boolean mo8989a() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final boolean mo8986a(dng dngVar) {
        return dou.m8973a(dngVar);
    }

    @Override // com.google.android.gms.internal.ads.dnm
    /* renamed from: b */
    public final long mo8983b() {
        return this.f15169p;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: c */
    public final void mo8981c() {
    }
}
