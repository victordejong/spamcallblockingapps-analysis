package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.internal.ads.dwv;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.annotation.concurrent.GuardedBy;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ciq.class */
public final class ciq implements cir {
    @GuardedBy("this")

    /* renamed from: a */
    private final ConcurrentHashMap<cjb, cio> f13118a;

    /* renamed from: b */
    private ciu f13119b;

    /* renamed from: c */
    private cis f13120c = new cis();

    public ciq(ciu ciuVar) {
        this.f13118a = new ConcurrentHashMap<>(ciuVar.f13131d);
        this.f13119b = ciuVar;
    }

    /* renamed from: a */
    private final void m11235a(ciy<?> ciyVar, cjp cjpVar) {
        if (ciyVar != null) {
            ciyVar.f13158a.m12888c().mo11979a((dwv.C3045g) ((dcw) dwv.C3045g.m8397a().m8380a(dwv.C3045g.C3046a.m8393a().m8385a(dwv.C3045g.EnumC3048b.IN_MEMORY).m8384a(dwv.C3045g.C3050d.m8379a().m8372a(cjpVar.f13182a).m8373a(cjpVar.f13183b))).mo9987g()));
        }
        m11234b();
    }

    /* renamed from: b */
    private final void m11234b() {
        int i;
        int i2;
        if (ciu.m11221a()) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f13119b.f13129b);
            sb.append(" PoolCollection");
            sb.append(this.f13120c.m11222g());
            Iterator<Map.Entry<cjb, cio>> it = this.f13118a.entrySet().iterator();
            int i3 = 0;
            while (true) {
                i = i3;
                if (it.hasNext()) {
                    Map.Entry<cjb, cio> next = it.next();
                    int i4 = i + 1;
                    sb.append(i4);
                    sb.append(". ");
                    sb.append(next.getValue());
                    sb.append("#");
                    sb.append(next.getKey().hashCode());
                    sb.append("    ");
                    for (int i5 = 0; i5 < next.getValue().m11243b(); i5++) {
                        sb.append("[O]");
                    }
                    for (int m11243b = next.getValue().m11243b(); m11243b < this.f13119b.f13131d; m11243b++) {
                        sb.append("[ ]");
                    }
                    sb.append("\n");
                    sb.append(next.getValue().m11239f());
                    sb.append("\n");
                    i3 = i4;
                }
            }
            for (i2 = i; i2 < this.f13119b.f13130c; i2++) {
                sb.append(i2 + 1);
                sb.append(".\n");
            }
            C3556uu.m6751b(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.cir
    /* renamed from: a */
    public final ciu mo11233a() {
        return this.f13119b;
    }

    @Override // com.google.android.gms.internal.ads.cir
    /* renamed from: a */
    public final ciy<?> mo11232a(cjb cjbVar) {
        ciy<?> ciyVar;
        synchronized (this) {
            cio cioVar = this.f13118a.get(cjbVar);
            if (cioVar != null) {
                ciyVar = cioVar.m11245a();
                if (ciyVar == null) {
                    this.f13120c.m11227b();
                }
                m11235a(ciyVar, cioVar.m11238g());
            } else {
                this.f13120c.m11228a();
                m11235a((ciy<?>) null, (cjp) null);
                ciyVar = null;
            }
        }
        return ciyVar;
    }

    @Override // com.google.android.gms.internal.ads.cir
    @Deprecated
    /* renamed from: a */
    public final cjb mo11230a(dya dyaVar, String str, dyk dykVar) {
        return new cja(dyaVar, str, new C3432qe(this.f13119b.f13128a).m7317a().f17266j, this.f13119b.f13133f, dykVar);
    }

    /* JADX WARN: Type inference failed for: r0v122, types: [long] */
    /* JADX WARN: Type inference failed for: r0v96, types: [long] */
    @Override // com.google.android.gms.internal.ads.cir
    /* renamed from: a */
    public final boolean mo11231a(cjb cjbVar, ciy<?> ciyVar) {
        boolean m11244a;
        char c = 65535;
        synchronized (this) {
            cio cioVar = this.f13118a.get(cjbVar);
            ciyVar.f13161d = C2341q.m14737j().mo13862a();
            cio cioVar2 = cioVar;
            if (cioVar == null) {
                cio cioVar3 = new cio(this.f13119b.f13131d, this.f13119b.f13132e * 1000);
                if (this.f13118a.size() == this.f13119b.f13130c) {
                    switch (cit.f13127a[this.f13119b.f13134g - 1]) {
                        case 1:
                            cjb cjbVar2 = null;
                            for (Map.Entry<cjb, cio> entry : this.f13118a.entrySet()) {
                                if (entry.getValue().m11242c() < c) {
                                    c = entry.getValue().m11242c();
                                    cjbVar2 = entry.getKey();
                                }
                            }
                            if (cjbVar2 != null) {
                                this.f13118a.remove(cjbVar2);
                                break;
                            }
                            break;
                        case 2:
                            cjb cjbVar3 = null;
                            for (Map.Entry<cjb, cio> entry2 : this.f13118a.entrySet()) {
                                if (entry2.getValue().m11241d() < c) {
                                    c = entry2.getValue().m11241d();
                                    cjbVar3 = entry2.getKey();
                                }
                            }
                            if (cjbVar3 != null) {
                                this.f13118a.remove(cjbVar3);
                                break;
                            }
                            break;
                        case 3:
                            int i = Integer.MAX_VALUE;
                            cjb cjbVar4 = null;
                            for (Map.Entry<cjb, cio> entry3 : this.f13118a.entrySet()) {
                                if (entry3.getValue().m11240e() < i) {
                                    i = entry3.getValue().m11240e();
                                    cjbVar4 = entry3.getKey();
                                }
                            }
                            if (cjbVar4 != null) {
                                this.f13118a.remove(cjbVar4);
                                break;
                            }
                            break;
                    }
                    this.f13120c.m11225d();
                }
                this.f13118a.put(cjbVar, cioVar3);
                this.f13120c.m11226c();
                cioVar2 = cioVar3;
            }
            m11244a = cioVar2.m11244a(ciyVar);
            this.f13120c.m11224e();
            civ m11223f = this.f13120c.m11223f();
            cjp m11238g = cioVar2.m11238g();
            if (ciyVar != null) {
                ciyVar.f13158a.m12888c().mo11977b((dwv.C3045g) ((dcw) dwv.C3045g.m8397a().m8380a(dwv.C3045g.C3046a.m8393a().m8385a(dwv.C3045g.EnumC3048b.IN_MEMORY).m8383a(dwv.C3045g.C3052e.m8371a().m8362a(m11223f.f13142a).m8361b(m11223f.f13143b).m8363a(m11238g.f13183b))).mo9987g()));
            }
            m11234b();
        }
        return m11244a;
    }

    @Override // com.google.android.gms.internal.ads.cir
    /* renamed from: b */
    public final boolean mo11229b(cjb cjbVar) {
        boolean z;
        synchronized (this) {
            cio cioVar = this.f13118a.get(cjbVar);
            z = cioVar != null ? cioVar.m11243b() < this.f13119b.f13131d : true;
        }
        return z;
    }
}
