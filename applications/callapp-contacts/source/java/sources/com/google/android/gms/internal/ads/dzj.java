package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Stack;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dzj.class */
public final class dzj implements dxv, dya {

    /* renamed from: a */
    private static final dxw f48335a = new dzi();

    /* renamed from: b */
    private static final int f48336b = ede.m15185c("qt  ");

    /* renamed from: g */
    private int f48341g;

    /* renamed from: h */
    private int f48342h;

    /* renamed from: i */
    private long f48343i;

    /* renamed from: j */
    private int f48344j;

    /* renamed from: k */
    private ecy f48345k;

    /* renamed from: l */
    private int f48346l;

    /* renamed from: m */
    private int f48347m;

    /* renamed from: n */
    private dxx f48348n;

    /* renamed from: o */
    private dzl[] f48349o;

    /* renamed from: p */
    private long f48350p;

    /* renamed from: q */
    private boolean f48351q;

    /* renamed from: e */
    private final ecy f48339e = new ecy(16);

    /* renamed from: f */
    private final Stack<dyq> f48340f = new Stack<>();

    /* renamed from: c */
    private final ecy f48337c = new ecy(ecx.f48720a);

    /* renamed from: d */
    private final ecy f48338d = new ecy(4);

    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* renamed from: b */
    private final void m15416b(long j) throws zzhw {
        while (!this.f48340f.isEmpty() && this.f48340f.peek().f48111a == j) {
            dyq pop = this.f48340f.pop();
            if (pop.f48207aR == dyr.f48118E) {
                char c = 1;
                ArrayList arrayList = new ArrayList();
                zzmh zzmhVar = null;
                dxz dxzVar = new dxz();
                dyt m15455a = pop.m15455a(dyr.f48143aC);
                if (m15455a != null) {
                    zzmh m15447a = dys.m15447a(m15455a, this.f48351q);
                    zzmhVar = m15447a;
                    if (m15447a != null) {
                        dxzVar.m15488a(m15447a);
                        zzmhVar = m15447a;
                    }
                }
                int i = 0;
                while (i < pop.f48113c.size()) {
                    dyq dyqVar = pop.f48113c.get(i);
                    char c2 = c;
                    if (dyqVar.f48207aR == dyr.f48120G) {
                        dzn m15448a = dys.m15448a(dyqVar, pop.m15455a(dyr.f48119F), -9223372036854775807L, (zzjo) null, this.f48351q);
                        c2 = c;
                        if (m15448a != null) {
                            dzo m15446a = dys.m15446a(m15448a, dyqVar.m15452b(dyr.f48121H).m15452b(dyr.f48122I).m15452b(dyr.f48123J), dxzVar);
                            c2 = c;
                            if (m15446a.f48371a != 0) {
                                dzl dzlVar = new dzl(m15448a, m15446a, this.f48348n.mo15374a(i));
                                zzht zzy = m15448a.f48365f.zzy(m15446a.f48374d + 30);
                                zzht zzhtVar = zzy;
                                if (m15448a.f48361b == 1) {
                                    zzht zzhtVar2 = zzy;
                                    if (dxzVar.m15489a()) {
                                        zzhtVar2 = zzy.zzd(dxzVar.f47992a, dxzVar.f47993b);
                                    }
                                    zzhtVar = zzhtVar2;
                                    if (zzmhVar != null) {
                                        zzhtVar = zzhtVar2.zza(zzmhVar);
                                    }
                                }
                                dzlVar.f48355c.mo15327a(zzhtVar);
                                c2 = Math.max((long) c, m15448a.f48364e);
                                arrayList.add(dzlVar);
                            }
                        }
                    }
                    i++;
                    c = c2;
                }
                this.f48350p = c;
                this.f48349o = (dzl[]) arrayList.toArray(new dzl[arrayList.size()]);
                this.f48348n.mo15375a();
                this.f48348n.mo15373a(this);
                this.f48340f.clear();
                this.f48341g = 2;
            } else if (!this.f48340f.isEmpty()) {
                this.f48340f.peek().m15454a(pop);
            }
        }
        if (this.f48341g != 2) {
            m15415c();
        }
    }

    /* renamed from: c */
    private final void m15415c() {
        this.f48341g = 0;
        this.f48344j = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:157:0x032f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0517 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v106, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v90, types: [long] */
    @Override // com.google.android.gms.internal.ads.dxv
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo15419a(com.google.android.gms.internal.ads.dxt r9, com.google.android.gms.internal.ads.dyb r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dzj.mo15419a(com.google.android.gms.internal.ads.dxt, com.google.android.gms.internal.ads.dyb):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    @Override // com.google.android.gms.internal.ads.dya
    /* renamed from: a */
    public final long mo15422a(long j) {
        dzl[] dzlVarArr = this.f48349o;
        int length = dzlVarArr.length;
        char c = 65535;
        int i = 0;
        while (i < length) {
            dzo dzoVar = dzlVarArr[i].f48354b;
            int m15411a = dzoVar.m15411a(j);
            int i2 = m15411a;
            if (m15411a == -1) {
                i2 = dzoVar.m15410b(j);
            }
            ?? r0 = dzoVar.f48372b[i2];
            char c2 = c;
            if (r0 < c) {
                c2 = r0;
            }
            i++;
            c = c2;
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.dxv
    /* renamed from: a */
    public final void mo15421a(long j, long j2) {
        this.f48340f.clear();
        this.f48344j = 0;
        this.f48346l = 0;
        this.f48347m = 0;
        if (j == 0) {
            m15415c();
            return;
        }
        dzl[] dzlVarArr = this.f48349o;
        if (dzlVarArr == null) {
            return;
        }
        for (dzl dzlVar : dzlVarArr) {
            dzo dzoVar = dzlVar.f48354b;
            int m15411a = dzoVar.m15411a(j2);
            int i = m15411a;
            if (m15411a == -1) {
                i = dzoVar.m15410b(j2);
            }
            dzlVar.f48356d = i;
        }
    }

    @Override // com.google.android.gms.internal.ads.dxv
    /* renamed from: a */
    public final void mo15418a(dxx dxxVar) {
        this.f48348n = dxxVar;
    }

    @Override // com.google.android.gms.internal.ads.dya
    /* renamed from: a */
    public final boolean mo15423a() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dxv
    /* renamed from: a */
    public final boolean mo15420a(dxt dxtVar) throws IOException, InterruptedException {
        return dzk.m15412b(dxtVar);
    }

    @Override // com.google.android.gms.internal.ads.dya
    /* renamed from: b */
    public final long mo15417b() {
        return this.f48350p;
    }
}
