package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.eht;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.commons.lang3.StringUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cqy.class */
public final class cqy implements cqz {

    /* renamed from: a  reason: collision with root package name */
    private final ConcurrentHashMap<cri, cqw> f26282a;

    /* renamed from: b  reason: collision with root package name */
    private zzdrc f26283b;

    /* renamed from: c  reason: collision with root package name */
    private crb f26284c = new crb();

    public cqy(zzdrc zzdrcVar) {
        this.f26282a = new ConcurrentHashMap<>(zzdrcVar.zzhqq);
        this.f26283b = zzdrcVar;
    }

    private final void a(crj<?> crjVar, cry cryVar) {
        if (crjVar != null) {
            crjVar.f26301a.f23677c.a(eht.g.a().a(eht.g.a.a().a(eht.g.c.IN_MEMORY).a(eht.g.d.a().a(cryVar.f26324a).a(cryVar.f26325b))).f());
        }
        b();
    }

    private final void b() {
        int i;
        if (zzdrc.zzaxd()) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f26283b.zzhqo);
            sb.append(" PoolCollection");
            sb.append(this.f26284c.a());
            Iterator<Map.Entry<cri, cqw>> it2 = this.f26282a.entrySet().iterator();
            int i2 = 0;
            while (true) {
                i = i2;
                if (it2.hasNext()) {
                    Map.Entry<cri, cqw> next = it2.next();
                    int i3 = i2 + 1;
                    sb.append(i3);
                    sb.append(". ");
                    sb.append(next.getValue());
                    sb.append("#");
                    sb.append(next.getKey().hashCode());
                    sb.append("    ");
                    for (int i4 = 0; i4 < next.getValue().a(); i4++) {
                        sb.append("[O]");
                    }
                    for (int a2 = next.getValue().a(); a2 < this.f26283b.zzhqq; a2++) {
                        sb.append("[ ]");
                    }
                    sb.append(StringUtils.LF);
                    sb.append(next.getValue().b());
                    sb.append(StringUtils.LF);
                    i2 = i3;
                }
            }
            while (i < this.f26283b.zzhqp) {
                i++;
                sb.append(i);
                sb.append(".\n");
            }
            zzd.zzdz(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.cqz
    @Deprecated
    public final cri a(zzvq zzvqVar, String str, zzwc zzwcVar) {
        return new crl(zzvqVar, str, new tc(this.f26283b.context).a().j, this.f26283b.zzhqs, zzwcVar);
    }

    @Override // com.google.android.gms.internal.ads.cqz
    public final crj<?> a(cri criVar) {
        crj<?> crjVar;
        synchronized (this) {
            cqw cqwVar = this.f26282a.get(criVar);
            crjVar = null;
            crjVar = null;
            if (cqwVar != null) {
                cqwVar.f26279c.a();
                cqwVar.d();
                if (!cqwVar.f26277a.isEmpty()) {
                    crj<?> remove = cqwVar.f26277a.remove();
                    crjVar = remove;
                    if (remove != null) {
                        crz crzVar = cqwVar.f26279c;
                        crzVar.e++;
                        crzVar.f26327b.f26324a = true;
                        crjVar = remove;
                    }
                }
                if (crjVar == null) {
                    this.f26284c.e++;
                }
                a(crjVar, cqwVar.c());
            } else {
                this.f26284c.f26291d++;
                a((crj<?>) null, (cry) null);
            }
        }
        return crjVar;
    }

    @Override // com.google.android.gms.internal.ads.cqz
    public final zzdrc a() {
        return this.f26283b;
    }

    @Override // com.google.android.gms.internal.ads.cqz
    public final boolean a(cri criVar, crj<?> crjVar) {
        boolean z;
        synchronized (this) {
            cqw cqwVar = this.f26282a.get(criVar);
            crjVar.f26304d = zzr.zzlc().a();
            cqw cqwVar2 = cqwVar;
            if (cqwVar == null) {
                cqw cqwVar3 = new cqw(this.f26283b.zzhqq, this.f26283b.zzhqr * 1000);
                if (this.f26282a.size() == this.f26283b.zzhqp) {
                    int i = crc.f26292a[this.f26283b.zzhqu - 1];
                    long j = Long.MAX_VALUE;
                    cri criVar2 = null;
                    cri criVar3 = null;
                    cri criVar4 = null;
                    if (i == 1) {
                        for (Map.Entry<cri, cqw> entry : this.f26282a.entrySet()) {
                            if (entry.getValue().f26279c.f26326a < j) {
                                j = entry.getValue().f26279c.f26326a;
                                criVar3 = entry.getKey();
                            }
                        }
                        if (criVar3 != null) {
                            this.f26282a.remove(criVar3);
                        }
                    } else if (i == 2) {
                        for (Map.Entry<cri, cqw> entry2 : this.f26282a.entrySet()) {
                            if (entry2.getValue().f26279c.f26328c < j) {
                                j = entry2.getValue().f26279c.f26328c;
                                criVar2 = entry2.getKey();
                            }
                        }
                        if (criVar2 != null) {
                            this.f26282a.remove(criVar2);
                        }
                    } else if (i == 3) {
                        int i2 = Integer.MAX_VALUE;
                        for (Map.Entry<cri, cqw> entry3 : this.f26282a.entrySet()) {
                            if (entry3.getValue().f26279c.f26329d < i2) {
                                i2 = entry3.getValue().f26279c.f26329d;
                                criVar4 = entry3.getKey();
                            }
                        }
                        if (criVar4 != null) {
                            this.f26282a.remove(criVar4);
                        }
                    }
                    crb crbVar = this.f26284c;
                    crbVar.f26290c++;
                    crbVar.f26288a.f26294b = true;
                }
                this.f26282a.put(criVar, cqwVar3);
                crb crbVar2 = this.f26284c;
                crbVar2.f26289b++;
                crbVar2.f26288a.f26293a = true;
                cqwVar2 = cqwVar3;
            }
            cqwVar2.f26279c.a();
            cqwVar2.d();
            if (cqwVar2.f26277a.size() == cqwVar2.f26278b) {
                z = false;
            } else {
                cqwVar2.f26277a.add(crjVar);
                z = true;
            }
            this.f26284c.f++;
            crb crbVar3 = this.f26284c;
            crd crdVar = (crd) crbVar3.f26288a.clone();
            crd crdVar2 = crbVar3.f26288a;
            crdVar2.f26293a = false;
            crdVar2.f26294b = false;
            cry c2 = cqwVar2.c();
            if (crjVar != null) {
                crjVar.f26301a.f23677c.b(eht.g.a().a(eht.g.a.a().a(eht.g.c.IN_MEMORY).a(eht.g.e.a().a(crdVar.f26293a).b(crdVar.f26294b).a(c2.f26325b))).f());
            }
            b();
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.cqz
    public final boolean b(cri criVar) {
        synchronized (this) {
            cqw cqwVar = this.f26282a.get(criVar);
            if (cqwVar != null) {
                return cqwVar.a() < this.f26283b.zzhqq;
            }
            return true;
        }
    }
}
