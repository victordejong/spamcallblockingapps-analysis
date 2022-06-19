package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.internal.ads.anp;
import com.google.android.gms.internal.ads.aqx;
import java.io.InputStream;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/clt.class */
public final class clt<R extends aqx<AdT>, AdT extends anp> implements cmh<R, clx<AdT>> {

    /* renamed from: a */
    final cqz f46055a;

    /* renamed from: b */
    final Executor f46056b;

    /* renamed from: c */
    dbi<Void> f46057c = new clu(this);

    public clt(cqz cqzVar, Executor executor) {
        this.f46055a = cqzVar;
        this.f46056b = executor;
    }

    @Override // com.google.android.gms.internal.ads.cmh
    /* renamed from: a */
    public final dbt<clx<AdT>> mo17411a(cmm cmmVar, cmj<R> cmjVar) {
        dbt dbtVar;
        dbc dbcVar;
        cmb cmbVar = new cmb(this.f46055a, cmmVar.f46080b, cmjVar, this.f46056b);
        if (cmbVar.f46071e != null) {
            dbtVar = dbh.m16899a(cmbVar.f46071e);
        } else {
            if (!C12285ct.f46508a.mo17481a().booleanValue()) {
                cmbVar.f46071e = new cmf(null, cmbVar.m17414a(), null);
                dbcVar = dbh.m16899a(cmbVar.f46071e);
            } else {
                aor mo17838c = ((aqx) cmbVar.f46069c.mo17386a(cmbVar.f46068b).mo18456a(new clq(cmbVar.f46067a.mo17304a().zzhqs)).mo18453b()).mo17838c();
                csu m17251a = mo17838c.f42535a.m17259a((cti) ctj.GET_CACHE_KEY, (dbt) mo17838c.f42539e.m18459b()).m17248a((daq<I, O2>) new daq(mo17838c, cmbVar.f46067a.mo17304a()) { // from class: com.google.android.gms.internal.ads.aos

                    /* renamed from: a */
                    private final aor f42547a;

                    /* renamed from: b */
                    private final zzdrc f42548b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f42547a = mo17838c;
                        this.f42548b = mo17304a;
                    }

                    @Override // com.google.android.gms.internal.ads.daq
                    public final dbt zzf(Object obj) {
                        aor aorVar = this.f42547a;
                        final zzauj zzaujVar = (zzauj) obj;
                        zzaujVar.zzdyu = this.f42548b;
                        final boz bozVar = aorVar.f42538d;
                        daq daqVar = new daq(zzaujVar) { // from class: com.google.android.gms.internal.ads.bpa

                            /* renamed from: a */
                            private final zzauj f44412a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f44412a = zzaujVar;
                            }

                            @Override // com.google.android.gms.internal.ads.daq
                            public final dbt zzf(Object obj2) {
                                zzauj zzaujVar2 = this.f44412a;
                                zzaujVar2.zzdyv = new String(czw.m16992a((InputStream) obj2), cxs.f46738a);
                                return dbh.m16899a(zzaujVar2);
                            }
                        };
                        final bon bonVar = bozVar.f44410b;
                        bonVar.getClass();
                        return bozVar.m17698a(zzaujVar, new bpg(bonVar) { // from class: com.google.android.gms.internal.ads.bpd

                            /* renamed from: a */
                            private final bon f44418a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f44418a = bonVar;
                            }

                            @Override // com.google.android.gms.internal.ads.bpg
                            /* renamed from: a */
                            public final dbt mo17697a(zzauj zzaujVar2) {
                                return this.f44418a.m17702a(zzaujVar2);
                            }
                        }, new bpg(bozVar) { // from class: com.google.android.gms.internal.ads.bpc

                            /* renamed from: a */
                            private final boz f44417a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f44417a = bozVar;
                            }

                            @Override // com.google.android.gms.internal.ads.bpg
                            /* renamed from: a */
                            public final dbt mo17697a(zzauj zzaujVar2) {
                                return this.f44417a.f44411c.mo14005a().m17691b(zzaujVar2, Binder.getCallingUid());
                            }
                        }, daqVar);
                    }
                }).m17251a();
                dbh.m16901a(m17251a, new aov(mo17838c), mo17838c.f42540f);
                dbcVar = dbc.m16907c((dbt) m17251a).m16911a(new cmg(cmbVar), cmbVar.f46070d).m16909a(zzcpo.class, new cmd(cmbVar), cmbVar.f46070d);
            }
            dbtVar = daj.m16942a(dbcVar, cme.f46075a, cmbVar.f46070d);
        }
        return dbc.m16907c(dbtVar).m16910a(new daq(this, cmmVar, cmjVar) { // from class: com.google.android.gms.internal.ads.cls

            /* renamed from: a */
            private final clt f46052a;

            /* renamed from: b */
            private final cmm f46053b;

            /* renamed from: c */
            private final cmj f46054c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f46052a = this;
                this.f46053b = cmmVar;
                this.f46054c = cmjVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                clt cltVar = this.f46052a;
                cmm cmmVar2 = this.f46053b;
                cmj cmjVar2 = this.f46054c;
                cmf cmfVar = (cmf) obj;
                cri criVar = cmfVar.f46077b;
                zzauj zzaujVar = cmfVar.f46076a;
                crj<?> mo17303a = criVar != null ? cltVar.f46055a.mo17303a(criVar) : null;
                if (criVar == null) {
                    return dbh.m16899a((Object) null);
                }
                if (mo17303a != null && zzaujVar != null) {
                    aor mo17838c2 = ((aqx) cmjVar2.mo17386a(cmmVar2.f46080b).mo18453b()).mo17838c();
                    cti ctiVar = mo17838c2.f42535a;
                    ctj ctjVar = ctj.NOTIFY_CACHE_HIT;
                    boz bozVar = mo17838c2.f42538d;
                    csu m17251a2 = ctiVar.m17259a((cti) ctjVar, dtl.m15718b(zzaujVar.zzdyv) ? dbh.m16898a((Throwable) new zzcnp(cqj.INVALID_REQUEST, "Pool key missing from removeUrl call.")) : bozVar.m17698a(zzaujVar, new bpg(bozVar) { // from class: com.google.android.gms.internal.ads.bpe

                        /* renamed from: a */
                        private final boz f44419a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f44419a = bozVar;
                        }

                        @Override // com.google.android.gms.internal.ads.bpg
                        /* renamed from: a */
                        public final dbt mo17697a(zzauj zzaujVar2) {
                            return this.f44419a.f44410b.m17701a(zzaujVar2.zzdyv);
                        }
                    }, new bpg(bozVar) { // from class: com.google.android.gms.internal.ads.bph

                        /* renamed from: a */
                        private final boz f44421a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f44421a = bozVar;
                        }

                        @Override // com.google.android.gms.internal.ads.bpg
                        /* renamed from: a */
                        public final dbt mo17697a(zzauj zzaujVar2) {
                            return this.f44421a.f44411c.mo14005a().m17692a(zzaujVar2.zzdyv);
                        }
                    }, bpf.f44420a)).m17251a();
                    dbh.m16901a(m17251a2, new aou(mo17838c2), mo17838c2.f42540f);
                    dbh.m16901a(m17251a2, cltVar.f46057c, cltVar.f46056b);
                }
                return dbh.m16899a(new clx(criVar, zzaujVar, mo17303a));
            }
        }, this.f46056b).m16909a(Exception.class, new clv(this), this.f46056b);
    }

    @Override // com.google.android.gms.internal.ads.cmh
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo17412a() {
        return null;
    }
}
