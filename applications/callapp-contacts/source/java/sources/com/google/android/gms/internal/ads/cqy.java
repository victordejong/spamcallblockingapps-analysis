package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.eht;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cqy.class */
public final class cqy implements cqz {

    /* renamed from: a */
    private final ConcurrentHashMap<cri, cqw> f46408a;

    /* renamed from: b */
    private zzdrc f46409b;

    /* renamed from: c */
    private crb f46410c = new crb();

    public cqy(zzdrc zzdrcVar) {
        this.f46408a = new ConcurrentHashMap<>(zzdrcVar.zzhqq);
        this.f46409b = zzdrcVar;
    }

    /* renamed from: a */
    private final void m17306a(crj<?> crjVar, cry cryVar) {
        if (crjVar != null) {
            crjVar.f46429a.f42537c.mo17795a(eht.C12471g.m15019a().m15008a(eht.C12471g.C12472a.m15016a().m15011a(eht.C12471g.EnumC12475c.IN_MEMORY).m15010a(eht.C12471g.C12476d.m15007a().m15002a(cryVar.f46457a).m15003a(cryVar.f46458b))).mo16259f());
        }
        m17305b();
    }

    /* renamed from: b */
    private final void m17305b() {
        int i;
        if (zzdrc.zzaxd()) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f46409b.zzhqo);
            sb.append(" PoolCollection");
            sb.append(this.f46410c.m17299a());
            Iterator<Map.Entry<cri, cqw>> it2 = this.f46408a.entrySet().iterator();
            int i2 = 0;
            while (true) {
                int i3 = i2;
                i = i3;
                if (it2.hasNext()) {
                    Map.Entry<cri, cqw> next = it2.next();
                    int i4 = i3 + 1;
                    sb.append(i4);
                    sb.append(". ");
                    sb.append(next.getValue());
                    sb.append("#");
                    sb.append(next.getKey().hashCode());
                    sb.append("    ");
                    for (int i5 = 0; i5 < next.getValue().m17311a(); i5++) {
                        sb.append("[O]");
                    }
                    for (int m17311a = next.getValue().m17311a(); m17311a < this.f46409b.zzhqq; m17311a++) {
                        sb.append("[ ]");
                    }
                    sb.append(StringUtils.f67179LF);
                    sb.append(next.getValue().m17310b());
                    sb.append(StringUtils.f67179LF);
                    i2 = i4;
                }
            }
            while (i < this.f46409b.zzhqp) {
                i++;
                sb.append(i);
                sb.append(".\n");
            }
            zzd.zzdz(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.cqz
    @Deprecated
    /* renamed from: a */
    public final cri mo17301a(zzvq zzvqVar, String str, zzwc zzwcVar) {
        return new crl(zzvqVar, str, new C12926tc(this.f46409b.context).m14184a().f49804j, this.f46409b.zzhqs, zzwcVar);
    }

    @Override // com.google.android.gms.internal.ads.cqz
    /* renamed from: a */
    public final crj<?> mo17303a(cri criVar) {
        crj<?> crjVar;
        synchronized (this) {
            cqw cqwVar = this.f46408a.get(criVar);
            crjVar = null;
            if (cqwVar != null) {
                cqwVar.f46405c.m17280a();
                cqwVar.m17308d();
                if (cqwVar.f46403a.isEmpty()) {
                    crjVar = null;
                } else {
                    crj<?> remove = cqwVar.f46403a.remove();
                    crjVar = remove;
                    if (remove != null) {
                        crz crzVar = cqwVar.f46405c;
                        crzVar.f46463e++;
                        crzVar.f46460b.f46457a = true;
                        crjVar = remove;
                    }
                }
                if (crjVar == null) {
                    this.f46410c.f46418e++;
                }
                m17306a(crjVar, cqwVar.m17309c());
            } else {
                this.f46410c.f46417d++;
                m17306a((crj<?>) null, (cry) null);
            }
        }
        return crjVar;
    }

    @Override // com.google.android.gms.internal.ads.cqz
    /* renamed from: a */
    public final zzdrc mo17304a() {
        return this.f46409b;
    }

    /* JADX WARN: Type inference failed for: r0v127, types: [long] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    @Override // com.google.android.gms.internal.ads.cqz
    /* renamed from: a */
    public final boolean mo17302a(cri criVar, crj<?> crjVar) {
        boolean z;
        synchronized (this) {
            cqw cqwVar = this.f46408a.get(criVar);
            crjVar.f46432d = zzr.zzlc().mo19039a();
            cqw cqwVar2 = cqwVar;
            if (cqwVar == null) {
                cqw cqwVar3 = new cqw(this.f46409b.zzhqq, this.f46409b.zzhqr * 1000);
                if (this.f46408a.size() == this.f46409b.zzhqp) {
                    int i = crc.f46420a[this.f46409b.zzhqu - 1];
                    char c = 65535;
                    cri criVar2 = null;
                    if (i == 1) {
                        cri criVar3 = null;
                        for (Map.Entry<cri, cqw> entry : this.f46408a.entrySet()) {
                            if (entry.getValue().f46405c.f46459a < c) {
                                c = entry.getValue().f46405c.f46459a;
                                criVar3 = entry.getKey();
                            }
                        }
                        if (criVar3 != null) {
                            this.f46408a.remove(criVar3);
                        }
                    } else if (i == 2) {
                        cri criVar4 = null;
                        for (Map.Entry<cri, cqw> entry2 : this.f46408a.entrySet()) {
                            if (entry2.getValue().f46405c.f46461c < c) {
                                c = entry2.getValue().f46405c.f46461c;
                                criVar4 = entry2.getKey();
                            }
                        }
                        if (criVar4 != null) {
                            this.f46408a.remove(criVar4);
                        }
                    } else if (i == 3) {
                        int i2 = Integer.MAX_VALUE;
                        for (Map.Entry<cri, cqw> entry3 : this.f46408a.entrySet()) {
                            if (entry3.getValue().f46405c.f46462d < i2) {
                                i2 = entry3.getValue().f46405c.f46462d;
                                criVar2 = entry3.getKey();
                            }
                        }
                        if (criVar2 != null) {
                            this.f46408a.remove(criVar2);
                        }
                    }
                    crb crbVar = this.f46410c;
                    crbVar.f46416c++;
                    crbVar.f46414a.f46422b = true;
                }
                this.f46408a.put(criVar, cqwVar3);
                crb crbVar2 = this.f46410c;
                crbVar2.f46415b++;
                crbVar2.f46414a.f46421a = true;
                cqwVar2 = cqwVar3;
            }
            cqwVar2.f46405c.m17280a();
            cqwVar2.m17308d();
            if (cqwVar2.f46403a.size() == cqwVar2.f46404b) {
                z = false;
            } else {
                cqwVar2.f46403a.add(crjVar);
                z = true;
            }
            this.f46410c.f46419f++;
            crb crbVar3 = this.f46410c;
            crd crdVar = (crd) crbVar3.f46414a.clone();
            crd crdVar2 = crbVar3.f46414a;
            crdVar2.f46421a = false;
            crdVar2.f46422b = false;
            cry m17309c = cqwVar2.m17309c();
            if (crjVar != null) {
                crjVar.f46429a.f42537c.mo17793b(eht.C12471g.m15019a().m15008a(eht.C12471g.C12472a.m15016a().m15011a(eht.C12471g.EnumC12475c.IN_MEMORY).m15009a(eht.C12471g.C12478e.m15001a().m14995a(crdVar.f46421a).m14994b(crdVar.f46422b).m14996a(m17309c.f46458b))).mo16259f());
            }
            m17305b();
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.cqz
    /* renamed from: b */
    public final boolean mo17300b(cri criVar) {
        synchronized (this) {
            cqw cqwVar = this.f46408a.get(criVar);
            if (cqwVar != null) {
                return cqwVar.m17311a() < this.f46409b.zzhqq;
            }
            return true;
        }
    }
}
