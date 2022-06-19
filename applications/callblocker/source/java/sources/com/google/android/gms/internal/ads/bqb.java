package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bqb.class */
public final class bqb<AdT> implements cqt<chd, AdT> {

    /* renamed from: a */
    private final ckz f11802a;

    /* renamed from: b */
    private final apt f11803b;

    /* renamed from: c */
    private final clj f11804c;

    /* renamed from: d */
    private final Executor f11805d;

    /* renamed from: e */
    private final ScheduledExecutorService f11806e;

    /* renamed from: f */
    private final amm<AdT> f11807f;

    /* renamed from: g */
    private final bpv f11808g;

    public bqb(ckz ckzVar, bpv bpvVar, apt aptVar, clj cljVar, amm<AdT> ammVar, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        this.f11802a = ckzVar;
        this.f11808g = bpvVar;
        this.f11803b = aptVar;
        this.f11804c = cljVar;
        this.f11807f = ammVar;
        this.f11805d = executor;
        this.f11806e = scheduledExecutorService;
    }

    /* renamed from: a */
    public final /* synthetic */ crt m11717a(chd chdVar, cgr cgrVar, bmv bmvVar, Throwable th) {
        return this.f11808g.m11724a(chdVar.f13035b.f13025b, cgrVar, crg.m10784a(bmvVar.mo11688b(chdVar, cgrVar), cgrVar.f12963I, TimeUnit.MILLISECONDS, this.f11806e));
    }

    @Override // com.google.android.gms.internal.ads.cqt
    /* renamed from: a */
    public final /* synthetic */ crt mo7012a(chd chdVar) {
        chd chdVar2 = chdVar;
        cki m11153a = this.f11802a.m11163a((ckz) ckw.RENDER_CONFIG_INIT).m11156a(crg.m10777a((Throwable) new zzcqm("No ad configs", 3))).m11153a();
        this.f11803b.m12773a(new air(chdVar2, this.f11804c), this.f11805d);
        int i = 0;
        for (cgr cgrVar : chdVar2.f13035b.f13024a) {
            Iterator<String> it = cgrVar.f12979a.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                bmv<AdT> mo12358a = this.f11807f.mo12358a(cgrVar.f12980b, next);
                if (mo12358a != null && mo12358a.mo11690a(chdVar2, cgrVar)) {
                    m11153a = this.f11802a.m11162a((ckz) ckw.RENDER_CONFIG_WATERFALL, (crt) m11153a).m11144a(new StringBuilder(String.valueOf(next).length() + 26).append("render-config-").append(i).append("-").append(next).toString()).m11146a(Throwable.class, new cqt(this, chdVar2, cgrVar, mo12358a) { // from class: com.google.android.gms.internal.ads.bqa

                        /* renamed from: a */
                        private final bqb f11798a;

                        /* renamed from: b */
                        private final chd f11799b;

                        /* renamed from: c */
                        private final cgr f11800c;

                        /* renamed from: d */
                        private final bmv f11801d;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f11798a = this;
                            this.f11799b = chdVar2;
                            this.f11800c = cgrVar;
                            this.f11801d = mo12358a;
                        }

                        @Override // com.google.android.gms.internal.ads.cqt
                        /* renamed from: a */
                        public final crt mo7012a(Object obj) {
                            return this.f11798a.m11717a(this.f11799b, this.f11800c, this.f11801d, (Throwable) obj);
                        }
                    }).m11153a();
                    break;
                }
            }
            i++;
        }
        return m11153a;
    }
}
